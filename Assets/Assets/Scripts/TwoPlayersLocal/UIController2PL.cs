using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIController2PL : UIController {

    public GameObject startButton;
    public GameObject pauseButton;
    public GameObject pauseMenu;

    public Text player1Score;
    public Text player2Score;

    public GameObject player1ServeIcon;
    public GameObject player2ServeIcon;

    private void Start() {
        InitUI();
    }

    /// <summary>
    /// called in Start to initialize the game UI
    /// </summary>
    protected override void InitUI() {
        player1ServeIcon.SetActive(false);
        player2ServeIcon.SetActive(false);
        pauseButton.SetActive(false);
        pauseMenu.SetActive(false);
    }

    /// <summary>
    /// called when StartButton is clicked
    /// </summary>
    public override void OnGameStart() {
        startButton.SetActive(false);
        pauseButton.SetActive(true);
    }

    /// <summary>
    /// Updates the serve icon.
    /// </summary>
    public void UpdateServer(bool willPlayer1Serve) {
        if (willPlayer1Serve) {
            player1ServeIcon.SetActive(true);
            player2ServeIcon.SetActive(false);
        } else {
            player1ServeIcon.SetActive(false);
            player2ServeIcon.SetActive(true);
        }
    }

    /// <summary>
    /// Updates the score.
    /// player: 1: update score of player1, 2: update score of player2
    /// newScore: player's new Score
    /// </summary>
    public override void UpdateScore(int player, int newScore) {
        if (player == 1) {
            player1Score.text = "Player1 \nScore: " + newScore.ToString();
        } else if (player == 2) {
            player2Score.text = "Player2 \nScore: " + newScore.ToString();
        }
    }

    /// <summary>
    /// Shows the pause menu.
    /// </summary>
    public void ShowPauseMenu() {
        pauseMenu.SetActive(true);
        pauseButton.SetActive(false);
    }

    /// <summary>
    /// Hides the pause menu.
    /// </summary>
    public void HidePauseMenu() {
        pauseMenu.SetActive(false);
        pauseButton.SetActive(true);
    }
}
