using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {

    private Rigidbody player;
    public float MoveSpeed;
    public float AngularSpeed;
    public string PlayerOut;


    // Use this for initialization
    void Start () {
        player = this.GetComponent<Rigidbody>();
    }
	
	// Update is called once per frame
	void Update () {
        float X = Input.GetAxis("Horizontal"+PlayerOut);
        float Y = Input.GetAxis("Vertical"+PlayerOut);
        Vector3 nowVel = player.velocity;
        player.velocity = new Vector3(MoveSpeed * X,MoveSpeed * Y,nowVel.z);
        if (Input.GetKey("t"))
        {
            //player.angularVelocity = transform.forward*AngularSpeed ;
            player.transform.Rotate(0, 180, 0);
        }
        
    }
}
