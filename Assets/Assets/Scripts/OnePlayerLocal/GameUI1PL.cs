using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameUI1PL : GameUI {

    private GameController gameController;

    public GameObject startButton;
    public GameObject pauseButton;
    public GameObject pauseMenu;
    public GameObject endMenu;

    public Text player1Score;
    public Text player2Score;

    public GameObject player1ServeIcon;
    public GameObject player2ServeIcon;
    
    public GameObject tutorials;

    protected override void InitUI() {
        gameController = GameController._instance;
        player1ServeIcon.SetActive(false);
        player2ServeIcon.SetActive(false);
        pauseButton.SetActive(false);
        pauseMenu.SetActive(false);
        if (tutorials) {
            tutorials.SetActive(true);
        }
    }

    /// <summary>
    /// Updates the serve icon.
    /// </summary>
    public override void UpdateServer(bool willPlayer1Serve) {
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

    public override void OnStartButtonClicked() {
        startButton.SetActive(false);
        pauseButton.SetActive(true);
        gameController.StartGame();
        if (tutorials) {
            tutorials.SetActive(false);
        }
    }

    public override void OnPauseButtonClicked() {
        pauseMenu.SetActive(true);
        pauseButton.SetActive(false);
        gameController.PauseGame();
        if (tutorials) {
            tutorials.SetActive(true);
        }
    }

    public override void OnResumeButtonClicked() {
        pauseMenu.SetActive(false);
        pauseButton.SetActive(true);
        gameController.ResumeGame();
        if (tutorials) {
            tutorials.SetActive(false);
        }
    }

    public override void OnRestartButtonClicked() {
        gameController.RestartGame();
    }

    public override void OnExitButtonClicked() {
        //gameController.ExitGame();
        SceneManager.LoadScene(0);
    }

    public override void OnGameEnd() {
        player1ServeIcon.SetActive(false);
        player2ServeIcon.SetActive(false);
        pauseButton.SetActive(false);
        endMenu.SetActive(true);
    }
}
