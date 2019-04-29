using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ball2PL : Ball {

    private void Start() {
        InitBall();
    }

    private void Update() {
        //LimitSpeed();
    }

    protected override void InitBall() {
        base.InitBall();
    }

    protected override void OnCollisionEnter(Collision other) {
        base.OnCollisionEnter(other);
    }

    protected override void GetBatHit(Collision other) {
        base.GetBatHit(other);
    }

    protected override void SendBoundInfo(GameObject bound) {
        base.SendBoundInfo(bound);
    }
}
