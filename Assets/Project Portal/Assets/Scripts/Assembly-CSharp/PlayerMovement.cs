using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
	public bool mouseLookEnabled;
	public bool isDead;
	public Transform playerCam;
	public Transform orientation;
	public float sensMultiplier;
	public float moveSpeed;
	public float maxSpeed;
	public LayerMask whatIsGround;
	public float counterMovement;
	public float maxSlopeAngle;
	public Transform portalGun;
	public float jumpForce;
}
