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
 44;
 -0.00616;-0.01857;-0.33135;,
 0.75238;-0.24175;-2.25153;,
 -0.00616;-0.24175;-2.73885;,
 -0.00616;-0.01857;-0.33135;,
 1.06658;-0.24175;-0.33135;,
 -0.00616;-0.01857;-0.33135;,
 0.75238;-0.24175;0.84514;,
 -0.00616;-0.01857;-0.33135;,
 -0.00616;-0.24175;1.33247;,
 -0.00616;-0.01857;-0.33135;,
 -0.76470;-0.24175;0.84514;,
 -0.00616;-0.01857;-0.33135;,
 -1.07890;-0.24175;-0.33135;,
 -0.00616;-0.01857;-0.33135;,
 -0.76470;-0.24175;-2.25153;,
 -0.00616;-0.01857;-0.33135;,
 -0.00616;-0.24175;-2.73885;,
 1.39544;-0.87729;-3.24892;,
 -0.00616;-0.87729;-4.14937;,
 1.97600;-0.87729;-0.33135;,
 1.39544;-0.87729;1.08105;,
 -0.00616;-0.87729;2.15317;,
 -1.40776;-0.87729;1.08105;,
 -1.98832;-0.87729;-0.33135;,
 -1.40776;-0.87729;-3.24892;,
 -0.00616;-0.87729;-4.14937;,
 1.82512;-1.82846;-3.91534;,
 -0.00616;-1.82846;-5.09184;,
 2.31452;-1.82846;-0.33135;,
 1.82512;-1.82846;1.74749;,
 -0.00616;-1.82846;2.51938;,
 -1.83744;-1.82846;1.74749;,
 -2.32684;-1.82846;-0.33135;,
 -1.83744;-1.82846;-3.91534;,
 -0.00616;-1.82846;-5.09184;,
 1.97600;-2.95046;-4.14937;,
 -0.00616;-2.95046;-5.42279;,
 2.50573;-2.95046;-0.33135;,
 1.97600;-2.95046;1.98151;,
 -0.00616;-2.95046;2.85033;,
 -1.98832;-2.95046;1.98151;,
 -2.51805;-2.95046;-0.33135;,
 -1.98832;-2.95046;-4.14937;,
 -0.00616;-2.95046;-5.42279;;
 
 35;
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
 4;43,35,37,38;,
 4;43,38,39,40;,
 4;43,40,41,42;;
 
 MeshMaterialList {
  5;
  35;
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
   0.109804;0.109804;0.109804;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.232157;0.520784;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.290196;0.650980;1.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   1.000000;1.000000;1.000000;;
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  35;
  0.000000;0.999879;0.015572;,
  -0.000000;0.967608;-0.252459;,
  0.284699;0.944760;-0.162402;,
  0.413124;0.910167;0.030390;,
  0.343533;0.903884;0.254909;,
  -0.000000;0.921796;0.387677;,
  -0.343534;0.903884;0.254909;,
  -0.413125;0.910167;0.030390;,
  -0.284699;0.944760;-0.162403;,
  -0.000000;0.824762;-0.565480;,
  0.580462;0.735045;-0.350391;,
  0.776291;0.627585;0.059242;,
  0.609576;0.630391;0.480649;,
  -0.000000;0.669238;0.743048;,
  -0.609576;0.630391;0.480649;,
  -0.776291;0.627585;0.059242;,
  -0.580462;0.735044;-0.350391;,
  -0.000000;0.516004;-0.856586;,
  0.778642;0.400235;-0.483248;,
  0.953195;0.297128;0.055989;,
  0.721045;0.365162;0.588855;,
  -0.000000;0.413130;0.910672;,
  -0.721046;0.365162;0.588855;,
  -0.953195;0.297128;0.055989;,
  -0.778643;0.400234;-0.483248;,
  0.524598;0.240865;-0.816567;,
  0.823853;0.221600;-0.521689;,
  0.984602;0.168937;0.044930;,
  0.748670;0.233346;0.620518;,
  -0.000000;0.269648;0.962959;,
  -0.748671;0.233345;0.620517;,
  -0.984602;0.168937;0.044930;,
  -0.823853;0.221600;-0.521689;,
  -0.524599;0.240864;-0.816566;,
  0.000000;-1.000000;-0.000000;;
  35;
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
  4;24,17,33,32;,
  4;34,34,34,34;,
  4;34,34,34,34;,
  4;34,34,34,34;;
 }
 MeshTextureCoords {
  44;
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
  1.000000;0.500000;;
 }
}
