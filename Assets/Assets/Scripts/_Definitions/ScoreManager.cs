using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScoreManager : MonoBehaviour {

	public static ScoreManager _instance;
	
    //0: player1, 1: player2
    protected int[] playerScores;

    /// <summary>
    /// If player1 serves the next ball,should be set to true.
    /// </summary>
    protected bool willPlayer1Serve;
    public bool WillPlayer1Serve() {
        return willPlayer1Serve;
    }
	
	private void Awake() {
		_instance = this;
	}
	
	private void Start()
	{
		InitScoreManager();
	}
	
	protected virtual void InitScoreManager() {
		playerScores = new int[2];
        willPlayer1Serve = Random.Range(-10f, 10f) > 0;
	}
	
	/// <summary>
	/// Called in GameController.CheckScore(), add score to either player1 or player2
	/// playerNum = 0, player1 gets point; playerNum = 1, player2 gets point
	/// return the current point of this player
	/// </summary>
	public virtual int AddScore(int playerNum) {
		willPlayer1Serve = !willPlayer1Serve;
		if (playerNum > 1) {
			return 0;
		}
		return(++playerScores[playerNum]);
	}
	
	
    /// <summary>
    /// Checks whether someone wins the game.
	/// Called in GameController.CheckScore()
	/// If someone wins, reset both bats and show the EndUI
    /// </summary>
    public virtual bool CheckWin() {
        return (playerScores[0] > 6 || playerScores[1] > 6);
    }
	
}
