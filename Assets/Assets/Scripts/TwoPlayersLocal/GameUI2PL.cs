using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameUI2PL : GameUI {

    private GameController gameController;

    private GameObject startButton;
    private GameObject pauseButton;
    private GameObject pauseMenu;
    private GameObject endMenu;

    private Text player1Score;
    private Text player2Score;

    private GameObject player1ServeIcon;
    private GameObject player2ServeIcon;
    
    private GameObject tutorials;
    
    protected override void InitUI() {
        gameController = GameController._instance;
        
        player1Score = transform.GetChild(0).GetComponent<Text>();
        player2Score = transform.GetChild(1).GetComponent<Text>();
        player1ServeIcon = transform.GetChild(2).gameObject;
        player2ServeIcon = transform.GetChild(3).gameObject;
        startButton = transform.GetChild(4).gameObject;
        pauseButton = transform.GetChild(5).gameObject;
        pauseMenu = transform.GetChild(6).gameObject;
        endMenu = transform.GetChild(7).gameObject;
        tutorials = transform.GetChild(8).gameObject;
        
        player1ServeIcon.SetActive(false);
        player2ServeIcon.SetActive(false);
        pauseButton.SetActive(false);
        pauseMenu.SetActive(false);
        if (tutorials) {
            tutorials.SetActive(true);
        }
    }

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
