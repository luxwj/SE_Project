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

    /// <summary>
    /// 查看个人信息
    /// </summary>
    public Text labelInfo;

    #endregion

    #region 私有变量区

    /// <summary>
    /// 按钮实例化，
    /// </summary>
    private GameObject btnPrint1;
    private GameObject btnPrint2;
    private GameObject btnPrint3;
    private GameObject btnPrint4;


    #endregion

    private Login_Controller m_Login_Controller;

    // Use this for initialization
    void Start()
    {
        //引用Login_Controller类的变量
        m_Login_Controller = GetComponent<Login_Controller>();

        //查找要实例化的按钮；
        //按钮click后运行的函数；
        btnPrint1 = GameObject.Find("Canvas/but_register");
        btnPrint1.GetComponent<Button>().onClick.AddListener(RegiterUser);

        btnPrint2 = GameObject.Find("Canvas/but_login");
        btnPrint2.GetComponent<Button>().onClick.AddListener(LoginUser);

        btnPrint3 = GameObject.Find("Canvas/but_seeinfo");
        btnPrint3.GetComponent<Button>().onClick.AddListener(SeeInfo);

        btnPrint4 = GameObject.Find("Canvas/but_return");
        btnPrint4.GetComponent<Button>().onClick.AddListener(ReturnMainMenu);

    }



    #region 注册按钮监听的事件
    //click register button 
    public void RegiterUser()
    {
        labelInfo.text = "";

        //信息不完整
        if (inputAccount.text == "" || inputPassword.text == "")
        {
            OpenAlertPanel("信息不完整");
            return;

        }

        //根据RegisterGame()返回的布尔结果，显示注册结果
        if (m_Login_Controller.RegisterGame())
            OpenAlertPanel("恭喜，注册成功！");
        else
            OpenAlertPanel("用户名已经被占用！");

        //清空Text
        inputAccount.text = "";
        inputPassword.text = "";
    }
    #endregion

    #region 登录按钮监听的事件
    //click login button 
    public void LoginUser()
    {
        labelInfo.text = "";

        //信息不完整
        if (inputLoginAccountt.text == "" || inputLoginPassword.text == "")
        {
            OpenAlertPanel("用户名或者密码不能为空");
            return;
        }

        //根据LoginGame()返回的布尔结果，显示登录结果
        if (m_Login_Controller.LoginGame())
        {
            OpenAlertPanel("登陆成功！");
            PlayerPrefs.SetString("userlogin", inputLoginAccountt.text);
        }
        else
        { OpenAlertPanel("账号或密码错误"); }
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

    #region 返回主菜单

    /// <summary>
    /// 返回主菜单
    /// </summary>
    public void ReturnMainMenu()
    {
        labelInfo.text = "";
        SceneManager.LoadScene("MainMenu");
    }

    #endregion

    #region 查看个人信息

    /// <summary>
    /// 查看个人信息
    /// </summary>
    public void SeeInfo()
    {
        if (m_Login_Controller.LoginGame())
        {
            labelInfo.text = "用户名：" + inputAccount.text+"\n"+"密码："+ inputLoginPassword.text;
        }
    }

    #endregion
}
