using System.Collections;
using System.Collections.Generic;
using UnityEngine;
//Add something
using UnityEngine.UI;

public class UIManager : MonoBehaviour {

	public Text scoreBoard;

	public int number = 0;

	public GameObject newImage;

	void Update()
	{
		number+=1;
		scoreBoard.text = number.ToString();
		if (number > 100) {
			newImage.SetActive(true);
		}
	}
    public void ClearScore()
	{
		number = 0;
 
	}
}