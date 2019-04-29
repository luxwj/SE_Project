using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Player2PL : Player {

    private void Start() {
        InitPlayer();
    }

    private void Update() {
        Move();
        Bat();
    }

    protected override void InitPlayer() {
        base.InitPlayer();
    }

    protected override void Move() {
        base.Move();
    }

    protected override void Bat() {
        base.Bat();
    }

    protected override void CheckMoveBoundary() {
        base.CheckMoveBoundary();
    }

    public override void ResetBatState() {
        base.ResetBatState();
    }
}
