
羽毛球大乱斗V1.2更新日志
1. 本地单人开发完成，Agent神经网络待强化

2. 名称调整:
    a. 全局：Player类全部重命名为PlayerBat类
    b. 本地单人：MLAgentsInterface中GetAgentInput重命名为GetAgentOutput
    
3. 逻辑调整:
    a. 全局：游戏结束时重置球拍，不要让球拍移动
    b. 本地单人：现在Agent输出传给controller而不是直接给playerBat了


羽毛球大乱斗V1.1更新日志
1. Package: 导入ML Agents包

2. 逻辑调整
    a. 发球x坐标变为随机位置，y坐标固定并稍有提高
    b. 所有类的Start()和Update()方法写在父类中，Start调用可重写的Init函数
    c. player的移动和挥拍写在FixedUpdate而不是Update中
    
3. 加入本地单人游戏

4. 修改本地双人游戏
    a. 更新backup场景
    

羽毛球大乱斗V1.0

注意事项：
1.  继承时需要重写的函数
    a.  GameController
        InitGame(), MakeServe(), CheckScore(), CheckWin()
    b.  Player
        InitPlayer(), Move(), Bat(), CheckMoveBoundary(), ResetBatState()
    c.  Ball
        InitBall(), OnCollisionEnter(), GetBatHiit(), SendBoundInfo()
    d.  UIController
        InitUI(), UpdateScore(), OnStartButtonClicked(), OnPauseButtonClicked(), 
        OnResumeButtonClicked(), OnRestartButtonClicked(), OnExitButtonClicked(), 
        OnGameEnd()
        
2.  场景重新加载后的光照问题
    a.  描述：unity默认实时光照，重新加载后光照没有烘焙
    b.  解决：在自己的场景下，点击菜单中Window->Lighting，最底部Auto Generate取消勾选，
        再点击右边Generate Lighting，生成光照信息保存在本地
        
3.  ML-Agent报错问题
    a.  描述：console报ML-Agent的错误
    b.  解决：File->Build Setting->Player Settings->Other Settings->Configuration->Scripting Runtime Version
        换成.NET 4.x Eqivalent
        
4. Input Axis报错问题
    a.  描述console报"Horizontal1", "Horizontal2"相关的错误
    b.  解决：Edit->Project Settings->Input, 将Input Manager中的Axis数修改为原数字+4, 例如将18修改为22
        将最后多出来的四个分别命名为Horizontal1, Vertical1, Horizontal2, Vertical2
        首先将原本Horizontal和Vertical中的属性照搬过来，之后将：
            Horizontal1中的的Alt Negative Button, Alt Positive Button清空, Negative Button和Positive Button分别输入a, d
            Vertical1中的的Alt Negative Button, Alt Positive Button清空, Negative Button和Positive Button分别输入s, w
            Horizontal2中的的Alt Negative Button, Alt Positive Button清空, Negative Button和Positive Button分别输入left, right
            Vertical2中的的Alt Negative Button, Alt Positive Button清空, Negative Button和Positive Button分别输入down, up