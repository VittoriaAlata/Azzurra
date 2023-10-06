#version 150

#moj_import <font.glsl>
#moj_import <utils.glsl>

in vec4 vertexColor;

uniform vec4 ColorModulator;

out vec4 fragColor;

void main() {
    vec4 color = vertexColor;
    if (color.a == 0.0) {
        discard;
    }
    if (distance(color.rgb, vec3(16 / 255.0)) < 0.01) {
        vec4 textColor = mix(vec4(1), vertexColor, 0.7);
        vec4 backgroundColor = vertexColor;

        ivec2 pixel = ivec2(gl_FragCoord.xy);
        ivec2 offset = pixel - ivec2(10, 65);
        if (offset.x >= 0 && offset.y >= 0 && offset.x < 622 && offset.y < 12) {
            uint[] TEXT = uint[](_P, _G, _SPACE, _P, _A, _C, _K, _SPACE, _M, _A, _D, _E, _SPACE, _B, _Y, _SPACE, _P, _G, _USCORE, _C, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE);
            for (int i = 0; i < 52; i++) {
                int startX = i * 12;
                int endX = startX + 10;
                if (offset.x < endX) {
                    bool pixelOn = getPixel(TEXT[i], (offset.x - startX) / 2, offset.y / 2);
                    fragColor = pixelOn ? textColor : backgroundColor;
                    break;
                } else if (offset.x < endX + 2) {
                    fragColor = backgroundColor;
                    break;
                }
            }
            return;
        }

        offset = pixel - ivec2(10, 45);
        if (offset.x >= 0 && offset.y >= 0 && offset.x < 514 && offset.y < 12) {
            uint[] TEXT = uint[](_F, _O, _R, _SPACE, _D, _O, _W, _N, _L, _O, _A, _D, _SPACE, _A, _N, _D, _SPACE, _C, _R, _E, _D, _I, _T, _S, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE);
            for (int i = 0; i < 43; i++) {
                int startX = i * 12;
                int endX = startX + 10;
                if (offset.x < endX) {
                    bool pixelOn = getPixel(TEXT[i], (offset.x - startX) / 2, offset.y / 2);
                    fragColor = pixelOn ? textColor : backgroundColor;
                    break;
                } else if (offset.x < endX + 2) {
                    fragColor = backgroundColor;
                    break;
                }
            }
            return;
        }
        
        offset = pixel - ivec2(10, 25);
        if (offset.x >= 0 && offset.y >= 0 && offset.x < 514 && offset.y < 12) {
            uint[] TEXT = uint[](_PARENL, _M, _O, _D, _R, _I, _N, _T, _H, _DOT, _C, _O, _M, _RSLASH, _R, _E, _S, _O, _U, _R, _C, _E, _P, _A, _C, _K, _RSLASH, _P, _G, _DOT, _P, _A, _C, _K, _PARENR, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE);
            for (int i = 0; i < 43; i++) {
                int startX = i * 12;
                int endX = startX + 10;
                if (offset.x < endX) {
                    bool pixelOn = getPixel(TEXT[i], (offset.x - startX) / 2, offset.y / 2);
                    fragColor = pixelOn ? textColor : backgroundColor;
                    break;
                } else if (offset.x < endX + 2) {
                    fragColor = backgroundColor;
                    break;
                }
            }
            return;
        }
        offset = pixel - ivec2(10, 5);
        if (offset.x >= 0 && offset.y >= 0 && offset.x < 514 && offset.y < 12) {
            uint[] TEXT = uint[](_PARENL, _U, _N, _I, _V, _E, _R, _S, _A, _L, _SPACE, _V, _E, _R, _S, _I, _O, _N, _PARENR, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _PARENL, _B, _1, _DOT, _0, _DOT, _8, _PARENR, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE);
            for (int i = 0; i < 43; i++) {
                int startX = i * 12;
                int endX = startX + 10;
                if (offset.x < endX) {
                    bool pixelOn = getPixel(TEXT[i], (offset.x - startX) / 2, offset.y / 2);
                    fragColor = pixelOn ? textColor : backgroundColor;
                    break;
                } else if (offset.x < endX + 2) {
                    fragColor = backgroundColor;
                    break;
                }
            }
            return;
        }
    }
    if (color.r == 192/255.0 && color.g == 192/255.0 && color.b == 192/255.0 ) {
        discard; //Scoll Bar Gray 1
}
    if (color.r == 128/255.0 && color.g == 128/255.0 && color.b == 128/255.0 ) {
        discard; //Scoll Bar Gray 2
}
    if (color.r == 119/255.0 && color.g == 0/255.0 && color.b == 0/255.0 ) {
color = vec4(0.7, 0.06, 0.06, 0.35); //Red Incompatible Opacity / Transparency
}
    if (color.r == 0/255.0 && color.g == 0/255.0 && color.b == 0/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.0); //Isolating Black Line Scroll Bar & Advancement Lines & Loading World Screen Chunks Empty #000000
}
    if (color.r == 153/255.0 && color.g == 153/255.0 && color.b == 153/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.0); //Loading World Screen Chunks Structure Starts #999999
}
    if (color.r == 95/255.0 && color.g == 97/255.0 && color.b == 145/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.35); //Loading World Screen Chunks Structure References #5F6191
}
    if (color.r == 128/255.0 && color.g == 178/255.0 && color.b == 82/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.35); //Loading World Screen Chunks Biomes #80B252
}
    if (color.r == 209/255.0 && color.g == 209/255.0 && color.b == 209/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.35); //Loading World Screen Chunks Noise #D1D1D1
}
    if (color.r == 114/255.0 && color.g == 104/255.0 && color.b == 9/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.35); //Loading World Screen Chunks Surface #726809
}
    if (color.r == 109/255.0 && color.g == 102/255.0 && color.b == 92/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.35); //Loading World Screen Chunks Carvers #6D665C
}
    if (color.r == 48/255.0 && color.g == 53/255.0 && color.b == 114/255.0 && color.a == 1) {
 color = vec4(0.0,0.07,0.4, 1); //Loading World Screen Chunks Liquid Carvers #303572
}
    if (color.r == 33/255.0 && color.g == 198/255.0 && color.b == 0/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.35); //Loading World Screen Chunks Features #21C600
}
    if (color.r == 204/255.0 && color.g == 204/255.0 && color.b == 204/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.35); //Loading World Screen Chunks Light #CCCCCC
}
    if (color.r == 242/255.0 && color.g == 96/255.0 && color.b == 96/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.35); //Loading World Screen Chunks Spawn #F26060
}
    if (color.r == 238/255.0 && color.g == 238/255.0 && color.b == 238/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.35); //Loading World Screen Chunks Heightmaps #EEEEEE
}
    if (color.r == 255/255.0 && color.g == 224/255.0 && color.b == 160/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.35); //Loading World Screen Chunks 1.20 color #ffe0a0
}
    if (color.r == 46/255.0 && color.g == 46/255.0 && color.b == 46/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.35); //Reply Mod Grey #2e2e2e
}
    if (color.r == 255/255.0 && color.g == 187/255.0 && color.b == 77/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.35); //REI Mod Orange #ffbb4d
}
    if (color.r == 160/255.0 && color.g == 160/255.0 && color.b == 160/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.35); //Isolating Black and White UI
}
    if (color.r == 255/255.0 && color.g == 255/255.0 && color.b == 255/255.0 && color.a == 1) {
color = vec4(0.0, 0.0, 0.0, 0.35); //Isolating Black and White UI
}
    if (color.r == 239.0/255.0 && color.g == 50.0/255.0 && color.b == 61.0/255.0) {
color = vec4(0.0, 0.0, 0.0, 0.0); //Loading Screen trans.
}
if(color == vec4(0.5803921568627451, 0.8941176470588236, 0.8274509803921568, 1)){
    color = vec4(0.0,0.07,0.4, 1); //Sodium checkbox colour
}
if (color.r == 255/255.0 && color.g == 255/255.0 && color.b == 255/255.0 && color.a == 128/255.0) {
color = vec4(0.0, 0.0, 0.0, 0.0); //inventory slot hover colour
}
if (color.r == 14/255.0 && color.g == 42/255.0 && color.b == 85/255.0) {
color = vec4(0.0, 0.07, 0.4, 1.0); //ModMenu Mod Tag 1
}
if (color.r == 43/255.0 && color.g == 75/255.0 && color.b == 124/255.0) {
color = vec4(0.0, 0.04, 0.3, 1.0); //ModMenu Mod Tag 2
}
    fragColor = color * ColorModulator;
}
