using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using MLAgents;

namespace AIPlayerAgent
{
        
    /// <summary>
    /// AddVectorObs(rotation) could cause problems
    /// Remove it from VectorObs
    /// </summary>
    public class MLAgentsInterface : Agent {

        private Rigidbody batRb;
        
        private GameObject ball;
        private Rigidbody ballRb;
        /// <summary>
        /// Set newBall as ball, and get its rigidbody.
        /// </summary>
        public void SetBallObj(GameObject newBall) {
            ball = newBall;
            ballRb = ball.GetComponent<Rigidbody>();
        }
        
        private int rightAxis, upAxis, batAxis;
        
        
        /// <summary>
        /// For the sake of normalization, and unite the facing direction.
        /// invert player1's transform
        /// x for player1, y for both player
        /// </summary>
        private Vector2 batPosBias = new Vector2(-2.5f, 0.1f);
        private Vector2 ballPosBias = new Vector2(-1.25f, 1f);
        public bool isPlayer1;
        private float invertMult;

        public override void InitializeAgent() {
            invertMult = isPlayer1 ? -1 : 1;
            batRb = GetComponent<Rigidbody>();
        }

        /// <summary>
        /// Notice that player1 has a move bound with -3.4 < x < -1.6, -0.6 < y < 0.8, 
        /// while player2 has a move bound with -0.9 < x < 0.9, -0.6 < y < 0.8
        /// 1. player position.x, 2. player position.y, 3. player velocity.x
        /// 4. player velocity.y, 5. player rotation.euler.x (45~0)
        /// 6. ball position.x, 7. ball position.y, 8. ball velocity.x
        /// 9. ball velocity.y
        /// </summary>
        public override void CollectObservations() {
            AddVectorObs(invertMult * (transform.position.x - batPosBias.x * (isPlayer1 ? 1 : 0)) / 0.9f);
            AddVectorObs((transform.position.y - batPosBias.y) / 0.7f);
            AddVectorObs(invertMult * batRb.velocity.x / 2f);
            AddVectorObs(batRb.velocity.y / 2f);
            AddVectorObs(transform.rotation.eulerAngles.x / 45f);
            
            if (ball != null) {
                AddVectorObs(invertMult * (ball.transform.position.x - ballPosBias.x) / 2f);
                AddVectorObs(ball.transform.position.y - ballPosBias.y / 1f);
                AddVectorObs(invertMult * (ballRb.velocity.x) / 5f);
                AddVectorObs(ballRb.velocity.y / 5f);
            } else {
                AddVectorObs(1f);
                AddVectorObs(1f);
                AddVectorObs(0f);
                AddVectorObs(0f);
            }
        }
        
        /// <summary>
        /// Rewards are set in Checkscore() Method in GameController
        /// vectorActions are discrete
        /// vectorAction: 0-horizontal, 1-vertical, 2-bat
        /// i.e. 0: rightAxis, 0 for none, 1 for left, 2 for riight
        /// 1: upAxis, 0 for none, 1 for down, 2 for up
        /// 2: batAxis, 0 for none, 1 for bat
        /// textAction is not gonna be used by this agent
        /// </summary>
        public override void AgentAction(float[] vectorAction, string textAction) {
            rightAxis = (int)vectorAction[0];
            upAxis = (int)vectorAction[1];
            batAxis = (int)vectorAction[2];
            if (batAxis == 1) {
                SetReward(-0.001f);
            }
        }
        
        /// <summary>
        /// Returns agentInputs as 3 float numbers, 
        /// agentsInputs[0] = rightAxis, left for -1, none for 0, right for 1
        /// agentsInputs[1] = upAxis, down for -1, none for 0, up for 1
        /// agentsInputs[2] = batAxis, none for 0, bat for 1
        /// </summary> 
        public float[] GetAgentInput() {
            float[] agentInputs = new float[3];
            
            switch (rightAxis) {
                case 0:
                    agentInputs[0] = 0f;
                    break;
                case 1:
                    agentInputs[0] = -1f;
                    break;
                case 2:
                    agentInputs[0] = 1f;
                    break;
            }
            
            switch (upAxis) {
                case 0:
                    agentInputs[1] = 0f;
                    break;
                case 1:
                    agentInputs[1] = -1f;
                    break;
                case 2:
                    agentInputs[1] = 1f;
                    break;
            }
            
            agentInputs[2] = batAxis;
            
            return agentInputs;
        }

    }

}
