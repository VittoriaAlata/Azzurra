vec2 texCord = texCoord0;
ivec2 block = ivec2(texCord);
bool variate;
vec2 offset = vec2(0);
vec4 modulator = vec4(1);

    offset = vec2(8.55,4.7);

color = texture(Sampler0, (texCord - block + offset) / 5) * vertexColor * modulator;
