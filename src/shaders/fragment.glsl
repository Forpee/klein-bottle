uniform float uTime;

varying vec2 vUv;
varying vec3 vNormal;

void main()
{
    float diff=dot(vec3(1.),normalize(vNormal));
    gl_FragColor=vec4(vec3(diff),1.);
}