uniform float uTime;

varying vec2 vUv;
varying vec3 vNormal;

void main()
{
    float diff=dot(normalize(vec3(1.)),vNormal);
    
    vec3 a=vec3(.5);
    vec3 b=vec3(.5);
    
    gl_FragColor=vec4(vec3(abs(diff)),1.);
}