
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