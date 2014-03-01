//Maya ASCII 2012 scene
//Name: midtermshotv2.ma
//Last modified: Fri, Feb 28, 2014 08:31:27 PM
//Codeset: UTF-8
file -rdi 1 -pm "midtermshotPM" -pt "original" -ns "midtermshot" -dr 1 -rfn "midtermshotRN"
		 "/Users/pdburgess86/3D-Essentials//scenes/midterm/midtermshot.ma";
file -rdi 1 -ns "car_update_uv" -rfn "car_update_uvRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 4/car update uv.ma";
file -rdi 1 -ns "deer_update" -rfn "deer_updateRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 4/deer update.ma";
file -rdi 1 -ns "shack" -rfn "shackRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 4/shack.ma";
file -rdi 1 -pm "midtermshotPM" -ap -pt "midtermshotPM1" -ns "midtermshot" 
		-rfn "midtermshotmidtermshotPM1RN" "/Users/pdburgess86/3D-Essentials//scenes/midterm/midtermshotnobackground.ma";
file -r -pm "midtermshotPM" -pt "original" -ns "midtermshot" -dr 1 -rfn "midtermshotRN"
		 "/Users/pdburgess86/3D-Essentials//scenes/midterm/midtermshot.ma";
file -r -ns "car_update_uv" -dr 1 -rfn "car_update_uvRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 4/car update uv.ma";
file -r -ns "deer_update" -dr 1 -rfn "deer_updateRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 4/deer update.ma";
file -r -ns "shack" -dr 1 -rfn "shackRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 4/shack.ma";
file -r -pm "midtermshotPM" -ap -pt "midtermshotPM1" -ns "midtermshot" -dr 1 -rfn
		 "midtermshotmidtermshotPM1RN" "/Users/pdburgess86/3D-Essentials//scenes/midterm/midtermshotnobackground.ma";
requires maya "2012";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "201201172010-821143";
fileInfo "osv" "Mac OS X 10.8.4";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.1566695940478429 4.6889454279831018 14.421866568963782 ;
	setAttr ".r" -type "double3" -16.538352729604167 4.2000000000030715 9.9659972922829414e-17 ;
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 1.7763568394002505e-15 ;
	setAttr ".rpt" -type "double3" -5.4065224544093283e-16 -5.6092456215485779e-16 1.7721200380153673e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 28.828085970421608;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.059968981316409112 -0.2558844970690477 -13.962021059460778 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 3 ".dli[1:2]"  1 2;
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
	setAttr -s 4 ".rlmi[1:3]"  1 2 3;
	setAttr -s 4 ".rlmi";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
	setAttr ".rndr" no;
createNode reference -n "midtermshotRN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"midtermshotRN"
		"midtermshotRN" 6
		2 "|midtermshot:camera1" "translate" " -type \"double3\" 0.294016 2.006889 8.553712"
		
		2 "|midtermshot:camera1" "rotate" " -type \"double3\" -6 2.8 0"
		2 "|midtermshot:camera1" "rotatePivot" " -type \"double3\" 0 0 0"
		2 "|midtermshot:camera1" "rotatePivotTranslate" " -type \"double3\" 0 0 0"
		
		2 "|midtermshot:camera1|midtermshot:cameraShape1" "centerOfInterest" " 14.068253"
		
		2 "midtermshot:imagePlane1" "coverage" " -type \"short2\" 1920 1080";
	setAttr ".ptag" -type "string" "original";
lockNode -l 1 ;
createNode reference -n "car_update_uvRN";
	setAttr -s 11 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"car_update_uvRN"
		"car_update_uvRN" 0
		"car_update_uvRN" 31
		2 "|car_update_uv:nurbsCircle1" "translate" " -type \"double3\" 7.027558 -0.0423328 -1.629813"
		
		2 "|car_update_uv:nurbsCircle1" "translateX" " -av"
		2 "|car_update_uv:nurbsCircle1|car_update_uv:Car_body" "overrideDisplayType" 
		" 0"
		2 "|car_update_uv:nurbsCircle1|car_update_uv:Car_body" "overrideLevelOfDetail" 
		" 0"
		2 "|car_update_uv:nurbsCircle1|car_update_uv:Car_body" "overrideShading" 
		" 1"
		2 "|car_update_uv:nurbsCircle1|car_update_uv:Car_body" "overrideTexturing" 
		" 1"
		2 "|car_update_uv:nurbsCircle1|car_update_uv:Car_body" "overridePlayback" 
		" 1"
		2 "|car_update_uv:nurbsCircle1|car_update_uv:Car_body" "overrideEnabled" 
		" 1"
		2 "|car_update_uv:nurbsCircle1|car_update_uv:Car_body" "overrideVisibility" 
		" 1"
		2 "|car_update_uv:nurbsCircle1|car_update_uv:Car_body" "overrideColor" " 0"
		
		2 "|car_update_uv:nurbsCircle1|car_update_uv:Car_body" "translate" " -type \"double3\" -0.00808627 -0.36165 -0.623773"
		
		2 "|car_update_uv:nurbsCircle1|car_update_uv:Car_body" "rotate" " -type \"double3\" 0 -90 0"
		
		2 "|car_update_uv:nurbsCircle1|car_update_uv:Car_body" "scale" " -type \"double3\" 0.737778 0.737778 0.737778"
		
		2 "car_update_uv:base" "displayOrder" " 1"
		2 "car_update_uv:file1" "fileTextureName" " -type \"string\" \"/Users/pdburgess86/3D-Essentials//sourceimages/3dPaintTextures/car update uv/Car_bodyShape_color.iff\""
		
		2 "car_update_uv:file2" "fileTextureName" " -type \"string\" \"/Users/pdburgess86/3D-Essentials//sourceimages/3dPaintTextures/car update uv/front_left_wheelShape_color.iff\""
		
		2 "car_update_uv:file3" "fileTextureName" " -type \"string\" \"/Users/pdburgess86/3D-Essentials//sourceimages/3dPaintTextures/car update uv/back_left_wheelShape_color.iff\""
		
		2 "car_update_uv:file4" "fileTextureName" " -type \"string\" \"/Users/pdburgess86/3D-Essentials//sourceimages/3dPaintTextures/car update uv/front_right_wheelShape_color.iff\""
		
		2 "car_update_uv:file5" "fileTextureName" " -type \"string\" \"/Users/pdburgess86/3D-Essentials//sourceimages/3dPaintTextures/car update uv/back_left_wheelShape1_color.iff\""
		
		3 "car_update_uv:base.drawInfo" "|car_update_uv:nurbsCircle1|car_update_uv:Car_body.drawOverride" 
		""
		5 4 "car_update_uvRN" "|car_update_uv:nurbsCircle1.translateX" "car_update_uvRN.placeHolderList[1]" 
		""
		5 4 "car_update_uvRN" "|car_update_uv:nurbsCircle1.translateY" "car_update_uvRN.placeHolderList[2]" 
		""
		5 4 "car_update_uvRN" "|car_update_uv:nurbsCircle1.translateZ" "car_update_uvRN.placeHolderList[3]" 
		""
		5 4 "car_update_uvRN" "|car_update_uv:nurbsCircle1.visibility" "car_update_uvRN.placeHolderList[4]" 
		""
		5 4 "car_update_uvRN" "|car_update_uv:nurbsCircle1.rotateX" "car_update_uvRN.placeHolderList[5]" 
		""
		5 4 "car_update_uvRN" "|car_update_uv:nurbsCircle1.rotateY" "car_update_uvRN.placeHolderList[6]" 
		""
		5 4 "car_update_uvRN" "|car_update_uv:nurbsCircle1.rotateZ" "car_update_uvRN.placeHolderList[7]" 
		""
		5 4 "car_update_uvRN" "|car_update_uv:nurbsCircle1.scaleX" "car_update_uvRN.placeHolderList[8]" 
		""
		5 4 "car_update_uvRN" "|car_update_uv:nurbsCircle1.scaleY" "car_update_uvRN.placeHolderList[9]" 
		""
		5 4 "car_update_uvRN" "|car_update_uv:nurbsCircle1.scaleZ" "car_update_uvRN.placeHolderList[10]" 
		""
		5 4 "car_update_uvRN" "|car_update_uv:nurbsCircle1|car_update_uv:Car_body.renderLayerInfo[0]" 
		"car_update_uvRN.placeHolderList[11]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "deer_updateRN";
	setAttr ".phl[1]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"deer_updateRN"
		"deer_updateRN" 0
		"deer_updateRN" 12
		2 "|deer_update:pCube1" "overrideDisplayType" " 0"
		2 "|deer_update:pCube1" "overrideLevelOfDetail" " 0"
		2 "|deer_update:pCube1" "overrideShading" " 1"
		2 "|deer_update:pCube1" "overrideTexturing" " 1"
		2 "|deer_update:pCube1" "overridePlayback" " 1"
		2 "|deer_update:pCube1" "overrideEnabled" " 1"
		2 "|deer_update:pCube1" "overrideVisibility" " 1"
		2 "|deer_update:pCube1" "overrideColor" " 0"
		2 "|deer_update:pCube1" "translate" " -type \"double3\" -18.601078 -4.32497 -61.467591"
		
		2 "|deer_update:pCube1" "rotate" " -type \"double3\" 0 60 0"
		2 "|deer_update:pCube1" "scale" " -type \"double3\" 0.796846 0.796846 0.796846"
		
		5 4 "deer_updateRN" "|deer_update:pCube1.renderLayerInfo[0]" "deer_updateRN.placeHolderList[1]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "shackRN";
	setAttr ".phl[1]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"shackRN"
		"shackRN" 0
		"shackRN" 4
		2 "|shack:pCube1" "translate" " -type \"double3\" 3.869127 -1.094856 -51.931962"
		
		2 "|shack:pCube1" "rotate" " -type \"double3\" 0 0 0"
		2 "|shack:pCube1" "scale" " -type \"double3\" 1.471087 1.471087 1.471087"
		
		5 4 "shackRN" "|shack:pCube1.renderLayerInfo[0]" "shackRN.placeHolderList[1]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode renderLayer -n "DeerRenderLayer";
	setAttr ".do" 1;
createNode renderLayer -n "CarRenderLayer";
	setAttr ".do" 2;
createNode renderLayer -n "ShackRenderLayer";
	setAttr ".do" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1.25 -max 300 -ast 1.25 -aet 300 ";
	setAttr ".st" 6;
createNode proxyManager -n "midtermshotPM";
	setAttr -s 2 ".plst";
createNode reference -n "midtermshotmidtermshotPM1RN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"midtermshotmidtermshotPM1RN"
		"midtermshotmidtermshotPM1RN" 0
		"midtermshotmidtermshotPM1RN" 3
		2 "|midtermshot:camera1|midtermshot:cameraShape1" "renderable" " 1"
		2 "|midtermshot:camera1|midtermshot:cameraShape1" "depth" " 0"
		2 "|midtermshot:camera1|midtermshot:cameraShape1" "mask" " 1";
	setAttr ".ptag" -type "string" "midtermshotPM1";
lockNode -l 1 ;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode brush -n "art3dPaintLastPaintBrush";
	setAttr ".lcl[0]"  0 0.5 1;
	setAttr ".pcl[0]"  0 0.5 1;
	setAttr ".wsc[0]"  0 1 1;
	setAttr ".lws[0]"  0 1 1;
	setAttr ".pws[0]"  0 1 1;
	setAttr ".tls[0]"  0 1 1;
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0 0 0.15000001 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.5;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".rro[0]"  0 1 1;
createNode animCurveTL -n "car_update_uv:nurbsCircle1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 8.819737601751493 109 3.4213030198007655
		 237 3.4213030198007655 300 -15.110856414193735;
	setAttr -s 4 ".kit[3]"  2;
	setAttr -s 4 ".kot[3]"  2;
createNode animCurveTL -n "car_update_uv:nurbsCircle1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -0.042332760258568802 109 -0.042332760258568802
		 237 -0.042332760258568802 300 -0.042332760258568802;
createNode animCurveTL -n "car_update_uv:nurbsCircle1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -1.6298130286809465 109 -1.6298130286809465
		 237 -1.6298130286809465 300 -1.6298130286809465;
createNode animCurveTU -n "car_update_uv:nurbsCircle1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 109 1 237 1 300 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "car_update_uv:nurbsCircle1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 109 0 237 0 300 0;
createNode animCurveTA -n "car_update_uv:nurbsCircle1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 109 0 237 0 300 0;
createNode animCurveTA -n "car_update_uv:nurbsCircle1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 109 0 237 0 300 0;
createNode animCurveTU -n "car_update_uv:nurbsCircle1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 109 1 237 1 300 1;
createNode animCurveTU -n "car_update_uv:nurbsCircle1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 109 1 237 1 300 1;
createNode animCurveTU -n "car_update_uv:nurbsCircle1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 109 1 237 1 300 1;
	setAttr -s 4 ".kit[0:3]"  2 18 18 18;
	setAttr -s 4 ".kot[0:3]"  2 18 18 18;
select -ne :time1;
	setAttr ".o" 69;
	setAttr ".unw" 69;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :defaultTextureList1;
	setAttr -s 9 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 10 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 8 ".r";
select -ne :renderGlobalsList1;
select -ne :initialMaterialInfo;
	setAttr -s 8 ".t";
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 30;
	setAttr ".an" yes;
	setAttr ".fs" 1;
	setAttr ".ef" 300;
	setAttr ".ep" 3;
	setAttr ".pff" yes;
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 30;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "car_update_uv:nurbsCircle1_translateX.o" "car_update_uvRN.phl[1]";
connectAttr "car_update_uv:nurbsCircle1_translateY.o" "car_update_uvRN.phl[2]";
connectAttr "car_update_uv:nurbsCircle1_translateZ.o" "car_update_uvRN.phl[3]";
connectAttr "car_update_uv:nurbsCircle1_visibility.o" "car_update_uvRN.phl[4]";
connectAttr "car_update_uv:nurbsCircle1_rotateX.o" "car_update_uvRN.phl[5]";
connectAttr "car_update_uv:nurbsCircle1_rotateY.o" "car_update_uvRN.phl[6]";
connectAttr "car_update_uv:nurbsCircle1_rotateZ.o" "car_update_uvRN.phl[7]";
connectAttr "car_update_uv:nurbsCircle1_scaleX.o" "car_update_uvRN.phl[8]";
connectAttr "car_update_uv:nurbsCircle1_scaleY.o" "car_update_uvRN.phl[9]";
connectAttr "car_update_uv:nurbsCircle1_scaleZ.o" "car_update_uvRN.phl[10]";
connectAttr "CarRenderLayer.ri" "car_update_uvRN.phl[11]";
connectAttr "DeerRenderLayer.ri" "deer_updateRN.phl[1]";
connectAttr "ShackRenderLayer.ri" "shackRN.phl[1]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "midtermshotPM.plst[0]" "midtermshotRN.pmsg";
connectAttr "sharedReferenceNode.sr" "midtermshotRN.sr";
connectAttr "sharedReferenceNode.sr" "shackRN.sr";
connectAttr "renderLayerManager.rlmi[1]" "DeerRenderLayer.rlid";
connectAttr "renderLayerManager.rlmi[2]" "CarRenderLayer.rlid";
connectAttr "renderLayerManager.rlmi[3]" "ShackRenderLayer.rlid";
connectAttr "midtermshotPM.aprx" "midtermshotPM.plst[1]";
connectAttr "midtermshotPM.plst[1]" "midtermshotmidtermshotPM1RN.pmsg";
connectAttr "sharedReferenceNode.sr" "midtermshotmidtermshotPM1RN.sr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "DeerRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "CarRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ShackRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of midtermshotv2.ma
