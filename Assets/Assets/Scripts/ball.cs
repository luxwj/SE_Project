using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ball : MonoBehaviour {
    public float speed = 100;
    private Rigidbody Ball;

    // Use this for initialization
    void Start () {
        Ball = this.GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    public void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.name == "Bat1")
        {
            GameManager.serve = true;
            Vector3 nowVel = Ball.velocity;
            Ball.velocity = new Vector3(speed, speed, nowVel.z);
        }
        if (collision.gameObject.name == "Bat2")
        {
            GameManager.serve = false;
            Vector3 nowVel = Ball.velocity;
            Ball.velocity = new Vector3(-speed, speed, nowVel.z);
        }
        if (collision.collider.tag == "wall")
        {
            Destroy(gameObject);
            GameObject.Find("Gamemanager").GetComponent<GameManager>().Match();
            //Destroy(gameObject);
        }
    }
}
