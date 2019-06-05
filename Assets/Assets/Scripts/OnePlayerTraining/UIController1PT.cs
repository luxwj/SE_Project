﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class UIController1PT : UIController {

    public GameObject startButton;
    public GameObject pauseButton;
    public GameObject pauseMenu;
    public GameObject endMenu;

    public Text player1Score;
    
    protected override void InitUI() {
        pauseButton.SetActive(false);
        pauseMenu.SetActive(false);
    }

    public override void UpdateServer(bool willPlayer1Serve) {

    }

    /// <summary>
    /// Updates the score.
    /// player: 1: update score of player1, 2: update score of player2
    /// newScore: player's new Score
    /// </summary>
    public override void UpdateScore(int player, int newScore) {
        player1Score.text = "Player1 \nScore: " + newScore.ToString();
    }

    public override void OnStartButtonClicked() {
        startButton.SetActive(false);
        pauseButton.SetActive(true);
        gameController.StartGame();
    }

    public override void OnPauseButtonClicked() {
        pauseMenu.SetActive(true);
        pauseButton.SetActive(false);
        gameController.PauseGame();
    }

    public override void OnResumeButtonClicked() {
        pauseMenu.SetActive(false);
        pauseButton.SetActive(true);
        gameController.ResumeGame();
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
