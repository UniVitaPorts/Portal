using UnityEngine;
using System.Collections.Generic;

public class EnablePortalGun : MonoBehaviour
{
	public Transform portalGun;
	public GameObject standPortalGun;
	public Transform player;
	public Door doorScript;
	public AudioSource powerUpSound;
	public List<Transform> portalGunChild;
}
