    precision mediump float;


  uniform vec3 uColor;
  varying vec2 vUv;
  varying float vElevation;
  uniform sampler2D uTexture;

    
   varying float vRandom;

    void main(){
        vec4 textureColor = texture2D(uTexture, vUv);
        textureColor.rgb *= vElevation * 2.0 + 0.5;
    gl_FragColor = textureColor;
}