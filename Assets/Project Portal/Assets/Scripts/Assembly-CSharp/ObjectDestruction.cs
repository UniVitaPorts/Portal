using UnityEngine;

public class ObjectDestruction : MonoBehaviour
{
	public ParticleSystem DestructionParticle;
	public Transform spawnPosition;
	public bool isDestroyed;
	public bool hasRespawned;
	public Color colorStart;
	public Color colorEnd;
	public Renderer rend;
}
