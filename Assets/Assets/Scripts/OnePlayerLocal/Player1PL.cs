using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using AIPlayerAgent;

public class Player1PL : Player {

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
    /// Add AgentControlMove
    /// </summary>
    protected override void Move() {
        if (!isAgentControlling) {
            base.Move();
        } else {
            if (!isInputEnabled)
                return;
            
            float[] agentInput = iAIPlayerAgent.GetAgentInput();
            
            m_Rb.velocity = new Vector3(agentInput[0], agentInput[1], 0f) * moveSpeed;
            CheckMoveBoundary();
        }
    }

    /// <summary>
    /// Add AgentControlBat
    /// </summary>
    protected override void Bat() {
        if (!isAgentControlling) {
            base.Bat();
        } else {
            if (!isInputEnabled)
                return;

            if (batState == BatState.none) {
                float[] agentInput = iAIPlayerAgent.GetAgentInput();
                if (agentInput[2] == 1f) {
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
        
    }

    protected override void CheckMoveBoundary() {
        base.CheckMoveBoundary();
    }

    public override void ResetBatState() {
        base.ResetBatState();
    }
}
