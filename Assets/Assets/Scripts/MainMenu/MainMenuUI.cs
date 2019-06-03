using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenuUI : MonoBehaviour {

	/// <summary>
	/// Called when any of the game buttons are clicked
	/// num = SceneIndexNum
	/// </summary>
	public void OnGameButtonClick(int num) {
		SceneManager.LoadScene(num);
	}
	
	/// <summary>
	/// Called when exit button is clicked
	/// </summary>
	public void OnExitButtonClick() {
#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
#else
        Application.Quit();
#endif
	}
}
