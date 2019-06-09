using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class GameController1PT : GameController {

    public GameObject star;
    public int StartAmount = 3;

    public Transform ballpos;


    public Text score_text;
    public Transform[] startpos;
    public   int Score;
    
    private float newGameTimer;
    private float newGameRate = 0.5f;
    
    public override void StartGame()
    {
       
        Transform[] pos = new Transform[3];
        List<int> index = GetRandomNum(3, startpos.Length);
        for (int i = 0; i < index.Count; i++)
        {
            pos[i] = startpos[index[i]];
        }
        Time.timeScale = 1f;
        newGameTimer = 0f;
        OnePlayerTraining(pos);
    }
    
    private void Update()
    {
        score_text.text = "Score: " + Score;
        newGameTimer += Time.deltaTime;
        if (m_state == GameState.makingServe && newGameTimer > newGameRate) {
            ball.GetComponent<Rigidbody>().velocity = (Vector3.up + Vector3.left) * 10f;
            StartNewRound();
        }
    }

    public List<int> GetRandomNum(int amount,int max)
    {
        List<int> list = new List<int>();
        for (int i = 0; i < max; i++)
        {
            list.Add(i);
        }
        for (int i = 0; i < max-amount; i++)
        {
            list.RemoveAt(Random.Range(0,list.Count));
        }
        return list;
    }

    public void ResetPlayerAndBall() {
        for (int i = 0; i < star_list.Count; i++) {
            Destroy(star_list[i]);
        }
        star_list.Clear();
        SetGameState(GameState.makingServe);
        ball = Instantiate(ballPrefab, ballpos.position, Quaternion.identity);
        ball.GetComponent<Ball>().SetUseGravity(false);
    }

    public List<GameObject> star_list = new List<GameObject>();


    public IEnumerator InstantianteStar(Transform[] pos) {
        yield return new WaitForSeconds(0.5f);
        for (int i = 0; i < StartAmount; i++) {
            star_list.Add(Instantiate(star, pos[i].position, Quaternion.Euler(-90, 0, 0)));
        }
    }

    protected virtual void OnePlayerTraining(Transform[] pos) {
        ResetPlayerAndBall();
        StartCoroutine(InstantianteStar(pos));


    }
    
}
