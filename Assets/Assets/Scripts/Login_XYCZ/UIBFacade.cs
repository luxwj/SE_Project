using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIBFacade : MonoBehaviour, IUIB_System
{

    private UIB_Interface m_UIB_Interface;

    void Start()
    {
        m_UIB_Interface = GetComponent<UIB_Interface>();
    }
    public bool Regist(string userName, string userPW)
    {
        return m_UIB_Interface.RegiterCheck(userName, userPW);
    }

    public bool Login(string userName, string userPW)
    {
        return m_UIB_Interface.LoginCheck(userName, userPW);
    }

}

