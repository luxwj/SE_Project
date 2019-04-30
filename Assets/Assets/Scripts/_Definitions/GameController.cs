using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

/// <summary>
/// Override in sub-class especially in OnePlayerTraining:
///     InitGame(), MakeServe(), CheckScore(), CheckWin();
/// </summary>
public abstract class GameController : MonoBehaviour {

    /// <summary>
    /// preparing: Before first serve, i.e. not started.
    /// makingServe: After ball is instantiated, before ball falls.
    /// playing: After ball falls, before ball goes out.
    /// calculatingPoints: After ball goes out, before ball is instantiated.
    /// gameEnded: After someone wins.
    /// paused: has not been used.
    /// </summary>
    public enum GameState {
        preparing,
        makingServe,
        playing,
        calculatingPoints,
        gameEnded,
        paused
    }

    protected GameState m_state;
    protected GameState stateBeforePause;
    public GameState GetGameState() {
        return m_state;
    }

    /// <summary>
    /// Set the GameState immediately
    /// This function should be called just after the state has changed
    /// </summary>
    protected void SetGameState(GameState newState) {
        m_state = newState;
    }

    [Range(1, 2)]
    public int playerNum;

    /// <summary>
    /// The player scripts on each player GameObjects.
    /// </summary>
    public Player2PL[] players;

    /// <summary>
    /// Properties of players, i.e. reset positions, gameobjs, reset rotations.
    /// </summary>
    public Transform[] playerInitPositions;
    protected GameObject[] playerObjs;
    protected Vector3[] playerInitLocalEulers;

    /// <summary>
    /// "ball" is the instance that we mainly deal with.
    /// Should never interact with "ballPrefab" except instantiate.
    /// serverPositions: where a new ball is instantiated.
    /// </summary>
    protected GameObject ball;
    public GameObject ballPrefab;
    public Transform[] servePositions;

    /// <summary>
    /// If player1 serves the next ball,should be set to true.
    /// </summary>
    protected bool willPlayer1Serve;
    public bool WillPlayer1Serve() {
        return willPlayer1Serve;
    }

    /// <summary>
    /// UIController in this Scene.
    /// </summary>
    public UIController2PL m_UIController;
    //0: player1, 1: player2
    protected int[] playerScores;


    //0: LeftFloor, 1: RightFloor, 2: LeftWall, 3: RightWall, 
    //4: Net, 5: player1, 6: player2
    public GameObject[] boundaries;
    //tmp boundary material savor.
    protected Material boundMat;
    //the red material
    public Material redMat;

    /// <summary>
    /// called in Start to initialize the game
    /// </summary>
    protected virtual void InitGame() {
        playerObjs = new GameObject[playerNum];
        playerInitLocalEulers = new Vector3[playerNum];
        playerScores = new int[playerNum];
        for (int i = 0; i < playerNum; ++i) {
            playerObjs[i] = players[i].gameObject;
            playerInitLocalEulers[i] = players[i].transform.localEulerAngles;
        }

        willPlayer1Serve = Random.Range(-10f, 10f) > 0;
        SetGameState(GameState.preparing);
    }

    /// <summary>
    /// only called by OnStartButtonClicked in UIController
    /// when StartButton is clicked
    /// </summary>
    public virtual void StartGame() {
        MakeServe();
    }

    /// <summary>
    /// Serve the ball at either of servePos.
    /// After 2 seconds falls the ball.
    /// </summary>
    protected virtual void MakeServe() {
        ResetPlayers();
        SetGameState(GameState.makingServe);
        m_UIController.UpdateServer(willPlayer1Serve);
        if (WillPlayer1Serve()) {
            ball = Instantiate(ballPrefab, servePositions[0].position, Quaternion.identity);
        } else {
            ball = Instantiate(ballPrefab, servePositions[1].position, Quaternion.identity);
        }
        ball.GetComponent<Ball>().SetUseGravity(false);
        Invoke("StartNewRound", 3f);
    }

    /// <summary>
    /// Called in MakeServe before game state is changed to makingServe.
    /// </summary>
    protected void ResetPlayers() {
        for (int i = 0; i < playerNum; ++i) {
            playerObjs[i].transform.position = playerInitPositions[i].transform.position;
            playerObjs[i].transform.localEulerAngles = playerInitLocalEulers[i];
            players[i].GetComponent<Rigidbody>().velocity = Vector3.zero;
            players[i].ResetBatState();
        }
    }

    /// <summary>
    /// Called after serve.
    /// Enable the ball gravity and enable player input.
    /// </summary>
    private void StartNewRound() {
        ball.GetComponent<Ball>().SetUseGravity(true);
        SetGameState(GameState.playing);
        for (int i = 0; i < playerNum; ++i) {
            players[i].SetInputEnabled(true);
        }
    }

    /// <summary>
    /// Ball calls this function when it hits any boundaries.
    /// lastHitPlayer: mark the last hit player who is gonna lose point
    /// boundNum: hit bound number,
    /// i.e. 0: leftFloor, 1: rightFloor, 2: leftWall, 
    /// 3: rightWall, 4: net, 5: player1, 6: player2
    /// This function does not destroy the ball but in CheckScore.
    /// </summary>
    public void OutOfBoundary(Transform lastHitPlayer, int boundNum) {
        if (m_state != GameState.playing) {
            return;
        }

        MeshRenderer boundMesh = boundaries[boundNum].GetComponent<MeshRenderer>();
        boundMat = boundMesh.material;
        boundMesh.material = redMat;
        StartCoroutine(SetMaterial(boundMesh, boundMat, 1f));

        CheckScore(lastHitPlayer, boundNum);
    }

    /// <summary>
    /// Sets the material.
    /// targetMesh: the meshRenderer which will change its material
    /// mat: Material
    /// delay: delay time
    /// </summary>
    protected IEnumerator SetMaterial(MeshRenderer targetMesh, Material mat, float delay) {
        yield return new WaitForSeconds(delay);
        targetMesh.material = mat;
    }

    /// <summary>
    /// Checks the score after the ball goes out of the boundary.
    /// lastHitPlayer: mark the last hit player who is gonna lose point
    /// boundNum: hit bound number, 
    /// i.e. 0: leftFloor, 1: rightFloor, 2: leftWall, 
    /// 3: rightWall, 4: net, 5: player1, 6:player2
    /// </summary>
    protected virtual void CheckScore(Transform lastHitPlayer, int boundNum) {
        SetGameState(GameState.calculatingPoints);
        Destroy(ball);
        for (int i = 0; i < playerNum; ++i) {
            players[i].SetInputEnabled(false);
        }
        willPlayer1Serve = !willPlayer1Serve;       //change server

        switch (boundNum) {
            case 0:
            case 5:
                ++playerScores[1];
                m_UIController.UpdateScore(2, playerScores[1]);
                break;
            case 1:
            case 6:
                ++playerScores[0];
                m_UIController.UpdateScore(1, playerScores[0]);
                break;
            case 2:
            case 3:
            case 4:
                if (lastHitPlayer.tag == "Player1") {
                    ++playerScores[1];
                    m_UIController.UpdateScore(2, playerScores[1]);
                } else {
                    ++playerScores[0];
                    m_UIController.UpdateScore(1, playerScores[0]);
                }
                break;
        }

        if (CheckWin())
            return;

        MakeServe();
    }

    /// <summary>
    /// Checks whether someone wins the game.
    /// </summary>
    protected virtual bool CheckWin() {
        if (playerScores[0] < 7 && playerScores[1] < 7) {
            return false;
        } else {
            SetGameState(GameState.gameEnded);
            m_UIController.OnGameEnd();
            return true;
        }
    }

    /// <summary>
    /// only called by OnPauseButtonClicked in UIController
    /// when PauseButton is clicked
    /// </summary>
    public void PauseGame() {
        stateBeforePause = m_state;
        SetGameState(GameState.paused);
        Time.timeScale = 0f;
    }

    /// <summary>
    /// only called by OnResumeButtonClicked in UIController
    /// when ResumeButton is clicked
    /// </summary>
    public void ResumeGame() {
        SetGameState(stateBeforePause);
        Time.timeScale = 1f;
    }

    /// <summary>
    /// only called by OnRestartButtonClicked in UIController
    /// when RestartButton is clicked
    /// </summary>
    public void RestartGame() {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    /// <summary>
    /// only called by OnExitButtonClicked in UIController
    /// when RestartButton is clicked
    /// </summary>
    public void ExitGame() {
#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
#else
        Application.Quit();
#endif
    }
}
