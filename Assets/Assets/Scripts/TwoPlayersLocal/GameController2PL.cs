﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameController2PL : MonoBehaviour {

    public enum GameState {
        preparing,
        makingServe,
        playing,
        calculatingPoints,
        gameEnded,
        pausing
    }
    GameState m_state;
    public GameState GetGameState() {
        return m_state;
    }

    [SerializeField]
    private bool willPlayer1Serve;
    public bool WillPlayer1Serve() {
        return willPlayer1Serve;
    }

    //0: player1, 1: player2
    private int[] playerScores;

    private GameObject ball;
    public GameObject ballPrefab;
    public Transform[] servePositions;

    /// <summary>
    /// 0: floor, 1: leftWall, 2: rightWall
    /// </summary>
    public GameObject[] boundaries;
    private Material boundMat;
    public Material redMat;

    private void Start() {
        playerScores = new int[2];
        willPlayer1Serve = Random.Range(-1f, 1f) > 0;
        SetGameState(GameState.preparing);
        MakeServe();
    }

    /// <summary>
    /// Serve the ball at either of servePos.
    /// After 2 seconds falls the ball.
    /// </summary>
    private void MakeServe() {
        SetGameState(GameState.makingServe);
        if (WillPlayer1Serve()) {
            ball = Instantiate(ballPrefab, servePositions[0].position, Quaternion.identity);
        } else {
            ball = Instantiate(ballPrefab, servePositions[1].position, Quaternion.identity);
        }
        ball.GetComponent<Rigidbody>().useGravity = false;
        Invoke("EnableBallGrav", 2f);
    }

    /// <summary>
    /// Enable the ball gravity.
    /// </summary>
    private void EnableBallGrav() {
        ball.GetComponent<Rigidbody>().useGravity = true;
        SetGameState(GameState.playing);
    }

    /// <summary>
    /// Ball calls this function when it hits any boundaries.
    /// lastHitPlayer: mark the last hit player who is gonna lose point
    /// boundNum: hit bound number, i.e. 0: leftFloor, 1: rightFloor, 2: leftWall, 3: rightWall
    /// </summary>
    public void OutOfBoundary(Transform lastHitPlayer, int boundNum) {
        if (m_state != GameState.playing) {
            return;
        }

        MeshRenderer boundMesh = boundaries[boundNum].GetComponent<MeshRenderer>();
        boundMat = boundMesh.material;
        boundMesh.material = redMat;
        StartCoroutine(SetMaterial(boundMesh, boundMat, 1f));

        Destroy(ball);
        CheckScore(lastHitPlayer, boundNum);
    }

    /// <summary>
    /// Checks the score after the ball goes out of the boundary.
    /// lastHitPlayer: mark the last hit player who is gonna lose point
    /// boundNum: hit bound number, i.e. 0: leftFloor, 1: rightFloor, 2: leftWall, 3: rightWall
    /// </summary>
    private void CheckScore(Transform lastHitPlayer, int boundNum) {
        SetGameState(GameState.calculatingPoints);
        willPlayer1Serve = !willPlayer1Serve;       //change server

        switch (boundNum) {
            case 0:
                ++playerScores[1];
                break;
            case 1:
                ++playerScores[0];
                break;
            case 2:
            case 3:
                if (lastHitPlayer.tag == "Player1") {
                    ++playerScores[1];
                } else {
                    ++playerScores[0];
                }
                break;
        }

        if (CheckWin())
            return;

        MakeServe();
    }

    /// <summary>
    /// Sets the material.
    /// targetMesh: the meshRenderer which will change its material
    /// mat: Material
    /// delay: delay time
    /// </summary>
    private IEnumerator SetMaterial(MeshRenderer targetMesh, Material mat, float delay) {
        yield return new WaitForSeconds(delay);
        targetMesh.material = mat;
    }

    private bool CheckWin() {
        if (playerScores[0] < 7 && playerScores[1] < 7) {
            return false;
        }

        return true;
    }


    /// <summary>
    /// Set the GameState immediately
    /// This function should be called just after the state has changed
    /// </summary>
    private void SetGameState(GameState newState) {
        m_state = newState;
    }
}