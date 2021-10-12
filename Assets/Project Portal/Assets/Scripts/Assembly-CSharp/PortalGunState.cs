using UnityEngine;

public class PortalGunState : MonoBehaviour
{
	public bool inPauseMenu;
	public Material bluePortal;
	public Material orangePortal;
	public Transform energyTube;
	public Transform energySphere;
	public Light energyBlueLight;
	public Light energyOrangeLight;
	public int compteur;
	public bool rightPortal_isPlaced;
	public bool leftPortal_isPlaced;
	public Animator animator;
	public bool hasEnded;
	public bool canShoot;
	public bool isDisabled;
}
