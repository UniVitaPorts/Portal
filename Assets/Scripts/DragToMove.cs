using UnityEngine;
using System.Collections;

public class DragToMove : MonoBehaviour {
	bool dragging;
	Vector3 start;
	Vector3 movement;
	public float speed;
	public float smooth;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(dragging) {
			movement = start - GetComponent<Camera>().ScreenToViewportPoint(Input.mousePosition);
			movement *= speed;
			start = GetComponent<Camera>().ScreenToViewportPoint(Input.mousePosition);
		}
		transform.position = Vector3.Lerp (transform.position, transform.position + new Vector3(movement.x,0,movement.y), Time.deltaTime * smooth);
	}
	
	void OnMouseDown() {
		dragging = true;
		start = GetComponent<Camera>().ScreenToViewportPoint(Input.mousePosition);
	}
	
	void OnMouseUp() {
		dragging = false;
	}
}
