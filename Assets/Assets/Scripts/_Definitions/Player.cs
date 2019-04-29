using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Player : MonoBehaviour {

    public enum PlayerNumber {
        player1,
        player2
    }

    /// <summary>
    /// Set manually in Hierarchy.
    /// </summary>
    [SerializeField]
    protected PlayerNumber playerNumber;

    /// <summary>
    /// none: is not rotating
    /// forward: is forward rotating
    /// backward: is backward rotating
    /// </summary>
    public enum BatState {
        none,
        forward,
        backward
    }
    protected BatState batState;
    public void SetBatState(BatState newState) {
        batState = newState;
    }

    /// <summary>
    /// If game state is not playing, should be set to false.
    /// </summary>
    protected bool isInputEnabled;
    public void SetInputEnabled(bool enabled) {
        isInputEnabled = enabled;
    }

    /// <summary>
    /// Properties of player.
    /// m_playerInitLocalEuler: reset rotation
    /// rotationPoint: at the bottom of the bat
    /// </summary>
    protected Rigidbody m_Rb;
    protected Vector3 m_playerInitLocalEuler;
    public Transform rotationPoint;
    protected static float moveSpeed = 2f;
    protected static float rotateSpeed = 360f;

    /// <summary>
    /// called in start to initialize the player
    /// </summary>
    protected virtual void InitPlayer() {
        m_Rb = GetComponent<Rigidbody>();
        m_playerInitLocalEuler = transform.localEulerAngles;
    }

    /// <summary>
    /// move the player
    /// </summary>
    protected virtual void Move() {
        if (!isInputEnabled)
            return;

        float h, v;
        if (playerNumber == PlayerNumber.player1) {
            h = Input.GetAxis("Horizontal1");
            v = Input.GetAxis("Vertical1");
        } else {
            h = Input.GetAxis("Horizontal2");
            v = Input.GetAxis("Vertical2");
        }

        Vector3 movDir = new Vector3(h, v, 0f).normalized;
        transform.Translate(movDir * moveSpeed * Time.deltaTime, Space.World);
        CheckMoveBoundary();
        //move with rigidbody could cause the ignorance of hitting ball
        //m_Rb.velocity = new Vector3(h, v, 0f);
    }

    /// <summary>
    /// prevent from position bugs
    /// </summary>
    protected virtual void CheckMoveBoundary() {
        Vector3 curPos = transform.position;
        if (playerNumber == PlayerNumber.player1) {
            transform.position = new Vector3(Mathf.Clamp(curPos.x, -3.1f, -2f), Mathf.Clamp(curPos.y, -0.2f, 0.8f), curPos.z);
        } else {
            transform.position = new Vector3(Mathf.Clamp(curPos.x, -0.4f, 0.7f), Mathf.Clamp(curPos.y, -0.2f, 0.8f), curPos.z);
        }
    }

    /// <summary>
    /// Can bat only when input is enabled and isBatting is set to false.
    /// Multi-times "bat" input will not extend the rotation time.
    /// </summary>
    protected virtual void Bat() {
        if (!isInputEnabled)
            return;

        if (batState == BatState.none) {
            if (playerNumber == PlayerNumber.player1) {
                if (Input.GetKeyDown(KeyCode.T)) {
                    SetBatState(BatState.forward);
                    Invoke("SetBatBackward", 0.125f);
                    Invoke("ResetBatState", 0.25f);
                }
            } else {
                if (Input.GetKeyDown(KeyCode.M)) {
                    SetBatState(BatState.forward);
                    Invoke("SetBatBackward", 0.125f);
                    Invoke("ResetBatState", 0.25f);
                }
            }
        } else if (batState == BatState.forward && playerNumber == PlayerNumber.player1 ||
            batState == BatState.backward && playerNumber == PlayerNumber.player2) {
                transform.RotateAround(rotationPoint.position, Vector3.back, rotateSpeed * Time.deltaTime);
        } else {
                transform.RotateAround(rotationPoint.position, Vector3.forward, rotateSpeed * Time.deltaTime);
        }
    }

    /// <summary>
    /// For the sake of Invoke Function,
    /// another set function is needed.
    /// </summary>
    protected void SetBatBackward() {
        SetBatState(BatState.backward);
    }

    /// <summary>
    /// called by GameController in ResetPlayer function
    /// </summary>
    public virtual void ResetBatState() {
        SetBatState(BatState.none);
        m_Rb.angularVelocity = Vector3.zero;
        gameObject.transform.localEulerAngles = m_playerInitLocalEuler;
    }
}
