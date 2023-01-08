#version 110

uniform sampler2D DiffuseSampler;
uniform sampler2D LastLuminosity;

#define SAMPLES     ( 8 )
#define I_SAMPLE    ( 1.0 / float( SAMPLES ) )
#define SAMPLE_STEP ( 1.0 / float( SAMPLES + 2 ) )

#define SMOOTHING   ( 32.0 )

void main() {
  vec3 diffuse = vec3( 0.0 );
  for ( float yy = I_SAMPLE; yy < 1.0 - I_SAMPLE; yy += SAMPLE_STEP ) {
    for ( float xx = I_SAMPLE; xx < 1.0 - I_SAMPLE; xx += SAMPLE_STEP ) {
      diffuse += texture2D( DiffuseSampler, vec2( xx, yy ) ).rgb;
    }
  }
  diffuse /= float( SAMPLES * SAMPLES );

  vec3 last = texture2D( LastLuminosity, vec2( 0.5 ) ).rgb;
  vec3 new = vec3( dot( diffuse, vec3( 0.299, 0.587, 0.114 ) ) );
  gl_FragColor = vec4( mix( last, new, 1.0 / SMOOTHING ), 1.0 );
}
