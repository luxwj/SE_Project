using UnityEngine;
using System.Collections;

public class AnimationScript : MonoBehaviour {
    
    public bool isRotating = false;

    public Vector3 rotationAngle;
    public float rotationSpeed;
	
	// Update is called once per frame
	void Update () {
        if(isRotating)
        {
            transform.Rotate(rotationAngle * rotationSpeed * Time.deltaTime);
        }
	}
}
