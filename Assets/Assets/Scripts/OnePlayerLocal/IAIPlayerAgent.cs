using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IAIPlayerAgent
{
	/// <summary>
	/// Returns agent inputs:
	/// 	0: rightAxis
	/// 	1: upAxis
	/// 	2: batAxis
	/// </summary>
	float[] GetAgentInput();
	
	/// <summary>
	/// Add rewards for agent, called in gameController.CheckScore
	/// </summary>
	void AddReward (float agentScore);
	
	/// <summary>
	/// After a serve is made, set the ball object for the agents
	/// </summary>
	void SetBallObj (GameObject ball);
	
	/// <summary>
	/// Call agent.Done() method
	/// </summary>
	void SetAgentDone();
}  