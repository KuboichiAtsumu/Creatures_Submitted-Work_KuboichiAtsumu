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
 88;
 0.00000;14.68361;-3.21922;,
 3.17423;14.85735;-8.01363;,
 0.00000;13.90362;-8.91868;,
 0.00000;14.68361;-3.21922;,
 4.48904;17.15986;-5.82863;,
 0.00000;14.68361;-3.21922;,
 3.17423;19.46236;-3.64364;,
 0.00000;14.68361;-3.21922;,
 -0.00000;20.41610;-2.73858;,
 0.00000;14.68361;-3.21922;,
 -3.17423;19.46236;-3.64364;,
 0.00000;14.68361;-3.21922;,
 -4.48904;17.15985;-5.82863;,
 0.00000;14.68361;-3.21922;,
 -3.17423;14.85735;-8.01363;,
 0.00000;14.68361;-3.21922;,
 0.00000;13.90362;-8.91868;,
 5.86522;11.15500;-8.02146;,
 0.00000;9.39274;-9.69379;,
 8.29467;15.40947;-3.98412;,
 5.86522;19.66396;0.05323;,
 -0.00000;21.42622;1.72556;,
 -5.86522;19.66396;0.05323;,
 -8.29467;15.40947;-3.98412;,
 -5.86522;11.15500;-8.02146;,
 0.00000;9.39274;-9.69379;,
 4.19103;9.79231;-4.15333;,
 0.00000;8.53308;-5.34830;,
 5.92701;12.83238;-1.26842;,
 4.19103;15.87244;1.61650;,
 -0.00000;17.13169;2.81147;,
 -4.19103;15.87244;1.61650;,
 -5.92701;12.83238;-1.26842;,
 -4.19103;9.79231;-4.15333;,
 0.00000;8.53308;-5.34830;,
 6.27335;6.72379;-3.94485;,
 0.00000;4.83890;-5.73355;,
 8.87186;11.27432;0.37343;,
 6.27335;15.82485;4.69172;,
 -0.00000;17.70974;6.48042;,
 -6.27335;15.82485;4.69172;,
 -8.87186;11.27432;0.37343;,
 -6.27335;6.72379;-3.94485;,
 0.00000;4.83890;-5.73355;,
 5.79582;4.73314;-1.15342;,
 0.00000;2.99173;-4.51674;,
 7.29275;8.93728;1.44457;,
 5.26430;9.44760;6.22387;,
 -0.00000;9.29253;8.19118;,
 -5.45945;9.44760;6.24281;,
 -7.35292;8.93728;1.44457;,
 -5.79582;4.73314;-1.15342;,
 0.00000;2.99173;-4.51674;,
 2.42600;2.03084;-2.30199;,
 0.00000;2.21174;-3.56049;,
 3.43088;2.09334;0.73631;,
 2.42600;2.15728;3.77462;,
 -0.00000;2.29925;4.24889;,
 -2.42600;2.15728;3.77462;,
 -3.43088;2.09334;0.73631;,
 -2.42600;2.03084;-2.30199;,
 0.00000;2.21174;-3.56049;,
 0.00000;3.49714;0.00000;,
 3.76084;2.43920;-3.76084;,
 0.00000;2.43920;-5.31863;,
 0.00000;3.49714;0.00000;,
 5.31863;2.43920;0.00000;,
 0.00000;3.49714;0.00000;,
 3.76084;2.43920;3.76084;,
 0.00000;3.49714;0.00000;,
 -0.00000;2.43920;5.31863;,
 0.00000;3.49714;0.00000;,
 -3.76084;2.43920;3.76084;,
 0.00000;3.49714;0.00000;,
 -5.31863;2.43920;-0.00000;,
 0.00000;3.49714;0.00000;,
 -3.76084;2.43920;-3.76084;,
 0.00000;3.49714;0.00000;,
 0.00000;2.43920;-5.31863;,
 6.94911;-0.57356;-6.94911;,
 0.00000;-0.57356;-9.82754;,
 9.82754;-0.57356;0.00000;,
 6.94911;-0.57356;6.94911;,
 -0.00000;-0.57356;9.82754;,
 -6.94911;-0.57356;6.94911;,
 -9.82754;-0.57356;-0.00000;,
 -6.94911;-0.57356;-6.94911;,
 0.00000;-0.57356;-9.82754;;
 
 64;
 3;0,1,2;,
 3;3,4,1;,
 3;5,6,4;,
 3;7,8,6;,
 3;9,10,8;,
 3;11,12,10;,
 3;13,14,12;,
 3;15,16,14;,
 4;2,1,17,18;,
 4;1,4,19,17;,
 4;4,6,20,19;,
 4;6,8,21,20;,
 4;8,10,22,21;,
 4;10,12,23,22;,
 4;12,14,24,23;,
 4;14,16,25,24;,
 4;18,17,26,27;,
 4;17,19,28,26;,
 4;19,20,29,28;,
 4;20,21,30,29;,
 4;21,22,31,30;,
 4;22,23,32,31;,
 4;23,24,33,32;,
 4;24,25,34,33;,
 4;27,26,35,36;,
 4;26,28,37,35;,
 4;28,29,38,37;,
 4;29,30,39,38;,
 4;30,31,40,39;,
 4;31,32,41,40;,
 4;32,33,42,41;,
 4;33,34,43,42;,
 4;36,35,44,45;,
 4;35,37,46,44;,
 4;37,38,47,46;,
 4;38,39,48,47;,
 4;39,40,49,48;,
 4;40,41,50,49;,
 4;41,42,51,50;,
 4;42,43,52,51;,
 4;45,44,53,54;,
 4;44,46,55,53;,
 4;46,47,56,55;,
 4;47,48,57,56;,
 4;48,49,58,57;,
 4;49,50,59,58;,
 4;50,51,60,59;,
 4;51,52,61,60;,
 3;62,63,64;,
 3;65,66,63;,
 3;67,68,66;,
 3;69,70,68;,
 3;71,72,70;,
 3;73,74,72;,
 3;75,76,74;,
 3;77,78,76;,
 4;64,63,79,80;,
 4;63,66,81,79;,
 4;66,68,82,81;,
 4;68,70,83,82;,
 4;70,72,84,83;,
 4;72,74,85,84;,
 4;74,76,86,85;,
 4;76,78,87,86;;
 
 MeshMaterialList {
  2;
  64;
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.288627;0.288627;0.288627;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  76;
  0.000000;0.688354;-0.725374;,
  0.000000;0.990765;-0.135590;,
  -0.442183;0.857907;-0.261668;,
  -0.625341;0.537158;-0.566047;,
  -0.442183;0.216409;-0.870426;,
  -0.000000;0.083552;-0.996504;,
  0.442183;0.216409;-0.870426;,
  0.625341;0.537159;-0.566047;,
  0.442183;0.857907;-0.261667;,
  0.000000;0.169348;-0.985556;,
  0.392849;0.287383;-0.873545;,
  0.555572;0.572345;-0.603126;,
  0.392849;0.857307;-0.332708;,
  0.000000;0.975342;-0.220697;,
  -0.392849;0.857307;-0.332708;,
  -0.555571;0.572345;-0.603126;,
  -0.392848;0.287384;-0.873545;,
  -0.000000;-0.980988;-0.194068;,
  0.597626;-0.801425;-0.023669;,
  0.845171;-0.367923;0.387710;,
  0.597627;0.065580;0.799088;,
  -0.000000;0.245143;0.969487;,
  -0.597627;0.065580;0.799088;,
  -0.845171;-0.367923;0.387710;,
  -0.597626;-0.801425;-0.023669;,
  -0.000000;-0.323045;-0.946384;,
  0.481047;-0.072159;-0.873720;,
  0.609404;0.545768;-0.575120;,
  0.430914;0.858342;-0.278498;,
  0.000000;0.987815;-0.155634;,
  -0.430914;0.858342;-0.278499;,
  -0.609404;0.545768;-0.575120;,
  -0.481047;-0.072159;-0.873720;,
  -0.000000;-0.674374;-0.738390;,
  0.696075;-0.628284;-0.347475;,
  0.867415;-0.433401;0.244449;,
  0.622076;-0.243257;0.744209;,
  0.003501;-0.149278;0.988789;,
  -0.625378;-0.242171;0.741792;,
  -0.870830;-0.432486;0.233691;,
  -0.694860;-0.627537;-0.351236;,
  -0.000000;-0.630333;-0.776325;,
  0.653576;-0.669389;-0.353209;,
  0.801604;-0.561967;0.204020;,
  0.571391;-0.500888;0.650095;,
  0.003640;-0.466296;0.884621;,
  -0.568524;-0.509461;0.645934;,
  -0.799595;-0.567798;0.195581;,
  -0.652028;-0.669754;-0.355372;,
  -0.000000;0.103723;-0.994606;,
  0.430914;0.233194;-0.871742;,
  -0.430914;0.233194;-0.871741;,
  0.904623;-0.426194;0.003933;,
  0.915019;-0.289895;0.280537;,
  0.624686;0.029190;0.780330;,
  0.002952;0.194200;0.980958;,
  -0.630095;0.041316;0.775418;,
  -0.921871;-0.280739;0.267095;,
  -0.905303;-0.424710;-0.006912;,
  -0.000000;1.000000;0.000000;,
  -0.000000;0.924735;-0.380611;,
  0.269133;0.924735;-0.269133;,
  0.380611;0.924735;0.000000;,
  0.269133;0.924735;0.269133;,
  -0.000000;0.924735;0.380611;,
  -0.269133;0.924735;0.269132;,
  -0.380611;0.924735;0.000000;,
  -0.269133;0.924735;-0.269133;,
  -0.000000;0.831469;-0.555571;,
  0.392848;0.831469;-0.392848;,
  0.555571;0.831469;0.000000;,
  0.392848;0.831469;0.392848;,
  0.000000;0.831469;0.555571;,
  -0.392848;0.831469;0.392848;,
  -0.555571;0.831469;0.000000;,
  -0.392848;0.831469;-0.392848;;
  64;
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,6,5;,
  3;0,7,6;,
  3;0,8,7;,
  3;0,1,8;,
  4;9,10,10,9;,
  4;10,11,11,10;,
  4;11,12,12,11;,
  4;12,13,13,12;,
  4;13,14,14,13;,
  4;14,15,15,14;,
  4;15,16,16,15;,
  4;16,9,9,16;,
  4;17,18,18,17;,
  4;18,19,19,18;,
  4;19,20,20,19;,
  4;20,21,21,20;,
  4;21,22,22,21;,
  4;22,23,23,22;,
  4;23,24,24,23;,
  4;24,17,17,24;,
  4;49,50,26,25;,
  4;50,27,27,26;,
  4;27,28,28,27;,
  4;28,29,29,28;,
  4;29,30,30,29;,
  4;30,31,31,30;,
  4;31,51,32,31;,
  4;51,49,25,32;,
  4;25,26,34,33;,
  4;52,53,35,34;,
  4;53,54,36,35;,
  4;54,55,37,36;,
  4;55,56,38,37;,
  4;56,57,39,38;,
  4;57,58,40,39;,
  4;32,25,33,40;,
  4;33,34,42,41;,
  4;34,35,43,42;,
  4;35,36,44,43;,
  4;36,37,45,44;,
  4;37,38,46,45;,
  4;38,39,47,46;,
  4;39,40,48,47;,
  4;40,33,41,48;,
  3;59,61,60;,
  3;59,62,61;,
  3;59,63,62;,
  3;59,64,63;,
  3;59,65,64;,
  3;59,66,65;,
  3;59,67,66;,
  3;59,60,67;,
  4;60,61,69,68;,
  4;61,62,70,69;,
  4;62,63,71,70;,
  4;63,64,72,71;,
  4;64,65,73,72;,
  4;65,66,74,73;,
  4;66,67,75,74;,
  4;67,60,68,75;;
 }
 MeshTextureCoords {
  88;
  0.062500;0.000000;,
  0.125000;0.125000;,
  0.000000;0.125000;,
  0.187500;0.000000;,
  0.250000;0.125000;,
  0.312500;0.000000;,
  0.375000;0.125000;,
  0.437500;0.000000;,
  0.500000;0.125000;,
  0.562500;0.000000;,
  0.625000;0.125000;,
  0.687500;0.000000;,
  0.750000;0.125000;,
  0.812500;0.000000;,
  0.875000;0.125000;,
  0.937500;0.000000;,
  1.000000;0.125000;,
  0.125000;0.250000;,
  0.000000;0.250000;,
  0.250000;0.250000;,
  0.375000;0.250000;,
  0.500000;0.250000;,
  0.625000;0.250000;,
  0.750000;0.250000;,
  0.875000;0.250000;,
  1.000000;0.250000;,
  0.125000;0.375000;,
  0.000000;0.375000;,
  0.250000;0.375000;,
  0.375000;0.375000;,
  0.500000;0.375000;,
  0.625000;0.375000;,
  0.750000;0.375000;,
  0.875000;0.375000;,
  1.000000;0.375000;,
  0.125000;0.500000;,
  0.000000;0.500000;,
  0.250000;0.500000;,
  0.375000;0.500000;,
  0.500000;0.500000;,
  0.625000;0.500000;,
  0.750000;0.500000;,
  0.875000;0.500000;,
  1.000000;0.500000;,
  0.125000;0.625000;,
  0.000000;0.625000;,
  0.250000;0.625000;,
  0.375000;0.625000;,
  0.500000;0.625000;,
  0.625000;0.625000;,
  0.750000;0.625000;,
  0.875000;0.625000;,
  1.000000;0.625000;,
  0.125000;0.750000;,
  0.000000;0.750000;,
  0.250000;0.750000;,
  0.375000;0.750000;,
  0.500000;0.750000;,
  0.625000;0.750000;,
  0.750000;0.750000;,
  0.875000;0.750000;,
  1.000000;0.750000;,
  0.062500;0.000000;,
  0.125000;0.125000;,
  0.000000;0.125000;,
  0.187500;0.000000;,
  0.250000;0.125000;,
  0.312500;0.000000;,
  0.375000;0.125000;,
  0.437500;0.000000;,
  0.500000;0.125000;,
  0.562500;0.000000;,
  0.625000;0.125000;,
  0.687500;0.000000;,
  0.750000;0.125000;,
  0.812500;0.000000;,
  0.875000;0.125000;,
  0.937500;0.000000;,
  1.000000;0.125000;,
  0.125000;0.250000;,
  0.000000;0.250000;,
  0.250000;0.250000;,
  0.375000;0.250000;,
  0.500000;0.250000;,
  0.625000;0.250000;,
  0.750000;0.250000;,
  0.875000;0.250000;,
  1.000000;0.250000;;
 }
}
