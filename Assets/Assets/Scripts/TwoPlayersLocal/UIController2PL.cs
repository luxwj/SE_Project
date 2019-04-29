using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIController2PL : MonoBehaviour {

    public Text player1Score;
    public Text player2Score;

    /// <summary>
    /// Updates the score.
    /// player: 1: update score of player1, 2: update score of player2
    /// newScore: player's new Score
    /// </summary>
    public void UpdateScore(int player, int newScore) {
        if (player == 1) {
            player1Score.text = "Score: " + newScore.ToString();
        } else if (player == 2) {
            player2Score.text = "Score: " + newScore.ToString();
        }
    }
}
