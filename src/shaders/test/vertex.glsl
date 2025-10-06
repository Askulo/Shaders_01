    uniform mat4 projectionMatrix;
    uniform mat4 viewMatrix;
    uniform mat4 modelMatrix;
    uniform float uTime;
    uniform vec2 uFrequency;

    attribute vec3 position;
    attribute vec2 uv;
    varying vec2 vUv;
    varying float vElevation;

    attribute float aRandom;

    void main(){
      vec4 modelMatrixPosition = modelMatrix * vec4(position, 1.0);
      float elevation = sin(modelMatrixPosition.x * uFrequency.x  - uTime) * 0.1;
      elevation += sin(modelMatrixPosition.y * uFrequency.y  - uTime) * 0.1;
      modelMatrixPosition.z += elevation;
      vec4 viewMatrixPosition = viewMatrix * modelMatrixPosition;
      vec4 projectionMatrixPosition = projectionMatrix * viewMatrixPosition;
      gl_Position = projectionMatrixPosition;
      vUv = uv;
      vElevation = elevation;
      
    }