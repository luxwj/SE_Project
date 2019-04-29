using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class UIController : MonoBehaviour {

    protected abstract void InitUI();

    public abstract void OnGameStart();

    /// <summary>
    /// player: 1-player1, 2-player2
    /// </summary>
    public abstract void UpdateScore(int player, int newScore);
}
