using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Login_Controller : MonoBehaviour
{

    private IUIB_System iUIB_System;//接口
    private Login_UI m_Login_UI;//Login_UI类

    private void Start()
    {
        Init();
        m_Login_UI = GetComponent<Login_UI>();
    }

    private void Init()
    {
        iUIB_System = GetComponent<UIBFacade>() as IUIB_System;
    }

    /// <summary>
    /// 根据Login_UI得到的用户名和密码，进行注册
    /// </summary>
    public bool RegisterGame()
    {
        string userName;
        string userPW;
        userName = m_Login_UI.inputAccount.text;
        userPW = m_Login_UI.inputPassword.text;
        return iUIB_System.Regist(userName, userPW);

    }


    /// <summary>
    /// 根据Login_UI得到的用户名和密码，进行登录
    /// </summary>
    public bool LoginGame()
    {
        string userName;
        string userPW;
        userName = m_Login_UI.inputLoginAccountt.text;
        userPW = m_Login_UI.inputLoginPassword.text;
        return iUIB_System.Login(userName, userPW);


    }

}

