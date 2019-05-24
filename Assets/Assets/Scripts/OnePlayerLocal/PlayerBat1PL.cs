using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using AIPlayerAgent;

public class PlayerBat1PL : PlayerBat {

    public bool isAgentControlling;
    private float agentInput_h;
    private float agentInput_v;
    private bool agentInput_bat;
    
    private IAIPlayerAgent iAIPlayerAgent;

    protected override void InitPlayer() {
        base.InitPlayer();
        iAIPlayerAgent = GetComponent<AIPlayerAgentFacade>() as IAIPlayerAgent;
    }

    /// <summary>
    /// Add isAgentControlling condition, if so, return
    /// and use another Move function to control, called in GameController
    /// </summary>
    protected override void Move() {
        if (!isAgentControlling) {
            base.Move();
        }
    }
    
    /// <summary>
    /// Called in GameController to control the playerBat
    /// </summary>
    public void Move(float h, float v) {
        if (!isInputEnabled) {
            return;
        }
        m_Rb.velocity = new Vector3(h, v, 0f) * moveSpeed;
        CheckMoveBoundary();
    }

    /// <summary>
    /// Add isAgentControlling condition, if so, return
    /// and use another Bat function to control, called in GameController
    /// </summary>
    protected override void Bat() {
        if (!isAgentControlling) {
            base.Bat();
        }
    }
    
    /// <summary>
    /// Called in GameController to control the playerBat
    /// </summary>
    public void Bat(float bat) {
        if (!isInputEnabled) {
            return;
        }
        if (batState == BatState.none) {
            if (bat > 0.9f) {
                SetBatState(BatState.forward);
                Invoke("SetBatBackward", 0.125f);
                Invoke("ResetBatState", 0.25f);
            }
        } else if (batState == BatState.forward && playerNumber == PlayerNumber.player1 ||
            batState == BatState.backward && playerNumber == PlayerNumber.player2) {
                transform.RotateAround(rotationPoint.position, Vector3.back, rotateSpeed * Time.deltaTime);
        } else {
                transform.RotateAround(rotationPoint.position, Vector3.forward, rotateSpeed * Time.deltaTime);
        }
    }

    protected override void CheckMoveBoundary() {
        base.CheckMoveBoundary();
    }

    public override void ResetBatState() {
        base.ResetBatState();
    }
}
