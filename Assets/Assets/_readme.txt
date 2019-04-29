
注意事项：
1.  继承时需要重写的函数
    a.  GameController
        InitGame(), MakeServe(), CheckScore(), CheckWin()
    b.  Player
        InitPlayer(), Move(), Bat(), CheckMoveBoundary(), ResetBatState()
    c.  Ball
        InitBall(), OnCollisionEnter(), GetBatHiit(), SendBoundInfo()