using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class NetworkTransformOutInterface : NetworkBehaviour {

    private Rigidbody batRb;
    protected Vector3 m_playerInitLocalEuler;
    public Transform rotationPoint;
    protected static float rotateSpeed = 360f;
    public GameObject bat;
    public GameObject ball;
    public enum BatState
    {
        none,
        forward,
        backward
    }
    protected BatState batState = BatState.none;
    public int GetBatState()
    {
        return (int)batState;
    }
    public void SetBatState(BatState newState)
    {
        batState = newState;
    }

    // Use this for initialization
    void Start()
    {
        m_playerInitLocalEuler = transform.localEulerAngles;
    }
    void Update()
    {   
        float h = Input.GetAxis("Horizontal2");
        float v = Input.GetAxis("Vertical2");
        bool bat = Input.GetKeyDown(KeyCode.M);
        CmdMove(h, v, bat);
    }
    public void SetClientinput(float h, float v, bool bat)
    {
        if (!isServer)
        {
            Debug.Log("3");
            CmdMove(h, v, bat);
        }
    }

    [Command]
    public void CmdMove(float h, float v, bool x)
    {
        float moveSpeed = 2f;
        bat = GameObject.FindWithTag("Player2");
        batRb = bat.GetComponent<Rigidbody>();
        batRb.velocity = new Vector3(h, v, 0f) * moveSpeed;
        if (batState == BatState.none)
            if (x)
            {
                SetBatState(BatState.forward);
                Invoke("SetBatBackward", 0.125f);
                Invoke("ResetBatState", 0.25f);
            }

        if (batState == BatState.backward)
        {
            bat.transform.RotateAround(batRb.position, Vector3.back, rotateSpeed * Time.deltaTime);
        }
        if (batState == BatState.forward)
        {
            bat.transform.RotateAround(batRb.position, Vector3.forward, rotateSpeed * Time.deltaTime);
        }

    }
    protected void SetBatBackward()
    {
        SetBatState(BatState.backward);
    }

    /// <summary>
    /// called by GameController in ResetPlayer function
    /// </summary>
    public virtual void ResetBatState()
    {
        SetBatState(BatState.none);
        batRb.angularVelocity = Vector3.zero;
        gameObject.transform.localEulerAngles = new Vector3(45f, 90f, 0f);
    }
}
