using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using UnityEngine.UI;
using System.Xml;
using UnityEngine.SceneManagement;
/// <summary>
/// xml制作登陆界面
/// </summary>
public class UIB_Interface : MonoBehaviour
{


    #region 私有变量区

    /// <summary>
    /// 保存的xml文件路径
    /// </summary>
    private string xmlPath;

    #endregion

    #region Start初始化方法
    // Use this for initialization
    void Start()
    {

        xmlPath = Application.dataPath + "/UserInfoBase.xml";


        if (!File.Exists(xmlPath))
        {

            XmlDocument xmlDoc = new XmlDocument();//创建xml 对象
            XmlElement root = xmlDoc.CreateElement("Root");//创建根节点
            xmlDoc.AppendChild(root);//添加根节点

            XmlElement user = xmlDoc.CreateElement("User");//创建子节点
            //向子节点里面添加内容
            user.SetAttribute("user_name", "XYCZ");
            user.SetAttribute("user_pass", "123456");
            root.AppendChild(user);//将设置的内容添加上去
            xmlDoc.Save(xmlPath);//保存xml文件

        }


    }

    #endregion

    #region 退出方法
    public void Quit()
    {
#if UNITY_EDITOR
        //在编译器模式下退出
        UnityEditor.EditorApplication.isPlaying = false;
#else
        Application.Quit();//发布之后退出的方法
#endif

    }

    #endregion



    #region 校验注册界面用户信息显示提示

    public bool RegiterCheck(string userName, string userPW)
    {

        #region 用户名被使用过了

        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load(xmlPath);
        XmlNodeList xmlList = xmlDoc.SelectSingleNode("Root").ChildNodes;//返回根节点下面的所以子节点

        foreach (XmlElement item in xmlList)
        {
            if (item.GetAttribute("user_name") == userName)
            {

                return false;
            }
        }


        #endregion

        #region 保存注册信息

        XmlNode root = xmlDoc.SelectSingleNode("Root");
        XmlElement user = xmlDoc.CreateElement("user");

        user.SetAttribute("user_name", userName);
        user.SetAttribute("user_pass", userPW);
        root.AppendChild(user);
        xmlDoc.Save(xmlPath);


        return true;

        #endregion


    }
    #endregion

    #region 登陆按钮监听的事件

    public bool LoginCheck(string userName, string userPW)
    {


        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load(xmlPath);
        XmlNodeList nodeList = xmlDoc.SelectSingleNode("Root").ChildNodes;


        foreach (XmlElement item in nodeList)
        {
            if (item.GetAttribute("user_name") == userName)
            {
                var pass = item.GetAttribute("user_pass");

                if (userPW == pass)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }

        }
        return false;

    }
    #endregion
}
