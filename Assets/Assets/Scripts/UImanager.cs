using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class UImanager : MonoBehaviour
{
	public Text ScoreBoard;
	public int score = 0;
	// Start is called before the first frame update
	public void ClearScore()
	{
		score = 0;



	}
	public GameObject newImage;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
		score += 1;
		ScoreBoard.text = score.ToString();
		if (score > 100)
		{
			newImage.SetActive(true);
		}

    }
}
