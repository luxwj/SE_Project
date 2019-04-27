using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Ball only moves in 2D form.
/// </summary>
public class Ball : MonoBehaviour {

    private Transform lastHitPlayer;
    private GameController2PL gameController;

    /// <summary>
    /// Awake this instance.
    /// </summary>
    private void Awake() {
        gameController = GameObject.FindWithTag("GameController").GetComponent<GameController2PL>();
    }


    private void OnCollisionEnter(Collision other) {
        if (other.gameObject.tag == "Player1" || other.gameObject.tag == "Player2") {
            lastHitPlayer = other.transform;
        } else if (other.gameObject.tag == "Boundary") {
            SendBoundInfo(other.gameObject);
        }

    }

    /// <summary>
    /// Sends the out and boundary info to game controller.
    /// </summary>
    private void SendBoundInfo(GameObject bound) {
        switch (bound.name) {
            case "LeftFloor":
                gameController.OutOfBoundary(lastHitPlayer, 0);
                break;
            case "RightFloor":
                gameController.OutOfBoundary(lastHitPlayer, 1);
                break;
            case "LeftWall":
                gameController.OutOfBoundary(lastHitPlayer, 2);
                break;
            case "RightWall":
                gameController.OutOfBoundary(lastHitPlayer, 3);
                break;
        }
    }

}
