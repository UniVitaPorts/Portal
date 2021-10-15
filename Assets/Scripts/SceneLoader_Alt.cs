using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class SceneLoader_Alt : MonoBehaviour {

	public Button yourButton;
	public GameObject enterText;
    public string levelToLoad;

	void Start () {
		Button btn = yourButton.GetComponent<Button>();
		btn.onClick.AddListener(TaskOnClick);
		enterText.SetActive(false);
	}

	void TaskOnClick(){
		Debug.Log ("You have clicked the button!");
		enterText.SetActive(true);
        SceneManager.LoadScene(levelToLoad);
	}
}
