using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IAIPlayerAgent
{
	/// <summary>
	/// Returns agent outputs:
	/// 	0: rightAxis
	/// 	1: upAxis
	/// 	2: batAxis
	/// </summary>
	float[] GetAgentOutput();
	
	/// <summary>
	/// After a serve is made, set the ball object for the agents
	/// </summary>
	void SetBallObj (GameObject ball);
	
	/*
	 * The following methods are not used in a regular game,
	 * only used when model training.
	 */
	
	/// <summary>
	/// Call agent.Done() method
	/// </summary>
	void SetAgentDone();
	
	/// <summary>
	/// Add rewards for agent, called in gameController.CheckScore
	/// </summary>
	void AddReward (float agentScore);
}  