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

Header{
1;
0;
1;
}

Mesh {
 82;
 0.00523;-0.02326;-0.00000;,
 3.65245;-0.02326;-3.64722;,
 0.00523;-0.02326;-5.15794;,
 5.16317;-0.02326;0.00000;,
 3.65245;-0.02326;3.64722;,
 0.00523;-0.02326;5.15794;,
 -3.64199;-0.02326;3.64722;,
 -5.15271;-0.02326;-0.00000;,
 -3.64199;-0.02326;-3.64722;,
 4.00138;-0.12141;-3.99615;,
 0.00523;-0.12141;-5.65141;,
 5.65664;-0.12141;0.00000;,
 4.00138;-0.12141;3.99615;,
 0.00523;-0.12141;5.65141;,
 -3.99092;-0.12141;3.99615;,
 -5.64618;-0.12141;-0.00000;,
 -3.99092;-0.12141;-3.99615;,
 4.29719;-0.40094;-4.29196;,
 0.00523;-0.40094;-6.06975;,
 6.07498;-0.40094;0.00000;,
 4.29719;-0.40094;4.29196;,
 0.00523;-0.40094;6.06975;,
 -4.28673;-0.40094;4.29196;,
 -6.06452;-0.40094;-0.00000;,
 -4.28673;-0.40094;-4.29196;,
 4.49484;-0.81928;-4.48961;,
 0.00523;-0.81928;-6.34927;,
 6.35450;-0.81928;0.00000;,
 4.49484;-0.81928;4.48961;,
 0.00523;-0.81928;6.34927;,
 -4.48438;-0.81928;4.48961;,
 -6.34405;-0.81928;-0.00000;,
 -4.48438;-0.81928;-4.48961;,
 4.56425;-1.31274;-4.55902;,
 0.00523;-1.31274;-6.44743;,
 6.45266;-1.31274;0.00000;,
 4.56425;-1.31274;4.55902;,
 0.00523;-1.31274;6.44743;,
 -4.55379;-1.31274;4.55902;,
 -6.44219;-1.31274;-0.00000;,
 -4.55379;-1.31274;-4.55902;,
 4.56425;-11.62863;-4.55902;,
 0.00523;-11.62863;-6.44743;,
 6.45266;-11.62863;0.00000;,
 4.56425;-11.62863;4.55902;,
 0.00523;-11.62863;6.44743;,
 -4.55379;-11.62863;4.55902;,
 -6.44219;-11.62863;-0.00000;,
 -4.55379;-11.62863;-4.55902;,
 4.49484;-12.12210;-4.48961;,
 0.00523;-12.12210;-6.34927;,
 6.35450;-12.12210;0.00000;,
 4.49484;-12.12210;4.48961;,
 0.00523;-12.12210;6.34927;,
 -4.48438;-12.12210;4.48961;,
 -6.34405;-12.12210;-0.00000;,
 -4.48438;-12.12210;-4.48961;,
 4.29719;-12.54044;-4.29196;,
 0.00523;-12.54044;-6.06975;,
 6.07498;-12.54044;0.00000;,
 4.29719;-12.54044;4.29196;,
 0.00523;-12.54044;6.06975;,
 -4.28673;-12.54044;4.29196;,
 -6.06452;-12.54044;-0.00000;,
 -4.28673;-12.54044;-4.29196;,
 4.00138;-12.81996;-3.99615;,
 0.00523;-12.81996;-5.65141;,
 5.65664;-12.81996;0.00000;,
 4.00138;-12.81996;3.99615;,
 0.00523;-12.81996;5.65141;,
 -3.99092;-12.81996;3.99615;,
 -5.64618;-12.81996;-0.00000;,
 -3.99092;-12.81996;-3.99615;,
 3.65245;-12.91812;-3.64722;,
 0.00523;-12.91812;-5.15794;,
 5.16317;-12.91812;0.00000;,
 3.65245;-12.91812;3.64722;,
 0.00523;-12.91812;5.15794;,
 -3.64199;-12.91812;3.64722;,
 -5.15271;-12.91812;-0.00000;,
 -3.64199;-12.91812;-3.64722;,
 0.00523;-12.91812;-0.00000;;
 
 88;
 3;0,1,2;,
 3;0,3,1;,
 3;0,4,3;,
 3;0,5,4;,
 3;0,6,5;,
 3;0,7,6;,
 3;0,8,7;,
 3;0,2,8;,
 4;2,1,9,10;,
 4;1,3,11,9;,
 4;3,4,12,11;,
 4;4,5,13,12;,
 4;5,6,14,13;,
 4;6,7,15,14;,
 4;7,8,16,15;,
 4;8,2,10,16;,
 4;10,9,17,18;,
 4;9,11,19,17;,
 4;11,12,20,19;,
 4;12,13,21,20;,
 4;13,14,22,21;,
 4;14,15,23,22;,
 4;15,16,24,23;,
 4;16,10,18,24;,
 4;18,17,25,26;,
 4;17,19,27,25;,
 4;19,20,28,27;,
 4;20,21,29,28;,
 4;21,22,30,29;,
 4;22,23,31,30;,
 4;23,24,32,31;,
 4;24,18,26,32;,
 4;26,25,33,34;,
 4;25,27,35,33;,
 4;27,28,36,35;,
 4;28,29,37,36;,
 4;29,30,38,37;,
 4;30,31,39,38;,
 4;31,32,40,39;,
 4;32,26,34,40;,
 4;34,33,41,42;,
 4;33,35,43,41;,
 4;35,36,44,43;,
 4;36,37,45,44;,
 4;37,38,46,45;,
 4;38,39,47,46;,
 4;39,40,48,47;,
 4;40,34,42,48;,
 4;42,41,49,50;,
 4;41,43,51,49;,
 4;43,44,52,51;,
 4;44,45,53,52;,
 4;45,46,54,53;,
 4;46,47,55,54;,
 4;47,48,56,55;,
 4;48,42,50,56;,
 4;50,49,57,58;,
 4;49,51,59,57;,
 4;51,52,60,59;,
 4;52,53,61,60;,
 4;53,54,62,61;,
 4;54,55,63,62;,
 4;55,56,64,63;,
 4;56,50,58,64;,
 4;58,57,65,66;,
 4;57,59,67,65;,
 4;59,60,68,67;,
 4;60,61,69,68;,
 4;61,62,70,69;,
 4;62,63,71,70;,
 4;63,64,72,71;,
 4;64,58,66,72;,
 4;66,65,73,74;,
 4;65,67,75,73;,
 4;67,68,76,75;,
 4;68,69,77,76;,
 4;69,70,78,77;,
 4;70,71,79,78;,
 4;71,72,80,79;,
 4;72,66,74,80;,
 3;74,73,81;,
 3;73,75,81;,
 3;75,76,81;,
 3;76,77,81;,
 3;77,78,81;,
 3;78,79,81;,
 3;79,80,81;,
 3;80,74,81;;
 
 MeshMaterialList {
  3;
  88;
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2;;
  Material {
   0.800000;0.175686;0.235294;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.075294;0.075294;0.075294;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.586667;0.219608;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  82;
  0.000000;1.000000;0.000000;,
  -0.000000;0.995201;-0.097855;,
  0.069194;0.995201;-0.069194;,
  0.097855;0.995201;0.000000;,
  0.069194;0.995201;0.069194;,
  0.000000;0.995201;0.097855;,
  -0.069194;0.995201;0.069194;,
  -0.097854;0.995201;0.000000;,
  -0.069194;0.995201;-0.069194;,
  -0.000000;0.924736;-0.380609;,
  0.269131;0.924736;-0.269131;,
  0.380609;0.924736;0.000000;,
  0.269131;0.924736;0.269131;,
  -0.000000;0.924736;0.380609;,
  -0.269132;0.924736;0.269132;,
  -0.380610;0.924736;-0.000000;,
  -0.269132;0.924736;-0.269132;,
  -0.000000;0.709230;-0.704977;,
  0.498494;0.709230;-0.498494;,
  0.704977;0.709230;-0.000000;,
  0.498494;0.709230;0.498494;,
  -0.000000;0.709230;0.704977;,
  -0.498494;0.709230;0.498494;,
  -0.704977;0.709230;-0.000000;,
  -0.498494;0.709230;-0.498494;,
  -0.000000;0.384550;-0.923104;,
  0.652733;0.384550;-0.652733;,
  0.923104;0.384550;0.000000;,
  0.652733;0.384550;0.652733;,
  -0.000000;0.384550;0.923104;,
  -0.652733;0.384550;0.652733;,
  -0.923105;0.384548;-0.000000;,
  -0.652734;0.384549;-0.652734;,
  -0.000000;0.098153;-0.995171;,
  0.703692;0.098154;-0.703692;,
  0.995171;0.098154;0.000000;,
  0.703692;0.098154;0.703692;,
  -0.000000;0.098154;0.995171;,
  -0.703693;0.098152;0.703692;,
  -0.995172;0.098149;-0.000000;,
  -0.703693;0.098151;-0.703692;,
  -0.000000;-0.098153;-0.995171;,
  0.703692;-0.098154;-0.703692;,
  0.995171;-0.098154;0.000000;,
  0.703692;-0.098154;0.703692;,
  -0.000000;-0.098154;0.995171;,
  -0.703693;-0.098152;0.703692;,
  -0.995172;-0.098149;-0.000000;,
  -0.703693;-0.098151;-0.703692;,
  -0.000000;-0.384550;-0.923104;,
  0.652733;-0.384550;-0.652733;,
  0.923104;-0.384550;0.000000;,
  0.652733;-0.384550;0.652733;,
  -0.000000;-0.384550;0.923104;,
  -0.652733;-0.384550;0.652733;,
  -0.923105;-0.384548;-0.000000;,
  -0.652734;-0.384549;-0.652734;,
  -0.000000;-0.709229;-0.704978;,
  0.498495;-0.709229;-0.498495;,
  0.704978;-0.709229;-0.000000;,
  0.498495;-0.709229;0.498495;,
  -0.000000;-0.709229;0.704978;,
  -0.498495;-0.709229;0.498495;,
  -0.704978;-0.709229;-0.000000;,
  -0.498495;-0.709229;-0.498495;,
  -0.000000;-0.924736;-0.380610;,
  0.269132;-0.924736;-0.269132;,
  0.380610;-0.924736;-0.000000;,
  0.269132;-0.924736;0.269132;,
  -0.000000;-0.924736;0.380610;,
  -0.269132;-0.924736;0.269132;,
  -0.380611;-0.924735;0.000000;,
  -0.269132;-0.924736;-0.269132;,
  -0.000000;-0.995201;-0.097855;,
  0.069194;-0.995201;-0.069194;,
  0.097855;-0.995201;0.000000;,
  0.069194;-0.995201;0.069194;,
  0.000000;-0.995201;0.097855;,
  -0.069194;-0.995201;0.069194;,
  -0.097854;-0.995201;0.000000;,
  -0.069194;-0.995201;-0.069194;,
  0.000000;-1.000000;-0.000000;;
  88;
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,6,5;,
  3;0,7,6;,
  3;0,8,7;,
  3;0,1,8;,
  4;1,2,10,9;,
  4;2,3,11,10;,
  4;3,4,12,11;,
  4;4,5,13,12;,
  4;5,6,14,13;,
  4;6,7,15,14;,
  4;7,8,16,15;,
  4;8,1,9,16;,
  4;9,10,18,17;,
  4;10,11,19,18;,
  4;11,12,20,19;,
  4;12,13,21,20;,
  4;13,14,22,21;,
  4;14,15,23,22;,
  4;15,16,24,23;,
  4;16,9,17,24;,
  4;17,18,26,25;,
  4;18,19,27,26;,
  4;19,20,28,27;,
  4;20,21,29,28;,
  4;21,22,30,29;,
  4;22,23,31,30;,
  4;23,24,32,31;,
  4;24,17,25,32;,
  4;25,26,34,33;,
  4;26,27,35,34;,
  4;27,28,36,35;,
  4;28,29,37,36;,
  4;29,30,38,37;,
  4;30,31,39,38;,
  4;31,32,40,39;,
  4;32,25,33,40;,
  4;33,34,42,41;,
  4;34,35,43,42;,
  4;35,36,44,43;,
  4;36,37,45,44;,
  4;37,38,46,45;,
  4;38,39,47,46;,
  4;39,40,48,47;,
  4;40,33,41,48;,
  4;41,42,50,49;,
  4;42,43,51,50;,
  4;43,44,52,51;,
  4;44,45,53,52;,
  4;45,46,54,53;,
  4;46,47,55,54;,
  4;47,48,56,55;,
  4;48,41,49,56;,
  4;49,50,58,57;,
  4;50,51,59,58;,
  4;51,52,60,59;,
  4;52,53,61,60;,
  4;53,54,62,61;,
  4;54,55,63,62;,
  4;55,56,64,63;,
  4;56,49,57,64;,
  4;57,58,66,65;,
  4;58,59,67,66;,
  4;59,60,68,67;,
  4;60,61,69,68;,
  4;61,62,70,69;,
  4;62,63,71,70;,
  4;63,64,72,71;,
  4;64,57,65,72;,
  4;65,66,74,73;,
  4;66,67,75,74;,
  4;67,68,76,75;,
  4;68,69,77,76;,
  4;69,70,78,77;,
  4;70,71,79,78;,
  4;71,72,80,79;,
  4;72,65,73,80;,
  3;73,74,81;,
  3;74,75,81;,
  3;75,76,81;,
  3;76,77,81;,
  3;77,78,81;,
  3;78,79,81;,
  3;79,80,81;,
  3;80,73,81;;
 }
 MeshTextureCoords {
  82;
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}
