﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ball1PT : Ball {
    
    public float _speed;
    protected override void InitBall() {
        m_Rb = GetComponent<Rigidbody>();
        gameController = GameController1PT._instance;
    }

    protected override void OnCollisionEnter(Collision other) {
        if (other.gameObject.tag == "Player1") {
            GetBatHit(other);
        } else if (other.gameObject.tag == "Boundary") {
            Destroy(gameObject);
            gameController.StartGame();
        }
    }

    protected override void OnCollisionStay(Collision other) {
        
    }

    /// <summary>
    /// Check for trigger over
    /// </summary>
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag=="Star")
        {
            gameController.OutOfBoundary(transform, 7);
            Destroy(other.gameObject);
        }
         
    }
}
