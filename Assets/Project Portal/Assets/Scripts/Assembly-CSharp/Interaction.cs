using UnityEngine;

public class Interaction : MonoBehaviour
{
	public Transform player;
	public float distance;
	public float distanceAttraction;
	public bool isPickable;
	public bool isCarried;
	public string holdedObject;
	public Vector3 velocityCube;
	public Transform attractedTo;
	public float moveSpeed;
}
