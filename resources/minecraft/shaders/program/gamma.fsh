#version 110

uniform sampler2D DiffuseSampler;
uniform sampler2D Luminosity;

uniform vec2 OutSize;
uniform vec2 InSize;

varying vec2 texCoord;

#define AVERAGE_LUMINOSITY  ( 0.5 )

vec3 gammaCorrection( vec3 colour, float gamma ) {
  return pow( colour, vec3( 0.8 / gamma ) );
}

void main() {
  vec2 scale = InSize / OutSize;

  float luminosity = texture2D( Luminosity, vec2( 0.5, 0.5 ) ).r;
  float luminosityDifference = AVERAGE_LUMINOSITY - luminosity;

  vec3 diffuse = texture2D( DiffuseSampler, texCoord * scale ).rgb;
  gl_FragColor = vec4( gammaCorrection( diffuse, 1.0 + luminosityDifference ), 1.0 );
}
