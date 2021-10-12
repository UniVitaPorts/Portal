using UnityEngine;

public class Door : MonoBehaviour
{
	public Transform door;
	public Animator doorAnim;
	public AudioSource openSound;
	public AudioSource closeSound;
	public Transform DoorLight1;
	public Transform DoorLight2;
	public Material newDoorLightMat;
	public bool isOpened;
}
