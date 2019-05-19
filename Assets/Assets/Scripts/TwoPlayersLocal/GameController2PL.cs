using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameController2PL : GameController {

    protected override void InitGame() {
        base.InitGame();
    }

    protected override void MakeServe() {
        base.MakeServe();
    }

    protected override void CheckScore(Transform lastHitPlayer, int boundNum) {
        base.CheckScore(lastHitPlayer, boundNum);
    }

    protected override bool CheckWin() {
        return base.CheckWin();
    }
}
