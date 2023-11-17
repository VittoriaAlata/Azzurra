#version 150

#moj_import <fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform mat3 IViewRotMat;
uniform int FogShape;
uniform vec2 ScreenSize;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

bool isAt(int offset, int vID, int pos) {
	return (((vID == 1 || vID == 2) && offset == pos) || ((vID == 0 || vID == 3) && offset == (pos+8)));
}

void main() {
	vec3 pos = Position;

    vertexDistance = fog_distance(ModelViewMat, IViewRotMat * Position, FogShape);
    vertexColor = Color;
    texCoord0 = UV0;
	
	// get the size of a text pixel
	vec2 pixel = vec2(ProjMat[0][0], ProjMat[1][1]) / 2.0;
	// get the gui scale
	int guiScale = int(round(pixel.x / (1 / ScreenSize.x)));
	// get the size of the gui space
	vec2 guiSize = ScreenSize / guiScale;
	// get the vertex id for each specific character
	int vID = gl_VertexID % 4;
	// get the offset from the bottom 
	int offset = int(round(guiSize.y - Position.y));
	
	// offset hotbar numbers
	//if(Position.z == 200.0 || Position.z > 200.0 && Position.z < 300.0) {
	//	pos -= vec3(6.0,17.0,0.0);
	//}

	// offset xp nubers
	if(Position.z == 0.0
		&& ((length(Color.rgb - vec3(0.501, 1.0, 0.125)) < 0.002 && (isAt(offset, vID, 26) || isAt(offset, vID, 27)))
		|| (length(Color.rgb - vec3(0.0, 0.0, 0.0)) < 0.002 && (isAt(offset, vID, 25) || isAt(offset, vID, 26) || isAt(offset, vID, 27) || isAt(offset, vID, 28))))) {
		pos += vec3(300.0,16.0,0.0);
	}	
	gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);
}
