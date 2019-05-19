using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ball1PL : Ball {

    /// <summary>
    /// get gameController as gameController1PL
    /// </summary>
    protected override void InitBall() {
        m_Rb = GetComponent<Rigidbody>();
        gameController = GameObject.FindWithTag("GameController").GetComponent<GameController1PL>();
    }

    protected override void OnCollisionEnter(Collision other) {
        base.OnCollisionEnter(other);
    }

    protected override void GetBatHit(Collision other) {
        base.GetBatHit(other);
    }

    /// <summary>
    /// Add trigger over detection
    /// </summary>
    protected override void SendBoundInfo(GameObject bound) {
        base.SendBoundInfo(bound);
        
        switch (bound.name) {
            case "Over":
                gameController.OutOfBoundary(lastHitPlayer, 7);
                break;
        }
    }
    
    /// <summary>
    /// Check for trigger over
    /// </summary>
    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Boundary") {
            SendBoundInfo(other.gameObject);
        }
    }
}
