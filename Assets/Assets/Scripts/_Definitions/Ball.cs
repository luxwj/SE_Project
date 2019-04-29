using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Ball : MonoBehaviour {

    protected Rigidbody m_Rb;
    public float airDragRatio;

    [SerializeField]
    protected Transform lastHitPlayer;

    /// <summary>
    /// Need to change
    /// </summary>
    protected GameController2PL gameController;

    /// <summary>
    /// Awake this instance.
    /// </summary>
    protected virtual void Awake() {
        m_Rb = GetComponent<Rigidbody>();
        gameController = GameObject.FindWithTag("GameController").GetComponent<GameController2PL>();
    }

    protected virtual void Update() {
        //LimitSpeed();
    }

    /// <summary>
    /// Ball simulation strategy 1
    /// </summary>
    protected void LimitSpeed() {
        Vector3 newVelocity = m_Rb.velocity;
        m_Rb.velocity = new Vector3(Mathf.Clamp(newVelocity.x, -5f, 5f), Mathf.Clamp(newVelocity.y, -5f, 5f), newVelocity.z);
    }

    protected virtual void OnCollisionEnter(Collision other) {
        if (other.gameObject.tag == "Player1" || other.gameObject.tag == "Player2") {
            lastHitPlayer = other.transform;
            GetBatHit(other);
        } else if (other.gameObject.tag == "Boundary") {
            SendBoundInfo(other.gameObject);
        }
    }

    /// <summary>
    /// Called when either bat hits this ball.
    /// In the following function it is mainly about the speed calculating.
    /// </summary>
    protected virtual void GetBatHit(Collision other) {
        ContactPoint contactPoint = other.contacts[0];
        Vector3 curDir = m_Rb.velocity.normalized;
        Vector3 newDir = Vector3.Reflect(curDir, contactPoint.normal);
        Quaternion rotation = Quaternion.FromToRotation(Vector3.forward, newDir);
        transform.rotation = rotation;
        m_Rb.velocity = newDir.normalized * m_Rb.velocity.magnitude * 10f;
    }

    /// <summary>
    /// Sends the out and boundary info to game controller.
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
        }
    }

}
