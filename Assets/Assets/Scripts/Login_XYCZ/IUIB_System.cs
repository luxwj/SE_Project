using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public interface IUIB_System
{

    /// <summary>
    /// if userName already exist, return false, else return true
    /// </summary>
    bool Regist(string userName, string userPW);

    /// <summary>
    /// if userName does not exist or pw is false, return false, else return true
    /// </summary>
    bool Login(string userName, string userPW);
}