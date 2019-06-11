using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class Login_user_xycz : MonoBehaviour {

    //名字提示框
    public Text labeluser;

    // Use this for initialization
    void Start () {
        string userName="";
        userName = PlayerPrefs.GetString("userlogin");
        labeluser.text = "用户名：" + userName;
        PlayerPrefs.DeleteKey("userlogin");
    }
	
}
