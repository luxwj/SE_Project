using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ball1PT : Ball {
    
    public float _speed;
    protected override void InitBall() {
        m_Rb = GetComponent<Rigidbody>();
        gameController = GameObject.FindWithTag("GameController").GetComponent<GameController1PT>();
        m_Rb.AddForce((Vector3.up - Vector3.right) * _speed, ForceMode.VelocityChange);
    }

    protected override void OnCollisionEnter(Collision other) {
        if (other.gameObject.tag == "Player1") {
            GetBatHit(other);
        } else if (other.gameObject.tag == "Boundary") {
            Destroy(gameObject);
            GameController1PT._instance.StartGame();
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
            
            GameController1PT._instance.Score++;
            Destroy(other.gameObject);
        }
         
    }
}
