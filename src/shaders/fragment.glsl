uniform float uTime;

varying vec2 vUv;
varying vec3 vNormal;

void main()
{
    float diff=dot(normalize(vec3(1.)),vNormal);
    
    vec3 a=vec3(.5);
    vec3 b=vec3(.5);
    vec3 c=vec3(2.,1.,0.);
    
    vec3 d=vec3(.5,.2,.25);
    float pi=3.1415926535897932384626433832795;
    vec3 color=a+b*cos(2.*pi*(c*diff+d+uTime));
    
    gl_FragColor=vec4(color,1.);
}