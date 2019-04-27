using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class rotate : MonoBehaviour {
    private Quaternion targetRotation;
    private float origionY;
    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKey("t"))
        {
            origionY = transform.rotation.x;
            targetRotation = Quaternion.Euler(360 + origionY, 0, 0) * Quaternion.identity;
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, Time.deltaTime * 1);
        }
    }
}
