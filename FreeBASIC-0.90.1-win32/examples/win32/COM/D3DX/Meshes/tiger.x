xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}

Header {
 1;
 0;
 1;
}

Mesh Body1 {
 303;
 0.000000;-0.061426;0.938846;,
 -0.049693;0.200773;0.692165;,
 0.000000;-0.031454;1.283610;,
 0.049693;-0.023019;0.950530;,
 0.032306;0.045667;0.971424;,
 0.000000;0.053280;0.973741;,
 -0.032306;0.269459;0.713059;,
 -0.023241;0.009165;1.505100;,
 0.000000;0.277072;0.715376;,
 0.000000;0.014811;1.504150;,
 0.049693;-0.111196;1.282310;,
 0.032306;-0.039411;1.283480;,
 0.023242;0.009165;1.505100;,
 0.035751;-0.041767;1.513680;,
 0.032306;0.269459;0.713059;,
 0.049693;0.200773;0.692165;,
 0.000000;0.162366;0.680481;,
 -0.032306;0.045667;0.971424;,
 -0.049693;-0.023019;0.950530;,
 0.000000;-0.151335;1.281660;,
 0.000000;-0.070246;1.518480;,
 -0.049693;-0.111196;1.282310;,
 -0.035750;-0.041767;1.513680;,
 -0.032306;-0.039411;1.283480;,
 0.000000;-0.139499;-0.804149;,
 0.000000;-0.196023;-0.643914;,
 0.000000;0.207794;-1.162700;,
 0.000000;0.342375;-1.510260;,
 0.000000;-0.232522;-0.216349;,
 0.109118;-0.119018;0.100709;,
 -0.109118;-0.119018;0.100709;,
 0.000000;-0.154873;0.103656;,
 0.030101;-0.105174;0.316078;,
 0.000000;-0.112314;0.317509;,
 0.000000;0.112303;0.506078;,
 -0.030101;-0.105174;0.316078;,
 -0.028761;-0.037815;0.439801;,
 0.028761;-0.037815;0.439801;,
 0.081739;-0.203143;0.439706;,
 0.065936;-0.238012;0.335711;,
 0.020142;-0.108242;0.303668;,
 0.114666;-0.167257;0.149229;,
 0.116086;-0.276934;0.217803;,
 0.090034;-0.382159;0.456303;,
 -0.114666;-0.167257;0.149229;,
 -0.116086;-0.276934;0.217803;,
 -0.020142;-0.108242;0.303668;,
 -0.090034;-0.382159;0.456303;,
 -0.081739;-0.203143;0.439706;,
 -0.076865;-0.377381;0.378108;,
 -0.065936;-0.238012;0.335711;,
 0.076865;-0.377381;0.378108;,
 -0.077999;-0.438418;0.363464;,
 -0.094725;-0.687984;0.346619;,
 -0.119790;-0.424686;0.304048;,
 -0.160820;-0.602659;0.286432;,
 -0.190992;-0.614722;0.342338;,
 -0.168141;-0.687707;0.257272;,
 -0.151771;-0.687980;0.349147;,
 -0.203745;-0.687917;0.313177;,
 -0.128500;-0.687445;0.237457;,
 -0.079186;-0.687932;0.310966;,
 -0.165267;-0.602291;0.204563;,
 -0.076312;-0.617099;0.236559;,
 -0.125626;-0.603366;0.203812;,
 -0.127225;-0.603735;0.285509;,
 -0.085434;-0.617617;0.340127;,
 -0.068939;-0.687414;0.212852;,
 -0.118657;-0.370966;0.289767;,
 -0.153385;-0.423611;0.305410;,
 -0.215919;-0.687399;0.214649;,
 -0.200870;-0.614472;0.257455;,
 -0.204332;-0.687587;0.149699;,
 -0.191896;-0.646208;0.173407;,
 -0.162472;-0.639473;0.139614;,
 -0.173907;-0.687338;0.180856;,
 -0.169612;-0.687553;0.115905;,
 -0.129710;-0.640081;0.138863;,
 -0.127130;-0.687344;0.180105;,
 -0.130953;-0.687556;0.115154;,
 -0.088955;-0.647844;0.171610;,
 -0.082862;-0.687595;0.147901;,
 -0.091167;-0.448646;0.416058;,
 -0.146947;-0.626975;0.378308;,
 -0.098602;-0.627845;0.375781;,
 -0.183557;-0.435523;0.366725;,
 -0.139512;-0.447776;0.419786;,
 -0.036911;-0.131458;-0.800774;,
 -0.114132;-0.130986;-0.893785;,
 -0.218544;-0.657847;-0.902645;,
 -0.171757;-0.532488;-0.896119;,
 -0.073996;0.255722;-1.483520;,
 -0.051230;0.326389;-1.504150;,
 -0.065011;0.221538;-1.464050;,
 0.104586;-0.228675;-0.692703;,
 0.091167;-0.448646;0.416057;,
 0.077999;-0.438418;0.363464;,
 0.098603;-0.627845;0.375781;,
 0.094725;-0.687984;0.346619;,
 0.119790;-0.424686;0.304048;,
 0.165267;-0.602291;0.204563;,
 0.085434;-0.617617;0.340127;,
 0.127225;-0.603735;0.285508;,
 0.125626;-0.603366;0.203812;,
 0.076312;-0.617099;0.236559;,
 0.118657;-0.370966;0.289767;,
 0.204332;-0.687587;0.149699;,
 0.162472;-0.639473;0.139614;,
 0.191896;-0.646208;0.173407;,
 0.169612;-0.687553;0.115905;,
 0.129710;-0.640081;0.138863;,
 0.068939;-0.687414;0.212852;,
 0.127130;-0.687344;0.180104;,
 0.082862;-0.687595;0.147901;,
 0.088955;-0.647844;0.171610;,
 0.130953;-0.687556;0.115154;,
 0.153385;-0.423611;0.305410;,
 0.160820;-0.602659;0.286432;,
 0.168141;-0.687707;0.257271;,
 0.128500;-0.687445;0.237457;,
 0.079186;-0.687932;0.310966;,
 0.203745;-0.687917;0.313177;,
 0.173907;-0.687338;0.180856;,
 0.215919;-0.687399;0.214649;,
 0.200870;-0.614472;0.257455;,
 0.190992;-0.614722;0.342338;,
 0.146947;-0.626975;0.378308;,
 0.151771;-0.687979;0.349147;,
 0.183557;-0.435523;0.366725;,
 0.139512;-0.447776;0.419786;,
 0.113246;-0.558335;-0.752050;,
 -0.113029;-0.558335;-0.752050;,
 -0.058263;-0.180258;-0.792372;,
 -0.104586;-0.228675;-0.692703;,
 0.058263;-0.180258;-0.792372;,
 0.114132;-0.130986;-0.893785;,
 0.036911;-0.131458;-0.800774;,
 0.000000;-0.004469;-0.968083;,
 0.000000;0.159119;-1.080890;,
 0.055861;-0.654043;-0.907268;,
 0.079285;-0.545055;-0.826090;,
 -0.189298;-0.627377;-1.035100;,
 -0.177878;-0.680291;-1.082760;,
 -0.214254;-0.664213;-1.040040;,
 -0.161256;-0.660443;-1.077820;,
 -0.124653;-0.659096;-1.077490;,
 -0.108039;-0.624876;-1.034770;,
 -0.052024;-0.654043;-0.907268;,
 -0.078756;-0.545055;-0.826090;,
 -0.111125;-0.618182;-0.950786;,
 -0.184997;-0.620703;-0.947721;,
 -0.120091;-0.531540;-0.901424;,
 -0.093467;-0.697089;-1.086940;,
 -0.177140;-0.697089;-1.086940;,
 -0.095368;-0.678258;-1.082250;,
 -0.184330;-0.689285;-0.864494;,
 -0.228502;-0.695391;-1.044220;,
 -0.042748;-0.695391;-1.044220;,
 -0.054974;-0.660441;-1.039530;,
 -0.101027;-0.689285;-0.864498;,
 0.065548;-0.695391;-1.044220;,
 0.092340;-0.696620;-1.085760;,
 0.102919;-0.689285;-0.864498;,
 0.192799;-0.696619;-1.085760;,
 0.099554;-0.677289;-1.081080;,
 0.127676;-0.657618;-1.076310;,
 0.072960;-0.660441;-1.039310;,
 0.120245;-0.531540;-0.901424;,
 0.112616;-0.618182;-0.950786;,
 0.109653;-0.624877;-1.034770;,
 0.187687;-0.627377;-1.035100;,
 0.178790;-0.679375;-1.081580;,
 0.162827;-0.659001;-1.076650;,
 0.000000;0.194767;-1.453810;,
 0.073996;0.255722;-1.483520;,
 0.000000;0.286217;-1.518480;,
 0.051230;0.326388;-1.504150;,
 0.000000;0.213784;-1.355750;,
 0.065011;0.221538;-1.464050;,
 0.182916;-0.689285;-0.864494;,
 0.171441;-0.532488;-0.896119;,
 0.183557;-0.620703;-0.947721;,
 0.215773;-0.657847;-0.902646;,
 0.220422;-0.695391;-1.044220;,
 0.212566;-0.664214;-1.039820;,
 0.067091;-0.158537;-0.643915;,
 0.130206;-0.193912;-0.216350;,
 0.077416;0.007999;-0.964709;,
 0.183964;-0.134440;-0.886644;,
 0.170979;-0.558332;-0.752044;,
 0.194691;-0.546486;-0.818088;,
 0.096383;0.183917;-1.077510;,
 0.102550;0.289818;-1.155630;,
 -0.067091;-0.158537;-0.643915;,
 -0.130206;-0.193912;-0.216350;,
 -0.077416;0.007999;-0.964709;,
 0.000000;0.216114;-1.244810;,
 0.000000;0.218816;-1.313860;,
 -0.183964;-0.134440;-0.886644;,
 -0.195220;-0.546486;-0.818088;,
 -0.171291;-0.558332;-0.752044;,
 -0.102550;0.289818;-1.155630;,
 -0.096383;0.183918;-1.077510;,
 -0.203324;-0.000186;-0.216355;,
 0.000000;0.461380;-0.216367;,
 -0.132354;0.415323;-0.216366;,
 0.000000;0.483721;-1.426860;,
 0.000000;0.505008;0.184315;,
 -0.083623;0.454487;-1.419150;,
 -0.097980;0.599269;-1.043210;,
 -0.150776;0.396113;-1.068880;,
 0.000000;0.668371;-1.244740;,
 0.000000;0.660052;-1.123730;,
 0.083623;0.454486;-1.419150;,
 0.000000;0.601379;-1.384240;,
 0.000000;0.628851;-1.039190;,
 0.097980;0.599268;-1.043210;,
 0.150776;0.396113;-1.068880;,
 0.000000;0.588297;-0.907439;,
 0.132354;0.415323;-0.216366;,
 0.203324;-0.000186;-0.216355;,
 0.215676;-0.176166;-0.795945;,
 0.177974;0.258210;-0.971413;,
 0.115772;0.548952;-0.911464;,
 0.143614;0.490599;-0.781781;,
 0.183334;-0.228667;-0.692694;,
 0.215131;0.109326;-0.825489;,
 0.115870;0.444022;-0.665901;,
 0.178124;0.029546;-0.643920;,
 0.160357;0.437455;-1.137120;,
 0.226298;0.365261;-1.243240;,
 0.105258;0.370388;-1.397000;,
 0.104248;0.611072;-1.127950;,
 0.082255;0.262741;-1.368650;,
 0.192870;0.403955;-1.341710;,
 0.166988;0.246562;-1.244800;,
 0.153069;0.277384;-1.326760;,
 0.089221;0.645525;-1.244750;,
 0.139971;0.697089;-1.334440;,
 0.177051;0.542720;-1.241680;,
 0.126150;0.594872;-1.338400;,
 0.041587;0.120377;0.505592;,
 0.067583;0.283180;0.536543;,
 0.104568;0.447773;0.443333;,
 0.000000;0.391487;0.530735;,
 0.043936;0.380679;0.531314;,
 0.149273;0.477514;0.293496;,
 0.172353;-0.275740;0.220239;,
 0.139752;-0.200327;0.446770;,
 0.152251;-0.370463;0.291793;,
 0.192606;-0.235087;0.341477;,
 0.138378;-0.381752;0.461846;,
 0.182423;-0.376028;0.382956;,
 0.160847;0.216311;0.499174;,
 0.116618;-0.015705;0.448978;,
 0.110923;0.461129;0.163966;,
 0.229189;0.099215;0.308897;,
 0.213423;-0.066057;0.311063;,
 0.176064;-0.153352;0.152359;,
 0.170561;0.060886;0.085922;,
 -0.215676;-0.176166;-0.795945;,
 -0.177974;0.258210;-0.971413;,
 -0.115772;0.548952;-0.911464;,
 -0.143614;0.490599;-0.781781;,
 0.000000;0.488737;-0.665903;,
 0.000000;0.534271;-0.777755;,
 -0.183334;-0.228667;-0.692694;,
 -0.215131;0.109326;-0.825489;,
 -0.178124;0.029546;-0.643920;,
 -0.115870;0.444022;-0.665901;,
 -0.160357;0.437455;-1.137120;,
 -0.226298;0.365261;-1.243240;,
 -0.105258;0.370388;-1.397000;,
 -0.104248;0.611072;-1.127950;,
 -0.166988;0.246562;-1.244800;,
 -0.192870;0.403955;-1.341710;,
 -0.082255;0.262741;-1.368650;,
 -0.153069;0.277384;-1.326760;,
 -0.089221;0.645525;-1.244750;,
 -0.139971;0.697089;-1.334440;,
 -0.126150;0.594872;-1.338400;,
 -0.177051;0.542720;-1.241680;,
 -0.041587;0.120377;0.505592;,
 0.000000;0.228662;0.539467;,
 0.000000;0.519446;0.291789;,
 -0.149273;0.477514;0.293496;,
 -0.172353;-0.275740;0.220239;,
 -0.139752;-0.200327;0.446770;,
 -0.138378;-0.381752;0.461846;,
 -0.192606;-0.235087;0.341477;,
 -0.152251;-0.370463;0.291794;,
 -0.182423;-0.376028;0.382957;,
 -0.116618;-0.015705;0.448978;,
 -0.160847;0.216311;0.499174;,
 0.000000;0.469387;0.442753;,
 -0.104568;0.447772;0.443333;,
 -0.067583;0.283180;0.536543;,
 -0.043936;0.380679;0.531314;,
 -0.110923;0.461129;0.163966;,
 -0.229189;0.099215;0.308897;,
 -0.170561;0.060886;0.085922;,
 -0.176064;-0.153352;0.152359;,
 -0.213423;-0.066057;0.311063;;

  599;
 3;300,301,302;,
 3;299,300,302;,
 3;298,300,299;,
 3;295,296,297;,
 3;294,295,297;,
 3;299,292,293;,
 3;302,292,299;,
 3;289,290,291;,
 3;288,289,291;,
 3;287,289,288;,
 3;286,290,289;,
 3;287,292,302;,
 3;289,287,302;,
 3;286,302,301;,
 3;289,302,286;,
 3;284,298,285;,
 3;294,284,285;,
 3;293,282,283;,
 3;296,293,283;,
 3;295,294,285;,
 3;292,282,293;,
 3;295,293,296;,
 3;293,295,285;,
 3;285,299,293;,
 3;298,299,285;,
 3;279,280,281;,
 3;278,280,279;,
 3;281,278,279;,
 3;275,276,277;,
 3;274,275,277;,
 3;273,278,281;,
 3;272,276,275;,
 3;271,275,274;,
 3;280,272,275;,
 3;270,271,274;,
 3;270,273,281;,
 3;281,280,275;,
 3;271,270,281;,
 3;275,271,281;,
 3;267,268,269;,
 3;266,268,267;,
 3;263,264,265;,
 3;262,263,265;,
 3;269,264,263;,
 3;261,263,262;,
 3;260,266,267;,
 3;267,269,263;,
 3;261,260,267;,
 3;263,261,267;,
 3;257,258,259;,
 3;256,257,259;,
 3;255,256,259;,
 3;256,253,254;,
 3;257,256,254;,
 3;250,251,252;,
 3;249,250,252;,
 3;248,251,250;,
 3;247,250,249;,
 3;247,258,257;,
 3;248,257,254;,
 3;250,257,248;,
 3;250,247,257;,
 3;246,255,284;,
 3;294,246,284;,
 3;243,244,245;,
 3;294,244,243;,
 3;253,245,242;,
 3;241,253,242;,
 3;246,294,243;,
 3;254,253,241;,
 3;243,245,253;,
 3;253,246,243;,
 3;246,253,256;,
 3;255,246,256;,
 3;238,239,240;,
 3;237,238,240;,
 3;239,238,237;,
 3;234,235,236;,
 3;233,234,236;,
 3;232,239,237;,
 3;231,234,233;,
 3;240,234,231;,
 3;230,235,234;,
 3;229,235,230;,
 3;229,239,232;,
 3;239,234,240;,
 3;230,239,229;,
 3;230,234,239;,
 3;226,227,228;,
 3;225,226,228;,
 3;224,265,264;,
 3;227,224,264;,
 3;223,265,224;,
 3;222,223,224;,
 3;221,226,225;,
 3;226,224,227;,
 3;222,226,221;,
 3;224,226,222;,
 3;219,220,228;,
 3;218,265,223;,
 3;217,223,222;,
 3;216,223,217;,
 3;229,216,217;,
 3;216,215,218;,
 3;232,215,216;,
 3;232,216,229;,
 3;223,216,218;,
 3;213,214,240;,
 3;231,213,240;,
 3;237,211,212;,
 3;211,240,214;,
 3;237,240,211;,
 3;212,215,232;,
 3;237,212,232;,
 3;209,270,210;,
 3;209,215,273;,
 3;273,270,209;,
 3;208,272,280;,
 3;278,212,211;,
 3;214,208,280;,
 3;280,278,211;,
 3;212,273,215;,
 3;278,273,212;,
 3;207,298,284;,
 3;207,284,255;,
 3;206,208,214;,
 3;213,206,214;,
 3;218,262,265;,
 3;209,262,218;,
 3;215,209,218;,
 3;210,262,209;,
 3;261,262,210;,
 3;214,280,211;,
 3;297,244,294;,
 3;219,207,255;,
 3;205,298,207;,
 3;204,207,219;,
 3;204,205,207;,
 3;227,204,219;,
 3;228,227,219;,
 3;205,268,203;,
 3;269,268,205;,
 3;269,205,204;,
 3;210,201,202;,
 3;261,210,202;,
 3;199,200,260;,
 3;198,199,260;,
 3;270,201,210;,
 3;197,277,276;,
 3;274,197,196;,
 3;201,274,196;,
 3;277,197,274;,
 3;270,274,201;,
 3;195,261,202;,
 3;266,260,200;,
 3;198,261,195;,
 3;203,193,194;,
 3;300,203,194;,
 3;268,193,203;,
 3;260,261,198;,
 3;229,217,192;,
 3;191,192,217;,
 3;222,191,217;,
 3;221,189,190;,
 3;188,221,190;,
 3;197,233,236;,
 3;235,196,197;,
 3;192,196,235;,
 3;236,235,197;,
 3;229,192,235;,
 3;187,191,222;,
 3;225,189,221;,
 3;188,187,222;,
 3;220,259,186;,
 3;185,220,186;,
 3;228,220,185;,
 3;221,188,222;,
 3;182,183,184;,
 3;181,182,184;,
 3;180,182,181;,
 3;190,179,182;,
 3;190,182,180;,
 3;233,177,178;,
 3;231,233,178;,
 3;174,175,176;,
 3;173,178,177;,
 3;175,178,173;,
 3;174,213,231;,
 3;176,213,174;,
 3;174,178,175;,
 3;178,174,231;,
 3;170,171,172;,
 3;169,170,172;,
 3;184,171,170;,
 3;170,168,181;,
 3;169,168,170;,
 3;170,181,184;,
 3;167,181,168;,
 3;180,181,167;,
 3;165,166,169;,
 3;164,166,165;,
 3;172,165,169;,
 3;163,184,183;,
 3;171,184,163;,
 3;179,189,162;,
 3;163,161,164;,
 3;165,172,171;,
 3;164,165,171;,
 3;163,164,171;,
 3;183,161,163;,
 3;160,161,183;,
 3;190,189,179;,
 3;179,160,183;,
 3;162,160,179;,
 3;179,183,182;,
 3;157,158,159;,
 3;166,160,162;,
 3;157,155,156;,
 3;159,155,157;,
 3;152,153,154;,
 3;157,154,158;,
 3;152,154,157;,
 3;149,150,151;,
 3;148,149,151;,
 3;147,149,148;,
 3;145,146,158;,
 3;154,145,158;,
 3;145,144,146;,
 3;142,153,143;,
 3;141,142,143;,
 3;156,143,153;,
 3;144,142,141;,
 3;141,150,149;,
 3;146,144,141;,
 3;142,154,153;,
 3;145,154,142;,
 3;144,145,142;,
 3;149,146,141;,
 3;146,147,158;,
 3;149,147,146;,
 3;159,158,147;,
 3;168,139,140;,
 3;169,139,168;,
 3;166,139,169;,
 3;167,168,140;,
 3;162,139,166;,
 3;164,161,160;,
 3;166,164,160;,
 3;187,137,138;,
 3;191,187,138;,
 4;152,157,156,153;,
 3;136,137,187;,
 3;135,136,187;,
 3;187,188,135;,
 3;135,188,180;,
 3;134,185,136;,
 3;135,134,136;,
 3;148,132,133;,
 3;131,148,133;,
 3;151,132,148;,
 3;130,139,162;,
 3;140,139,130;,
 3;159,131,200;,
 3;155,159,200;,
 3;147,131,159;,
 3;148,131,147;,
 3;129,252,251;,
 3;128,249,252;,
 3;128,252,129;,
 3;125,126,127;,
 3;125,123,124;,
 3;121,122,123;,
 3;121,127,120;,
 3;119,121,120;,
 3;118,121,119;,
 3;122,121,118;,
 3;125,121,123;,
 3;117,125,124;,
 3;116,125,117;,
 3;128,125,116;,
 3;125,127,121;,
 3;126,125,128;,
 3;113,114,115;,
 3;112,113,115;,
 3;111,113,112;,
 3;110,115,114;,
 3;109,115,110;,
 3;115,109,122;,
 3;122,112,115;,
 3;106,107,108;,
 3;109,107,106;,
 3;106,124,123;,
 3;108,124,106;,
 3;110,107,109;,
 3;123,122,109;,
 3;109,106,123;,
 3;116,249,128;,
 3;105,249,116;,
 3;103,110,104;,
 3;103,101,102;,
 3;104,101,103;,
 3;103,100,107;,
 3;110,103,107;,
 3;100,103,102;,
 3;119,111,112;,
 3;114,104,110;,
 3;108,107,100;,
 3;112,122,118;,
 3;118,119,112;,
 3;117,100,102;,
 3;124,100,117;,
 3;100,124,108;,
 3;99,105,116;,
 3;120,101,104;,
 3;111,104,114;,
 3;111,119,120;,
 3;111,114,113;,
 3;104,111,120;,
 3;98,120,127;,
 3;97,120,98;,
 3;101,120,97;,
 3;101,95,96;,
 3;97,95,101;,
 3;102,101,96;,
 3;126,97,98;,
 3;126,98,127;,
 3;129,95,97;,
 3;99,102,96;,
 3;117,102,99;,
 3;126,129,97;,
 3;116,117,99;,
 3;128,129,126;,
 3;185,134,94;,
 3;94,228,185;,
 3;228,94,225;,
 3;140,130,94;,
 3;130,162,189;,
 3;130,225,94;,
 3;225,130,189;,
 3;167,140,134;,
 3;134,140,94;,
 3;134,135,167;,
 3;167,135,180;,
 3;190,180,188;,
 3;199,155,200;,
 3;93,177,276;,
 3;272,93,276;,
 3;91,92,175;,
 3;173,177,93;,
 3;175,173,93;,
 3;91,272,208;,
 3;92,91,208;,
 3;91,175,93;,
 3;93,272,91;,
 3;90,151,150;,
 3;90,89,199;,
 3;89,90,150;,
 3;141,143,150;,
 3;143,89,150;,
 3;156,89,143;,
 3;89,155,199;,
 3;155,89,156;,
 3;198,88,90;,
 3;151,90,88;,
 3;199,198,90;,
 3;138,137,195;,
 3;202,138,195;,
 3;87,195,137;,
 3;88,195,87;,
 3;88,198,195;,
 3;87,193,132;,
 3;88,87,132;,
 3;86,288,291;,
 3;85,86,291;,
 3;85,291,290;,
 3;86,83,84;,
 3;82,86,84;,
 3;85,83,86;,
 3;79,80,81;,
 3;78,79,81;,
 3;77,80,79;,
 3;76,77,79;,
 3;75,79,78;,
 3;76,79,75;,
 3;72,73,74;,
 3;76,72,74;,
 3;77,76,74;,
 3;72,70,71;,
 3;73,72,71;,
 3;76,75,70;,
 3;72,76,70;,
 3;69,85,290;,
 3;68,69,290;,
 3;67,78,81;,
 3;64,65,66;,
 3;63,64,66;,
 3;77,64,63;,
 3;64,74,62;,
 3;77,74,64;,
 3;62,65,64;,
 3;80,77,63;,
 3;59,60,61;,
 3;58,59,61;,
 3;57,60,59;,
 3;74,73,62;,
 3;56,59,58;,
 3;55,65,62;,
 3;78,60,57;,
 3;75,78,57;,
 3;67,60,78;,
 3;71,55,62;,
 3;56,55,71;,
 3;73,71,62;,
 3;56,70,59;,
 3;71,70,56;,
 3;59,75,57;,
 3;70,75,59;,
 3;54,69,68;,
 3;81,80,67;,
 3;61,63,66;,
 3;67,61,60;,
 3;63,61,67;,
 3;80,63,67;,
 3;61,84,53;,
 3;58,61,53;,
 3;66,84,61;,
 3;82,84,66;,
 3;52,82,66;,
 3;65,52,66;,
 3;83,56,58;,
 3;83,58,53;,
 3;84,83,53;,
 3;54,52,65;,
 3;55,54,65;,
 3;69,54,55;,
 3;56,69,55;,
 3;85,69,56;,
 3;56,83,85;,
 3;133,132,193;,
 3;193,268,133;,
 3;266,133,268;,
 3;266,131,133;,
 3;200,131,266;,
 3;132,151,88;,
 3;51,105,99;,
 3;49,68,50;,
 3;47,48,287;,
 3;288,47,287;,
 3;82,47,288;,
 3;49,52,54;,
 3;68,49,54;,
 3;82,52,47;,
 3;49,48,47;,
 3;50,48,49;,
 3;49,47,52;,
 3;96,51,99;,
 3;45,46,50;,
 3;44,46,45;,
 3;44,286,301;,
 3;45,286,44;,
 3;45,290,286;,
 3;68,290,45;,
 3;68,45,50;,
 3;86,82,288;,
 3;95,251,43;,
 3;96,95,43;,
 3;51,96,43;,
 3;129,251,95;,
 3;40,41,42;,
 3;39,40,42;,
 3;247,42,41;,
 3;249,42,247;,
 3;105,42,249;,
 3;105,39,42;,
 3;258,247,41;,
 3;51,38,39;,
 3;43,38,51;,
 3;105,51,39;,
 3;248,38,43;,
 3;251,248,43;,
 3;38,248,254;,
 3;37,38,254;,
 3;37,40,39;,
 3;38,37,39;,
 3;36,48,50;,
 3;46,36,50;,
 3;35,46,44;,
 3;282,36,46;,
 3;33,34,282;,
 3;241,34,33;,
 3;32,241,33;,
 3;35,282,46;,
 3;33,282,35;,
 3;31,32,33;,
 3;35,31,33;,
 3;30,31,35;,
 3;292,48,36;,
 3;44,301,30;,
 3;30,301,300;,
 3;287,48,292;,
 3;44,30,35;,
 3;32,41,40;,
 3;28,29,31;,
 3;241,40,37;,
 3;32,40,241;,
 3;32,31,29;,
 3;28,31,30;,
 3;29,259,258;,
 3;258,41,29;,
 3;29,41,32;,
 3;186,29,28;,
 3;29,186,259;,
 3;254,241,37;,
 3;282,292,36;,
 3;27,176,175;,
 3;92,27,175;,
 3;27,92,206;,
 3;176,27,206;,
 3;197,177,233;,
 3;177,197,276;,
 3;208,206,92;,
 3;213,176,206;,
 3;26,196,192;,
 3;26,201,196;,
 3;191,26,192;,
 3;138,26,191;,
 3;26,138,202;,
 3;202,201,26;,
 3;24,185,25;,
 3;193,24,25;,
 3;136,185,24;,
 3;87,24,193;,
 3;24,87,137;,
 3;137,136,24;,
 3;194,30,300;,
 3;194,28,30;,
 3;25,28,194;,
 3;21,22,23;,
 3;20,22,21;,
 3;19,20,21;,
 3;19,21,18;,
 3;21,17,18;,
 3;23,17,21;,
 3;15,16,283;,
 3;283,241,242;,
 3;14,242,245;,
 3;15,242,14;,
 3;283,242,15;,
 3;13,22,20;,
 3;19,13,20;,
 3;10,11,12;,
 3;11,9,12;,
 3;8,245,244;,
 3;14,245,8;,
 4;12,7,22,13;,
 3;9,7,12;,
 3;12,13,10;,
 3;10,13,19;,
 3;6,244,297;,
 3;8,6,17;,
 3;5,8,17;,
 3;14,5,4;,
 3;8,5,14;,
 3;244,6,8;,
 3;3,15,4;,
 3;4,15,14;,
 3;3,16,15;,
 3;4,2,11;,
 3;5,2,4;,
 3;3,4,11;,
 3;16,296,283;,
 3;1,296,16;,
 3;1,297,296;,
 3;6,297,1;,
 3;2,7,9;,
 3;23,7,2;,
 3;22,7,23;,
 3;0,18,1;,
 3;16,0,1;,
 4;17,6,1,18;,
 3;3,0,16;,
 3;34,241,283;,
 3;282,34,283;,
 3;11,2,9;,
 3;23,2,5;,
 3;23,5,17;,
 3;10,3,11;,
 3;18,0,19;,
 3;0,3,10;,
 3;19,0,10;,
 3;25,185,186;,
 3;28,25,186;,
 3;193,25,194;,
 3;264,269,204;,
 3;227,264,204;,
 3;255,220,219;,
 3;259,220,255;,
 3;298,205,203;,
 3;300,298,203;;

  MeshMaterialList {
      1;
  1;
  0;;
     Material {
     0.694118;0.694118;0.694118;1.000000;;
     50.000000;
     1.000000;1.000000;1.000000;;
       0.000000;0.000000;0.000000;;
        TextureFilename {
    "tiger.jpg";
   }
 }
 }
  MeshTextureCoords {
    303;
    0.190860;-0.544059;,
    0.272086;-0.355992;,
    0.077337;-0.522561;,
    0.187013;-0.516511;,
    0.180133;-0.467245;,
    0.179370;-0.461784;,
    0.265206;-0.306726;,
    0.004406;-0.493426;,
    0.264443;-0.301265;,
    0.004719;-0.489377;,
    0.077765;-0.579757;,
    0.077380;-0.528268;,
    0.004406;-0.493426;,
    0.001581;-0.529958;,
    0.265206;-0.306726;,
    0.272086;-0.355992;,
    0.275933;-0.383540;,
    0.180133;-0.467245;,
    0.187013;-0.516511;,
    0.077979;-0.608548;,
    0.000000;-0.550385;,
    0.077765;-0.579757;,
    0.001581;-0.529958;,
    0.077380;-0.528268;,
    0.764787;-0.600058;,
    0.712026;-0.640601;,
    0.882850;-0.350956;,
    0.997293;-0.254425;,
    0.571239;-0.666781;,
    0.466839;-0.585368;,
    0.466839;-0.585368;,
    0.465868;-0.611086;,
    0.395923;-0.575438;,
    0.395452;-0.580559;,
    0.333360;-0.419449;,
    0.395923;-0.575438;,
    0.355184;-0.527123;,
    0.355184;-0.527123;,
    0.355215;-0.645708;,
    0.389458;-0.670719;,
    0.400009;-0.577639;,
    0.450862;-0.619968;,
    0.428283;-0.698636;,
    0.349750;-0.774111;,
    0.450862;-0.619968;,
    0.428283;-0.698636;,
    0.400009;-0.577639;,
    0.349750;-0.774111;,
    0.355215;-0.645708;,
    0.375498;-0.770684;,
    0.389458;-0.670719;,
    0.375498;-0.770684;,
    0.380320;-0.814463;,
    0.385866;-0.993469;,
    0.399884;-0.804614;,
    0.405685;-0.932268;,
    0.387276;-0.940921;,
    0.415286;-0.993271;,
    0.385034;-0.993466;,
    0.396878;-0.993421;,
    0.421811;-0.993083;,
    0.397606;-0.993432;,
    0.432642;-0.932004;,
    0.422107;-0.942626;,
    0.432889;-0.932775;,
    0.405989;-0.933040;,
    0.388004;-0.942997;,
    0.429913;-0.993060;,
    0.404586;-0.766082;,
    0.399436;-0.803843;,
    0.429321;-0.993050;,
    0.415226;-0.940741;,
    0.450708;-0.993185;,
    0.442901;-0.963505;,
    0.454028;-0.958674;,
    0.440448;-0.993006;,
    0.461835;-0.993160;,
    0.454276;-0.959110;,
    0.440696;-0.993010;,
    0.462082;-0.993162;,
    0.443493;-0.964678;,
    0.451300;-0.993190;,
    0.363002;-0.821800;,
    0.375432;-0.949709;,
    0.376264;-0.950333;,
    0.379246;-0.812387;,
    0.361774;-0.821176;,
    0.763676;-0.594291;,
    0.794303;-0.593952;,
    0.797220;-0.971853;,
    0.795071;-0.881937;,
    0.988489;-0.316579;,
    0.995281;-0.265891;,
    0.982078;-0.341098;,
    0.728091;-0.664021;,
    0.363002;-0.821800;,
    0.380320;-0.814463;,
    0.376264;-0.950333;,
    0.385866;-0.993469;,
    0.399884;-0.804614;,
    0.432642;-0.932004;,
    0.388004;-0.942997;,
    0.405989;-0.933040;,
    0.432889;-0.932775;,
    0.422107;-0.942626;,
    0.404586;-0.766082;,
    0.450708;-0.993185;,
    0.454028;-0.958674;,
    0.442901;-0.963505;,
    0.461835;-0.993160;,
    0.454276;-0.959110;,
    0.429913;-0.993060;,
    0.440696;-0.993010;,
    0.451300;-0.993190;,
    0.443493;-0.964678;,
    0.462082;-0.993162;,
    0.399436;-0.803843;,
    0.405685;-0.932268;,
    0.415287;-0.993271;,
    0.421811;-0.993083;,
    0.397606;-0.993432;,
    0.396878;-0.993421;,
    0.440448;-0.993006;,
    0.429321;-0.993050;,
    0.415226;-0.940741;,
    0.387276;-0.940921;,
    0.375432;-0.949709;,
    0.385034;-0.993466;,
    0.379246;-0.812387;,
    0.361774;-0.821176;,
    0.747633;-0.900476;,
    0.747633;-0.900476;,
    0.760910;-0.629293;,
    0.728091;-0.664021;,
    0.760910;-0.629293;,
    0.794303;-0.593952;,
    0.763676;-0.594291;,
    0.818767;-0.503206;,
    0.855912;-0.385869;,
    0.798742;-0.969124;,
    0.772012;-0.890951;,
    0.840834;-0.949998;,
    0.856528;-0.987951;,
    0.842461;-0.976419;,
    0.854901;-0.973715;,
    0.854792;-0.972749;,
    0.840726;-0.948204;,
    0.798742;-0.969124;,
    0.772012;-0.890951;,
    0.813072;-0.943402;,
    0.812062;-0.945211;,
    0.796818;-0.881257;,
    0.857904;-1.000000;,
    0.857904;-1.000000;,
    0.856360;-0.986493;,
    0.784658;-0.994402;,
    0.843837;-0.998782;,
    0.843837;-0.998782;,
    0.842293;-0.973714;,
    0.784659;-0.994402;,
    0.843837;-0.998782;,
    0.857515;-0.999664;,
    0.784659;-0.994402;,
    0.857515;-0.999663;,
    0.855974;-0.985798;,
    0.854404;-0.971689;,
    0.842221;-0.973714;,
    0.796818;-0.881257;,
    0.813072;-0.943402;,
    0.840726;-0.948205;,
    0.840834;-0.949998;,
    0.856139;-0.987294;,
    0.854516;-0.972681;,
    0.978706;-0.360300;,
    0.988489;-0.316579;,
    1.000000;-0.294706;,
    0.995281;-0.265892;,
    0.946417;-0.346659;,
    0.982078;-0.341098;,
    0.784658;-0.994402;,
    0.795071;-0.881937;,
    0.812062;-0.945211;,
    0.797220;-0.971853;,
    0.843837;-0.998782;,
    0.842388;-0.976420;,
    0.712026;-0.613714;,
    0.571239;-0.639087;,
    0.817656;-0.494263;,
    0.791951;-0.596430;,
    0.747631;-0.900474;,
    0.769377;-0.891977;,
    0.854799;-0.368082;,
    0.880522;-0.292123;,
    0.712026;-0.613714;,
    0.571239;-0.639087;,
    0.817656;-0.494263;,
    0.909887;-0.344988;,
    0.932623;-0.343050;,
    0.791951;-0.596430;,
    0.769377;-0.891977;,
    0.747631;-0.900474;,
    0.880522;-0.292123;,
    0.854799;-0.368081;,
    0.571241;-0.500134;,
    0.571245;-0.169067;,
    0.571244;-0.202102;,
    0.969832;-0.153042;,
    0.439309;-0.137774;,
    0.967293;-0.174011;,
    0.843505;-0.070163;,
    0.851957;-0.215881;,
    0.909864;-0.020599;,
    0.870018;-0.026565;,
    0.967293;-0.174011;,
    0.955798;-0.068650;,
    0.842181;-0.048945;,
    0.843505;-0.070164;,
    0.851957;-0.215881;,
    0.798798;-0.078033;,
    0.571244;-0.202102;,
    0.571241;-0.500134;,
    0.762086;-0.626358;,
    0.819864;-0.314794;,
    0.800124;-0.106254;,
    0.757422;-0.148109;,
    0.728088;-0.664016;,
    0.771814;-0.421584;,
    0.719266;-0.181517;,
    0.712028;-0.478808;,
    0.874427;-0.186227;,
    0.909370;-0.238010;,
    0.959999;-0.234332;,
    0.871408;-0.061697;,
    0.950664;-0.311544;,
    0.941794;-0.210256;,
    0.909884;-0.323149;,
    0.936871;-0.301041;,
    0.909867;-0.036985;,
    0.939400;-0.000000;,
    0.908856;-0.110724;,
    0.940704;-0.073317;,
    0.333520;-0.413657;,
    0.323329;-0.296884;,
    0.354021;-0.178827;,
    0.325241;-0.219199;,
    0.325051;-0.226951;,
    0.403359;-0.157494;,
    0.427480;-0.697780;,
    0.352889;-0.643688;,
    0.403919;-0.765721;,
    0.387560;-0.668621;,
    0.347925;-0.773819;,
    0.373902;-0.769713;,
    0.335634;-0.344847;,
    0.352162;-0.511265;,
    0.446010;-0.169247;,
    0.398287;-0.428836;,
    0.397574;-0.547381;,
    0.449832;-0.609995;,
    0.471708;-0.456328;,
    0.762086;-0.626358;,
    0.819864;-0.314794;,
    0.800124;-0.106254;,
    0.757422;-0.148109;,
    0.719266;-0.149444;,
    0.756097;-0.116784;,
    0.728088;-0.664016;,
    0.771814;-0.421584;,
    0.712028;-0.478808;,
    0.719266;-0.181517;,
    0.874427;-0.186227;,
    0.909370;-0.238010;,
    0.959999;-0.234332;,
    0.871408;-0.061697;,
    0.909884;-0.323149;,
    0.941794;-0.210256;,
    0.950664;-0.311544;,
    0.936871;-0.301041;,
    0.909867;-0.036985;,
    0.939400;-0.000000;,
    0.940704;-0.073317;,
    0.908856;-0.110724;,
    0.333520;-0.413657;,
    0.322366;-0.335988;,
    0.403921;-0.127418;,
    0.403359;-0.157494;,
    0.427480;-0.697780;,
    0.352889;-0.643688;,
    0.347925;-0.773819;,
    0.387560;-0.668621;,
    0.403919;-0.765721;,
    0.373901;-0.769713;,
    0.352162;-0.511265;,
    0.335634;-0.344847;,
    0.354212;-0.163323;,
    0.354021;-0.178827;,
    0.323329;-0.296884;,
    0.325051;-0.226951;,
    0.446010;-0.169247;,
    0.398287;-0.428836;,
    0.471708;-0.456328;,
    0.449832;-0.609995;,
    0.397574;-0.547381;;
 }
}
