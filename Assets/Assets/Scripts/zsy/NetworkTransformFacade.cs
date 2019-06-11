using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class NetworkTransformFacade : NetworkBehaviour, INetworkTransform
{
    private NetworkTransformOutInterface m_NetworkTransformOutInterface;

    private void Start()
    {
        Init();
    }

    private void Init()
    {
        m_NetworkTransformOutInterface = GetComponent<NetworkTransformOutInterface>();
    }


    public void SetInput(float h, float v, bool bat)
    {
        Debug.Log("2");
        m_NetworkTransformOutInterface.SetClientinput(h, v, bat);
    }
}