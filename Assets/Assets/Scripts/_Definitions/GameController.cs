using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

/// <summary>
/// Override in sub-class especially in OnePlayerTraining:
///     InitGame(), MakeServe(), CheckScore(), CheckWin();
/// </summary>
public abstract class GameController : MonoBehaviour {
    
    public static GameController _instance;

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
    public PlayerBat[] players;

    /// <summary>
    /// Properties of players, i.e. reset positions, reset rotations.
    /// </summary>
    protected Vector3[] playerInitPositions;
    protected Vector3[] playerInitLocalEulers;

    /// <summary>
    /// "ball" is the instance that we mainly deal with.
    /// Should never interact with "ballPrefab" except instantiate.
    /// servePositions: represents the instantiate position of a new ball.
    ///     servePositions[0]: x: left most, y: right most, z: height
///         servePositions[1]: x: left most, y: right most, z: height
    /// </summary>
    protected GameObject ball;
    public GameObject ballPrefab;
    protected Vector3[] servePositions;
    
    /// <summary>
    /// ScoreManager in this Scene.
    /// </summary>
    protected ScoreManager m_ScoreManager;

    /// <summary>
    /// UIController in this Scene.
    /// </summary>
    protected GameUI m_GameUI;

    //0: LeftFloor, 1: RightFloor, 2: LeftWall, 3: RightWall, 
    //4: Net, 5: player1, 6: player2
    public GameObject[] boundaries;
    //the red material
    protected Material redMat;
    
    private void Awake()
    {
        _instance = this;
    }
    
    private void Start() {
        InitGame();
    }

    /// <summary>
    /// called in Start to initialize the game
    /// ScoreManager and UIController have _instance.
    /// </summary>
    protected virtual void InitGame() {
        m_ScoreManager = ScoreManager._instance;
        m_GameUI = GameUI._instance;
        
        playerInitPositions = new Vector3[playerNum];
        playerInitLocalEulers = new Vector3[playerNum];
        servePositions = new Vector3[2];
        servePositions[0] = new Vector3(-3f, -2f, 2.5f);
        servePositions[1] = new Vector3(-0.5f, 0.5f, 2.5f);
        for (int i = 0; i < playerNum; ++i) {
            playerInitPositions[i] = players[i].transform.position;
            playerInitLocalEulers[i] = players[i].transform.localEulerAngles;
        }
        
        redMat = new Material(Shader.Find("Standard"));
        redMat.color = new Color(0.88f, 0.35f, 0.35f, 1f);
        
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
    /// Serve the ball in a random range of x.
    /// After 2 seconds falls the ball.
    /// </summary>
    protected virtual void MakeServe() {
        ResetPlayers();
        SetGameState(GameState.makingServe);
        if (m_GameUI != null) {
            m_GameUI.UpdateServer(m_ScoreManager.WillPlayer1Serve());
        }
        
        Vector3 newServePos = Vector3.zero;
        if (m_ScoreManager.WillPlayer1Serve()) {
            newServePos.x = Random.Range(servePositions[0].x, servePositions[0].y);
            newServePos.y = servePositions[0].z;
        } else {
            newServePos.x = Random.Range(servePositions[1].x, servePositions[1].y);
            newServePos.y = servePositions[0].z;
        }
        ball = Instantiate(ballPrefab, newServePos, Quaternion.identity);
        
        ball.GetComponent<Ball>().SetUseGravity(false);
        Invoke("StartNewRound", 3f);
    }

    /// <summary>
    /// Called in MakeServe before game state is changed to makingServe.
    /// </summary>
    protected void ResetPlayers() {
        for (int i = 0; i < playerNum; ++i) {
            players[i].transform.position = playerInitPositions[i];
            players[i].transform.localEulerAngles = playerInitLocalEulers[i];
            players[i].GetComponent<Rigidbody>().velocity = Vector3.zero;
            players[i].ResetBatState();
        }
    }

    /// <summary>
    /// Called after serve.
    /// Enable the ball gravity and enable player input.
    /// </summary>
    protected void StartNewRound() {
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
        CheckScore(lastHitPlayer, boundNum);
        if (boundNum < 7) {
            MeshRenderer boundMesh = boundaries[boundNum].GetComponent<MeshRenderer>();
            if (boundMesh != null) {
                Material boundMat = boundMesh.material;
                boundMesh.material = redMat;
                StartCoroutine(SetMaterial(boundMesh, boundMat, 0.5f));
            }
        }
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

        switch (boundNum) {
            case 0:
            case 5:
                if (m_GameUI != null) {
                    m_GameUI.UpdateScore(2, m_ScoreManager.AddScore(1));
                }
                break;
            case 1:
            case 6:
                if (m_GameUI != null) {
                    m_GameUI.UpdateScore(1, m_ScoreManager.AddScore(0));
                }
                break;
            case 2:
            case 3:
            case 4:
                if (lastHitPlayer.tag == "Player1") {
                if (m_GameUI != null) {
                    m_GameUI.UpdateScore(2, m_ScoreManager.AddScore(1));
                }
                } else {
                    if (m_GameUI != null) {
                        
                        m_GameUI.UpdateScore(1, m_ScoreManager.AddScore(0));
                    }
                }
                break;
        }

        if (m_ScoreManager.CheckWin()) {
            SetGameState(GameState.gameEnded);
            foreach (var player in players) {
                player.ResetBatState();
            }
            if (m_GameUI != null) {
                m_GameUI.OnGameEnd();
            }
            return;
        }

        MakeServe();
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
    public virtual void RestartGame() {
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
