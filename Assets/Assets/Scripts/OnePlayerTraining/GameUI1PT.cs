using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameUI1PT : GameUI {

    private GameController gameController;    
    
    private Text player1Score;
    
    private GameObject startButton;
    private GameObject pauseButton;
    private GameObject pauseMenu;
    private GameObject endMenu;
    
    private GameObject tutorials;
    
    protected override void InitUI() {
        gameController = GameController._instance;
        
        player1Score = transform.GetChild(0).GetComponent<Text>();
        startButton = transform.GetChild(1).gameObject;
        pauseButton = transform.GetChild(2).gameObject;
        pauseMenu = transform.GetChild(3).gameObject;
        endMenu = transform.GetChild(4).gameObject;
        tutorials = transform.GetChild(5).gameObject;
        
        pauseButton.SetActive(false);
        pauseMenu.SetActive(false);
        tutorials.SetActive(true);
    }

    public override void UpdateServer(bool willPlayer1Serve) {

    }

    /// <summary>
    /// Updates the score.
    /// player: 1: update score of player1, 2: update score of player2
    /// newScore: player's new Score
    /// </summary>
    public override void UpdateScore(int player, int newScore) {
        if (player != 1) {
            return;
        }
        player1Score.text = "Player1 \nScore: " + newScore.ToString();
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
        pauseButton.SetActive(false);
        endMenu.SetActive(true);
    }
}
