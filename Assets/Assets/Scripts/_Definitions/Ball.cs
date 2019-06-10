using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Ball : MonoBehaviour {

    /// <summary>
    /// properties of ball
    /// lastHitPlayer: mark the last player who touched the ball.
    ///     notice that just after serve is made, lastHitPlayer
    ///     is null.
    /// </summary>
    protected Rigidbody m_Rb;
    protected Transform lastHitPlayer;

    /// <summary>
    /// Once a player hit the ball, the player will lose point
    /// by hitting the ball again after doubleHitCheckDelay, until
    /// the opponent hit the ball.
    /// onDoubleHitCheck: the lastHitPlayer cannot hit the ball.
    /// </summary>
    protected bool onDoubleHitCheck;
    protected float doubleHitCheckDelay = 0.25f;

    /// <summary>
    /// Need to change
    /// </summary>
    protected GameController gameController;
    
    private void Start() {
        InitBall();
    }

    /// <summary>
    /// called when this ball is instantiated to init
    /// </summary>
    protected virtual void InitBall() {
        m_Rb = GetComponent<Rigidbody>();
        gameController = GameController._instance;
    }

    /// <summary>
    /// Physics simulation strategy 1, not used for now
    /// </summary>
    protected void LimitSpeed() {
        Vector3 newVelocity = m_Rb.velocity;
        m_Rb.velocity = new Vector3(Mathf.Clamp(newVelocity.x, -5f, 5f), Mathf.Clamp(newVelocity.y, -5f, 5f), newVelocity.z);
    }

    /// <summary>
    /// if other == Player: call OnHitPlayer, call GetBatHit
    /// if other == Boundary: call SendBoundInfo
    /// </summary>
    protected virtual void OnCollisionEnter(Collision other) {
        if (other.gameObject.tag == "Player1" || other.gameObject.tag == "Player2") {
            OnHitPlayer(other);
            GetBatHit(other);
        } else if (other.gameObject.tag == "Boundary") {
            SendBoundInfo(other.gameObject);
        }
    }

    /// <summary>
    /// if other == Player: call OnHitPlayer
    /// </summary>
    protected virtual void OnCollisionStay(Collision other) {
        if (other.gameObject.tag == "Player1" || other.gameObject.tag == "Player2") {
            OnHitPlayer(other);
        }
    }

    /// <summary>
    /// "other" must be either of the player
    /// mark lastHitPlayer, check double hit
    /// </summary>
    protected virtual void OnHitPlayer(Collision other) {
        if (lastHitPlayer != other.transform) {
            lastHitPlayer = other.transform;
            StopCoroutine("SetDoubleHitCheck");
            onDoubleHitCheck = false;
            StartCoroutine(SetDoubleHitCheck());
        } else if (onDoubleHitCheck){
            StopCoroutine("SetDoubleHitCheck");
            onDoubleHitCheck = false;

            SendBoundInfo(lastHitPlayer.gameObject);
        }
    }

    /// <summary>
    /// set onDoubleHitCheck to true after doubleHitCheckDelay
    /// only called in OnHitPlayer, also stopped in OnHitPlayer
    /// </summary>
    protected IEnumerator SetDoubleHitCheck() {
        yield return new WaitForSeconds(doubleHitCheckDelay);
        onDoubleHitCheck = true;
    }

    /// <summary>
    /// Called when either bat hits this ball.
    /// mainly about the speed calculating
    /// </summary>
    protected virtual void GetBatHit(Collision other) {
        PlayerBat hitPlayer = other.gameObject.GetComponent<PlayerBat>();
        if (hitPlayer.GetBatState() == (int)PlayerBat.BatState.none)
            return;

        ContactPoint contactPoint = other.contacts[0];
        //Vector3 curDir = m_Rb.velocity.normalized;
        //Vector3 newDir = Vector3.Reflect(curDir, contactPoint.normal);
        //Quaternion rotation = Quaternion.FromToRotation(Vector3.forward, newDir);
        //transform.rotation = rotation;
        Vector3 newDir = contactPoint.normal;
        m_Rb.velocity = newDir.normalized * m_Rb.velocity.magnitude * 8f;
    }

    /// <summary>
    /// Sends the out and boundary info to game controller.
    /// Notice that players are also considered as boundary by hitting
    /// the ball when onDoubleHitCheck is true.
    /// </summary>
    protected virtual void SendBoundInfo(GameObject bound) {
        switch (bound.name) {
            case "LeftFloor":
                gameController.OutOfBoundary(lastHitPlayer, 0);
                break;
            case "RightFloor":
                gameController.OutOfBoundary(lastHitPlayer, 1);
                break;
            case "LeftWall":
                gameController.OutOfBoundary(lastHitPlayer, 2);
                break;
            case "RightWall":
                gameController.OutOfBoundary(lastHitPlayer, 3);
                break;
            case "Net":
                gameController.OutOfBoundary(lastHitPlayer, 4);
                break;
            case "Bat1":
                gameController.OutOfBoundary(lastHitPlayer, 5);
                break;
            case "Bat2":
                gameController.OutOfBoundary(lastHitPlayer, 6);
                break;
        }
    }

    /// <summary>
    /// Sets the UseGravity property of rigidbody.
    /// </summary>
    public void SetUseGravity(bool enabled) {
        GetComponent<Rigidbody>().useGravity = enabled;
    }
}
