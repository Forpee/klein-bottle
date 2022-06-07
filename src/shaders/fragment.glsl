uniform float uTime;

varying vec2 vUv;
varying vec3 vNormal;

void main()
{
    float diff=dot(normalize(vec3(1.)),vNormal);
    gl_FragColor=vec4(vec3(abs(diff)),1.);
}