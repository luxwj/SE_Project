using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace AIPlayerAgent
{
	public class AIPlayerAgentFacade : MonoBehaviour, IAIPlayerAgent {

		int agentInput_h, agentInput_v, agentInput_bat;
		private MLAgentsInterface m_MLAgentsInterface;
		
		void Start()
		{
			m_MLAgentsInterface = GetComponent<MLAgentsInterface>();
		}
		
		public float[] GetAgentInput() {
			return m_MLAgentsInterface.GetAgentInput();
		}
		
		public void SetReward(float score) {
			m_MLAgentsInterface.SetReward(score);
		}
		
		public void SetBallObj(GameObject Ball) {
			m_MLAgentsInterface.SetBallObj(Ball);
		}
		
		public void SetAgentDone() {
			m_MLAgentsInterface.Done();
		}
	}
}

