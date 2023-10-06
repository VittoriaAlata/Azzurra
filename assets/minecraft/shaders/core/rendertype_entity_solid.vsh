#version 150

#moj_import <light.glsl>
#moj_import <fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler2;
uniform sampler2D Sampler0;
uniform float GameTime;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform vec3 ChunkOffset;
uniform int FogShape;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out vec4 normal;

#define pi 3.1415926535897932
#define x 2

void main() {
	vec3 pos = Position + ChunkOffset;
    vec3 position = (Position / 2.0) * pi;
    float animation = GameTime * 4500.0;
    bool hasCape = textureSize(Sampler0, 0) == ivec2(64,32);

    float xs = 0.0;
    float ys = 0.0;
    float zs = 0.0;
    float m0 = distance(Position.yz, vec2(8.0, 8.0)) * 7.0;
	float alpha = texture(Sampler0, UV0).a * 255.0;
        //xs = sin(position.x + animation);
        //zs = cos(position.z + position.y + animation);
        //xs = sin(position.x + animation) * cos(GameTime * 300);
        //ys = cos(m0 + animation) * 0.65;
        //zs = cos(position.z + animation) * sin(GameTime * 300);
    if (hasCape) {
        ////xs = cos(animation + m0 - position.x) * 2.1415926535897932;
        ///xs = cos(x + animation) * cos(x * 3) * cos(x * 7) * 1.0 + sin(x * 25) * 1;        
        ///xs = sin(position.z + animation) * cos(GameTime * 300);
        xs = cos(position.y + m0 + animation) * 2.10 / 1.0 * cos(GameTime * 1000);
        //xs = cos(animation + position.z + m0 * cos(3) + cos(5) + cos(7)) + 0.01;
        //xs = cos(10 + m0 + animation);
    }
        

    gl_Position = ProjMat * ModelViewMat * (vec4(pos, 1.0) + vec4(xs / 32.0, ys / 24.0, zs / 32.0, 0.0));

    vertexDistance = fog_distance(ModelViewMat, pos, FogShape);
    vertexColor = Color * minecraft_sample_lightmap(Sampler2, UV2);
    texCoord0 = UV0;
    normal = ProjMat * ModelViewMat * vec4(Normal, 0.0);
}
