varying vec2 vUv;
varying vec3 vNormal;
uniform float uTime;

attribute vec3 position1;

void main()
{
    // vec4 mvPosition=modelViewMatrix*vec4(position,1.);
    // gl_PointSize=100.*(1./-mvPosition.z);
    
    vec3 final=mix(position,position1,.5+.5*sin(uTime));
    
    vNormal=normal;
    gl_Position=projectionMatrix*modelViewMatrix*vec4(final,1.);
    
    vUv=uv;
}