using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Login_Controller : MonoBehaviour
{

    private IUIB_System iUIB_System;
    private Login_UI m_Login_UI;

    private void Start()
    {
        Init();
        m_Login_UI = GetComponent<Login_UI>();
    }

    private void Init()
    {
        iUIB_System = GetComponent<UIBFacade>() as IUIB_System;
    }


    public bool RegisterGame()
    {
        string userName;
        string userPW;
        userName = m_Login_UI.inputAccount.text;
        userPW = m_Login_UI.inputPassword.text;
        return iUIB_System.Regist(userName, userPW);

    }

    public bool LoginGame()
    {
        string userName;
        string userPW;
        userName = m_Login_UI.inputLoginAccountt.text;
        userPW = m_Login_UI.inputLoginPassword.text;
        return iUIB_System.Login(userName, userPW);


    }

}

