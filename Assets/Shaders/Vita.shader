Shader "Vita/MobileLitAlphaTint" {
    // Unity built-in shader source. Copyright (c) 2016 Unity Technologies. MIT license (see license.txt)

// Simplified Bumped Specular shader. Differences from regular Bumped Specular one:
// - no Main Color nor Specular Color
// - specular lighting directions are approximated per vertex
// - writes zero to alpha channel
// - Normalmap uses Tiling/Offset of the Base texture
// - no Deferred Lighting support
// - no Lightmap support
// - fully supports only 1 directional light. Other lights can affect it, but it will be per-vertex/SH.

    Properties{
        _Color("Color Tint", Color) = (1,1,1,1)
        _MainTex("Base (RGB) Alpha (A)", 2D) = "white" {}
        _Cutoff("Alpha Cutoff", float) = 0.5
    }
        SubShader{
           Tags {"Queue" = "Transparent" "IgnoreProjector" = "True" "RenderType" = "TransparentCutout"}
            LOD 250
        Blend SrcAlpha OneMinusSrcAlpha
        CGPROGRAM
        #pragma surface surf mobileBlinnPhong_Prepass fullforwardshadows alphatest:_Cutout


        inline half4 LightingmobileBlinnPhong_Prepass(SurfaceOutput s, half3 lightDir, half3 halfDir, half atten)
        {
            half diff = max(0, dot(s.Normal, lightDir));

            half4 c;
            c.rgb = (s.Albedo * _LightColor0.rgb * diff)* atten;// +_LightColor0.rgb * spec)* atten;
            c.a = s.Alpha;
            return c;
        }

        sampler2D _MainTex;
        half4 _Color;

        struct Input {
            float2 uv_MainTex;
            half4 color;
        };

        void surf(Input IN, inout SurfaceOutput o) {
            half4 tex = tex2D(_MainTex, IN.uv_MainTex) * _Color;
            o.Albedo = tex.rgb;
            o.Alpha = tex.a;// tex.a;
        }
        ENDCG
        }
}