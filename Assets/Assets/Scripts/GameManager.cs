using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {
    public Transform startplayer1;
    public Transform startplayer2;
    public GameObject Ballprefeb;
    public static bool serve = false;

    //private bool isover = false;
    private int MatchNO=1;

    //private RubberBall1 currentball;

    // Use this for initialization
    void Start () {
        GameObject.Instantiate(Ballprefeb, startplayer1.position, Ballprefeb.transform.rotation);
    }
	
    void BallServe(int n)
    {
        serve = (n % 2 == 0) ? true : false;
        if (serve)
        {
            GameObject.Instantiate(Ballprefeb, startplayer2.position, Ballprefeb.transform.rotation);
        }
        else
        {
            GameObject.Instantiate(Ballprefeb, startplayer1.position, Ballprefeb.transform.rotation);
        }
    }
	// Update is called once per frame
	void Update () {
       
	}
    public void Match()
    {
        //if (isover) return;
        //isover = true;
        MatchNO += 1;
        //SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        BallServe(MatchNO);
    }
}
