Shader "Shader Graphs/DeathField" {
	Properties {
		Vector1_5612597 ("RippleDensity", Float) = 5
		Vector1_92C87FD0 ("RippleSlimness", Float) = 5
		[HDR] Color_BD1C4EE ("RippleColor", Vector) = (1.813691,0.9073501,0.8982906,0)
		Vector1_ACA3D259 ("Offset", Float) = 0.5
		[HDR] Color_61A445CA ("Emission", Vector) = (4,0.4331768,0.3979058,0)
		Vector1_E9E6238E ("NoiseSpeed", Float) = 0.3
		Vector1_5CA19ABE ("RippleSpeed", Float) = 0.8
		Color_824EE59 ("BaseColor", Vector) = (0.6792453,0.1332621,0.1121395,0.1960784)
		Color_806D0909 ("InterferenceColor", Vector) = (0.4245283,0.09011215,0.09011215,0.07843138)
	}
	
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard fullforwardshadows
#pragma target 3.0
		sampler2D _MainTex;
		struct Input
		{
			float2 uv_MainTex;
		};
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
		}
		ENDCG
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	//CustomEditor "UnityEditor.ShaderGraph.PBRMasterGUI"
}