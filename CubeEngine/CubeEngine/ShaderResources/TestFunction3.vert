

struct LightInfo {
    bool IsEnabled[2];
    lowp int LightType; // 0:none 1:directional 2:point 3:spot
    mediump vec4 LightPosition;  // in eye space
    lowp vec3 LightDirection; // in eye space
    mediump vec3 LightColor;
    mediump float Attenuation;
    mediump float SpotConsCutoff;
    mediump float SpotExponent[3];
};

uniform LightInfo mainLight;
uniform highp vec4 test3_value1;
uniform mediump mat3 test_common;

varying lowp vec3  LightDirection;
varying lowp vec3 EyeDirectionOut;
varying lowp float Attenuation;
varying lowp vec3 Normal;

void CEVertex_TestFunction3(vec3 inputColor) {
    // start coding for test2
    vec3 myColor = inputColor;
    myColor = nil;....
    MyinputColor);
    (inputColor);
    inputColor+1 = 2;
    XXXXXXXXXXXXXXXXXXXXXXX
    AAAAAAAAAAAAAAAAAAAAAAA
}

