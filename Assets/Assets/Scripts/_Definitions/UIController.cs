using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class UIController : MonoBehaviour {

    public GameController gameController;

    /// <summary>
    /// called in Start to initialize the game UI
    /// </summary>
    protected abstract void InitUI();

    /// <summary>
    /// Start the game.
    /// called when StartButton is clicked
    /// call StartGame in GameController
    /// </summary>
    public abstract void OnStartButtonClicked();

    /// <summary>
    /// Shows the pause menu.
    /// called when PauseButton is clicked
    /// call PauseGame in GameController
    /// </summary>
    public abstract void OnPauseButtonClicked();

    /// <summary>
    /// Hides the pause menu.
    /// called when ResumeButton is clicked
    /// call ResumeGame in GameController
    /// </summary>
    public abstract void OnResumeButtonClicked();

    /// <summary>
    /// called when RestartButton is clicked
    /// call RestartGame in GameController
    /// </summary>
    public abstract void OnRestartButtonClicked();

    /// <summary>
    /// called when ExitButton is clicked
    /// call ExitGame in GameController
    /// </summary>
    public abstract void OnExitButtonClicked();

    /// <summary>
    /// called by CheckWin in GameController
    /// Show EndMenu
    /// </summary>
    public abstract void OnGameEnd();


    /// <summary>
    /// Updates the scores.
    /// player: 1-player1, 2-player2
    /// newScore: player's new score
    /// </summary>
    public abstract void UpdateScore(int player, int newScore);
}
