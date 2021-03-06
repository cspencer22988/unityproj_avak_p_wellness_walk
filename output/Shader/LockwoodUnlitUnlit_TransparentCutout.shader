Shader "Lockwood/Unlit/Unlit_TransparentCutout" {
	Properties {
		_BaseColor ("Base color", Vector) = (1,1,1,1)
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_Cutoff ("Alpha cutoff", Range(0, 1)) = 0.5
	}
	SubShader {
		Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "AlphaTest" "RenderType" = "TransparentCutout" }
		Pass {
			Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "AlphaTest" "RenderType" = "TransparentCutout" }
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			GpuProgramID 64227
			Program "vp" {
				SubProgram "gles hw_tier00 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1.w = 1.0;
					  tmpvar_1.xyz = _glesVertex.xyz;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform lowp float _Cutoff;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp float alpha_1;
					  lowp vec4 tex_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = texture2D (_MainTex, xlv_TEXCOORD0);
					  tex_2.xyz = tmpvar_3.xyz;
					  lowp float tmpvar_4;
					  tmpvar_4 = tmpvar_3.w;
					  alpha_1 = tmpvar_4;
					  highp float x_5;
					  x_5 = (alpha_1 - _Cutoff);
					  if ((x_5 < 0.0)) {
					    discard;
					  };
					  tex_2.w = alpha_1;
					  gl_FragData[0] = tex_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1.w = 1.0;
					  tmpvar_1.xyz = _glesVertex.xyz;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform lowp float _Cutoff;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp float alpha_1;
					  lowp vec4 tex_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = texture2D (_MainTex, xlv_TEXCOORD0);
					  tex_2.xyz = tmpvar_3.xyz;
					  lowp float tmpvar_4;
					  tmpvar_4 = tmpvar_3.w;
					  alpha_1 = tmpvar_4;
					  highp float x_5;
					  x_5 = (alpha_1 - _Cutoff);
					  if ((x_5 < 0.0)) {
					    discard;
					  };
					  tex_2.w = alpha_1;
					  gl_FragData[0] = tex_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1.w = 1.0;
					  tmpvar_1.xyz = _glesVertex.xyz;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform lowp float _Cutoff;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp float alpha_1;
					  lowp vec4 tex_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = texture2D (_MainTex, xlv_TEXCOORD0);
					  tex_2.xyz = tmpvar_3.xyz;
					  lowp float tmpvar_4;
					  tmpvar_4 = tmpvar_3.w;
					  alpha_1 = tmpvar_4;
					  highp float x_5;
					  x_5 = (alpha_1 - _Cutoff);
					  if ((x_5 < 0.0)) {
					    discard;
					  };
					  tex_2.w = alpha_1;
					  gl_FragData[0] = tex_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "RGB_TINT" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1.w = 1.0;
					  tmpvar_1.xyz = _glesVertex.xyz;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform highp vec3 _BaseColor;
					uniform lowp float _Cutoff;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp float alpha_1;
					  lowp vec4 tex_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = texture2D (_MainTex, xlv_TEXCOORD0);
					  tex_2.w = tmpvar_3.w;
					  tex_2.xyz = (tmpvar_3.xyz * _BaseColor);
					  lowp float tmpvar_4;
					  tmpvar_4 = tex_2.w;
					  alpha_1 = tmpvar_4;
					  highp float x_5;
					  x_5 = (alpha_1 - _Cutoff);
					  if ((x_5 < 0.0)) {
					    discard;
					  };
					  tex_2.w = alpha_1;
					  gl_FragData[0] = tex_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "RGB_TINT" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1.w = 1.0;
					  tmpvar_1.xyz = _glesVertex.xyz;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform highp vec3 _BaseColor;
					uniform lowp float _Cutoff;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp float alpha_1;
					  lowp vec4 tex_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = texture2D (_MainTex, xlv_TEXCOORD0);
					  tex_2.w = tmpvar_3.w;
					  tex_2.xyz = (tmpvar_3.xyz * _BaseColor);
					  lowp float tmpvar_4;
					  tmpvar_4 = tex_2.w;
					  alpha_1 = tmpvar_4;
					  highp float x_5;
					  x_5 = (alpha_1 - _Cutoff);
					  if ((x_5 < 0.0)) {
					    discard;
					  };
					  tex_2.w = alpha_1;
					  gl_FragData[0] = tex_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "RGB_TINT" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1.w = 1.0;
					  tmpvar_1.xyz = _glesVertex.xyz;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform highp vec3 _BaseColor;
					uniform lowp float _Cutoff;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp float alpha_1;
					  lowp vec4 tex_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = texture2D (_MainTex, xlv_TEXCOORD0);
					  tex_2.w = tmpvar_3.w;
					  tex_2.xyz = (tmpvar_3.xyz * _BaseColor);
					  lowp float tmpvar_4;
					  tmpvar_4 = tex_2.w;
					  alpha_1 = tmpvar_4;
					  highp float x_5;
					  x_5 = (alpha_1 - _Cutoff);
					  if ((x_5 < 0.0)) {
					    discard;
					  };
					  tex_2.w = alpha_1;
					  gl_FragData[0] = tex_2;
					}
					
					
					#endif"
				}
			}
			Program "fp" {
				SubProgram "gles hw_tier00 " {
					"!!GLES"
				}
				SubProgram "gles hw_tier01 " {
					"!!GLES"
				}
				SubProgram "gles hw_tier02 " {
					"!!GLES"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "RGB_TINT" }
					"!!GLES"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "RGB_TINT" }
					"!!GLES"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "RGB_TINT" }
					"!!GLES"
				}
			}
		}
	}
	Fallback "Lockwood/Unlit_TextureTint"
}