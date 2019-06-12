using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// IUIB_System 通过 UIBFacade实现；
/// </summary>

public class UIBFacade : MonoBehaviour, IUIB_System
{
    //调用UIB_Interface类的方法
    private UIB_Interface m_UIB_Interface;

    void Start()
    {
        m_UIB_Interface = GetComponent<UIB_Interface>();
    }
    public bool Regist(string userName, string userPW)
    {
        return m_UIB_Interface.RegiterCheck(userName, userPW);//返回.RegiterCheck(userName, userPW)的布尔值
    }

    public bool Login(string userName, string userPW)
    {
        return m_UIB_Interface.LoginCheck(userName, userPW);//返回.LoginCheck(userName, userPW)的布尔值
    }

}

