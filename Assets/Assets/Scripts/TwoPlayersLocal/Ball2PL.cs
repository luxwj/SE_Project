using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ball2PL : Ball {

    protected override void OnCollisionEnter(Collision other) {
        if (other.gameObject.tag == "Player1" || other.gameObject.tag == "Player2") {
            lastHitPlayer = other.transform;
            GetBatHit(other);
        } else if (other.gameObject.tag == "Boundary") {
            SendBoundInfo(other.gameObject);
        }
    }

    protected override void GetBatHit(Collision other) {
        ContactPoint contactPoint = other.contacts[0];
        Vector3 curDir = m_Rb.velocity.normalized;
        Vector3 newDir = Vector3.Reflect(curDir, contactPoint.normal);
        Quaternion rotation = Quaternion.FromToRotation(Vector3.forward, newDir);
        transform.rotation = rotation;
        m_Rb.velocity = newDir.normalized * m_Rb.velocity.magnitude * 3f;
    }

    protected override void SendBoundInfo(GameObject bound) {
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
