using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class Login_UI : MonoBehaviour
{

    #region 公共变量声明区
    /// <summary>
    /// 提示框的文字
    /// </summary>
    public Text labelAlert;

    /// <summary>
    /// 注册的账户信息
    /// </summary>
    public InputField inputAccount;

    /// <summary>
    /// 注册账户的密码信息
    /// </summary>
    public InputField inputPassword;

    /// <summary>
    /// 登陆时的账户输入栏
    /// </summary>
    public InputField inputLoginAccountt;

    /// <summary>
    /// 登陆时的密码栏
    /// </summary>
    public InputField inputLoginPassword;
    #endregion

    #region 私有变量区

    private GameObject btnPrint1;
    private GameObject btnPrint2;


    #endregion

    private Login_Controller m_Login_Controller;

    // Use this for initialization
    void Start()
    {
        m_Login_Controller = GetComponent<Login_Controller>();

        btnPrint1 = GameObject.Find("Canvas/but_register");
        btnPrint1.GetComponent<Button>().onClick.AddListener(RegiterUser);

        btnPrint2 = GameObject.Find("Canvas/but_login");
        btnPrint2.GetComponent<Button>().onClick.AddListener(LoginUser);
    }

    // Update is called once per frame
    void Update()
    {
        //m_Login_Controller.mm123();

    }

    #region 校验注册界面用户信息显示提示
    //click register button 
    public void RegiterUser()
    {

        //信息不完整
        if (inputAccount.text == "" || inputPassword.text == "")
        {
            OpenAlertPanel("信息不完整");
            return;

        }

        if (m_Login_Controller.RegisterGame())
            OpenAlertPanel("恭喜，注册成功！");
        else
            OpenAlertPanel("用户名已经被占用！");

        inputAccount.text = "";
        inputPassword.text = "";
    }
    #endregion

    #region 登陆按钮监听的事件

    public void LoginUser()
    {
        if (inputLoginAccountt.text == "" || inputLoginPassword.text == "")
        {
            OpenAlertPanel("用户名或者密码不能为空");
            return;
        }

        if (m_Login_Controller.LoginGame())
            OpenAlertPanel("登陆成功！");
        else
            OpenAlertPanel("账号或密码错误");
    }
    #endregion

    #region 打开提示框信息

    /// <summary>
    /// 打开提示框
    /// </summary>
    public void OpenAlertPanel(string str)
    {
        //需要显示提示框情况：
        //一：在登陆界面情况
        //1.未输入任何东西点击登陆界面
        //2.输入了但是密码不对
        //3.输入未完整的信息
        //4.提示登陆成功

        //二：在注册界面情况
        //1.信息没有填写完整
        //2.用户名重复
        //3.提示完成注册

        labelAlert.text = str;
    }

    #endregion
}
