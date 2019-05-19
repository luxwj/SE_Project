using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using AIPlayerAgent;

/// <summary>
/// Add isTraining condition, use training mode in OnePlayerLocalTraining Scene.
/// Under isTraining mode:
///     MakeServe method will drop the ball immediately.
///     CheckScore
/// </summary>
public class GameController1PL : GameController {

    public bool isTraining;
    
    private IAIPlayerAgent[] iAIPlayerAgents;

    /// <summary>
    /// If isTraining, start the game immediately instead of waiting for OnStartButtonClick()
    /// </summary>
    protected override void InitGame() {
        base.InitGame();
        if (!isTraining) {
            iAIPlayerAgents = new IAIPlayerAgent[1];
            iAIPlayerAgents[0] = players[1].GetComponent<AIPlayerAgentFacade>() as IAIPlayerAgent;
        } else {
            iAIPlayerAgents = new IAIPlayerAgent[2];
            iAIPlayerAgents[0] = players[0].GetComponent<AIPlayerAgentFacade>() as IAIPlayerAgent;
            iAIPlayerAgents[1] = players[1].GetComponent<AIPlayerAgentFacade>() as IAIPlayerAgent;
            MakeServe();
        }
    }

    /// <summary>
    /// Add isTraining condition, drop the ball immediately under training mode.
    /// </summary>
    protected override void MakeServe() {
        ResetPlayers();
        SetGameState(GameState.makingServe);
        if (m_UIController != null) {
            m_UIController.UpdateServer(willPlayer1Serve);
        }
        Vector3 newServePos = Vector3.zero;
        if (WillPlayer1Serve()) {
            newServePos.x = Random.Range(servePositions[0].x, servePositions[0].y);
            newServePos.y = servePositions[0].z;
        } else {
            newServePos.x = Random.Range(servePositions[1].x, servePositions[1].y);
            newServePos.y = servePositions[0].z;
        }
        ball = Instantiate(ballPrefab, newServePos, Quaternion.identity);
        
        foreach (var iAIPlayerAgent in iAIPlayerAgents) {
            iAIPlayerAgent.SetBallObj(ball);
        }
        //Add isTraining condition
        if (!isTraining) {
            ball.GetComponent<Ball>().SetUseGravity(false);
            Invoke("StartNewRound", 3f);
        } else {
            StartNewRound();
        }

    }
    
    /// <summary>
    /// replace score with reward
    /// 0: leftFloor, 1: rightFloor, 2: leftWall, 
    /// 3: rightWall, 4: net, 5: player1, 6:player2
    /// 7: over
    /// </summary>
    protected override void CheckScore(Transform lastHitPlayer, int boundNum) {
        if (!isTraining) {
            //only in original scope
            if (boundNum < 7)
                base.CheckScore(lastHitPlayer, boundNum);
        } else {
            
            if (boundNum < 7) {
                SetGameState(GameState.calculatingPoints);
                Destroy(ball);
                for (int i = 0; i < playerNum; ++i) {
                    players[i].SetInputEnabled(false);
                }
                willPlayer1Serve = !willPlayer1Serve;       //change server

            }
            
            switch (boundNum) {
                case 0:
                    iAIPlayerAgents[1].SetReward(0.01f);
                    iAIPlayerAgents[0].SetReward(-0.02f);
                    break;
                case 1:
                    iAIPlayerAgents[0].SetReward(0.01f);
                    iAIPlayerAgents[1].SetReward(-0.02f);
                    break;
                case 2:
                case 3:
                case 4:
                    if (lastHitPlayer.tag == "Player1") {
                        iAIPlayerAgents[1].SetReward(0f);
                        iAIPlayerAgents[0].SetReward(-0.01f);
                    } else {
                        iAIPlayerAgents[0].SetReward(0f);
                        iAIPlayerAgents[1].SetReward(-0.01f);
                    }
                    break;
                case 5:
                    iAIPlayerAgents[1].SetReward(0f);
                    iAIPlayerAgents[0].SetReward(-0.01f);
                    break;
                case 6:
                    iAIPlayerAgents[1].SetReward(-0.01f);
                    iAIPlayerAgents[0].SetReward(0f);
                    break;
                case 7:
                    if (lastHitPlayer.tag == "Player1") {
                        iAIPlayerAgents[0].SetReward(0.05f);
                        iAIPlayerAgents[1].SetReward(0f);
                    } else {
                        iAIPlayerAgents[1].SetReward(0.05f);
                        iAIPlayerAgents[0].SetReward(0f);
                    }
                    break;
            }
            
            //Here CheckWin for agent.Done method
            
            //CheckWin(); 
            if (boundNum < 7) {
                MakeServe();
            }
        }
    }

    /// <summary>
    /// Add isTraining condition,
    /// if is not training, return false
    /// </summary>
    protected override bool CheckWin() {
        if (!isTraining) {
            return base.CheckWin();
        }
        return false;
    }

    public override void RestartGame() {
        base.RestartGame();
    }
}
