Shader "Shader Graphs/Field" {
	Properties {
		Color_899A4B4C ("BaseColor", Vector) = (0.2216981,0.8428237,1,0.1960784)
		Vector1_F52D1307 ("RippleSpeed", Float) = 0.8
		Vector1_693C5611 ("RippleDensity", Float) = 5
		Vector1_4A4CFC53 ("RippleSlimness", Float) = 5
		[HDR] Color_F13F5731 ("RippleColor", Vector) = (1.145098,1.756863,2,0)
		Vector1_24EBF20A ("Offset", Float) = 0.5
		[HDR] Color_FB128FBD ("Emission", Vector) = (0.3962264,2.811467,4,0)
		Vector1_3D119CCF ("NoiseSpeed", Float) = 0.01
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