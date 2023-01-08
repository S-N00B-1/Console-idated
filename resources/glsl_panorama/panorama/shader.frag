uniform sampler2D image;
uniform float time;
uniform vec2 resolution;

out vec4 fragment;

void main() {
    vec2 texCoord = -gl_FragCoord.xy / resolution;
    
    texCoord.x = 1.0 - texCoord.x;
    
    float aspectRatio = 0.3;
    texCoord.x *= aspectRatio;
    
    float scrollSpeed = 0.02;
    float scrollOffset = time * scrollSpeed;
    
    vec2 texCoordScrolled = texCoord + vec2(scrollOffset, 0.0);
    
    fragment = texture2D(image, texCoordScrolled);
}
