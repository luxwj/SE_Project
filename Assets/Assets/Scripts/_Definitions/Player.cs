using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Player : MonoBehaviour {

    public enum PlayerNumber {
        player1,
        player2
    }

    [SerializeField]
    protected PlayerNumber playerNumber;

    public enum BatState {
        none,
        forward,
        backward
    }
    protected BatState batState;
    public void SetBatState(BatState newState) {
        batState = newState;
    }


    [SerializeField]
    protected bool isInputEnabled;
    public void SetInputEnabled(bool enabled) {
        isInputEnabled = enabled;
    }

    protected GameObject m_playerObj;
    protected Rigidbody m_Rb;
    protected Vector3 m_playerInitLocalEuler;

    protected static float moveSpeed = 2f;
    protected static float rotateSpeed = 360f;
    public Transform rotationPoint;
    protected float origRotX;

    protected virtual void Awake() {
        m_playerObj = gameObject;
        m_Rb = GetComponent<Rigidbody>();
        m_playerInitLocalEuler = transform.localEulerAngles;
    }

    /// <summary>
    /// Move this instance.
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

    protected virtual void CheckMoveBoundary() {
        Vector3 curPos = transform.position;
        if (playerNumber == PlayerNumber.player1) {
            transform.position = new Vector3(Mathf.Clamp(curPos.x, -3.1f, -2f), Mathf.Clamp(curPos.y, -0.2f, 0.5f), curPos.z);
        } else {
            transform.position = new Vector3(Mathf.Clamp(curPos.x, -0.4f, 0.7f), Mathf.Clamp(curPos.y, -0.2f, 0.5f), curPos.z);
        }
    }

    /// <summary>
    /// Only when input is enabled and isBatting is set to false.
    /// Multi-times "bat" input will not extend the rotation time.
    /// </summary>
    protected virtual void Bat() {
        if (!isInputEnabled)
            return;

        if (batState == BatState.none) {
            if (playerNumber == PlayerNumber.player1) {
                if (Input.GetKeyDown(KeyCode.T)) {
                    SetBatState(BatState.forward);
                    origRotX = transform.rotation.eulerAngles.x;
                    Invoke("SetBatBackward", 0.125f);
                    Invoke("ResetBatState", 0.25f);
                }
            } else {
                if (Input.GetKeyDown(KeyCode.M)) {
                    SetBatState(BatState.forward);
                    origRotX = transform.rotation.eulerAngles.x;
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

    protected virtual void SetBatBackward() {
        SetBatState(BatState.backward);
    }

    public virtual void ResetBatState() {
        SetBatState(BatState.none);
        m_playerObj.transform.localEulerAngles = m_playerInitLocalEuler;
    }
}
