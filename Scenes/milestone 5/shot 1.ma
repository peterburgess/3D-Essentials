//Maya ASCII 2012 scene
//Name: shot 1.ma
//Last modified: Sun, Feb 23, 2014 09:53:22 PM
//Codeset: UTF-8
file -rdi 1 -ns "camera_shot_1" -rfn "camera_shot_1RN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 5/camera shot 1.ma";
file -rdi 1 -ns "deer_update" -rfn "deer_updateRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 3/deer update.ma";
file -rdi 1 -ns "car_update_uv" -rfn "car_update_uvRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 4/car update uv.ma";
file -rdi 1 -ns "shack" -rfn "shackRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 1/shack.ma";
file -r -ns "camera_shot_1" -dr 1 -rfn "camera_shot_1RN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 5/camera shot 1.ma";
file -r -ns "deer_update" -dr 1 -rfn "deer_updateRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 3/deer update.ma";
file -r -ns "car_update_uv" -dr 1 -rfn "car_update_uvRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 4/car update uv.ma";
file -r -ns "shack" -dr 1 -rfn "shackRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 1/shack.ma";
requires maya "2012";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "201201172010-821143";
fileInfo "osv" "Mac OS X 10.8.4";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.47871469935245076 0.15368720626500076 3.9413090687687049 ;
	setAttr ".r" -type "double3" 0.26164727039597974 -0.9999999999986966 0 ;
	setAttr ".rp" -type "double3" 4.9620144663122807e-16 -1.2109804268167669e-15 0 ;
	setAttr ".rpt" -type "double3" 4.7250309166749186e-17 2.2810543763805795e-17 7.4846428760836829e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 3.9442023600397418;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.5527136788005009e-15 -1.723066134218243e-13 7.3185901783290319e-13 ;
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
	setAttr ".t" -type "double3" 100.1 0.94405594405594395 2.0979020979020979 ;
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
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
	setAttr -s 4 ".rlmi[1:3]"  1 2 3;
	setAttr -s 4 ".rlmi";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
	setAttr ".rndr" no;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode reference -n "camera_shot_1RN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"camera_shot_1RN"
		"camera_shot_1RN" 0
		"camera_shot_1RN" 4
		2 "|camera_shot_1:camera1|camera_shot_1:cameraShape1" "renderable" " 1"
		2 "|camera_shot_1:camera1|camera_shot_1:cameraShape1" "depth" " 0"
		2 "|camera_shot_1:camera1|camera_shot_1:cameraShape1" "mask" " 1"
		2 "camera_shot_1:imagePlane1" "coverage" " -type \"short2\" 1920 1080";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "deer_updateRN";
	setAttr ".phl[1]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"deer_updateRN"
		"deer_updateRN" 0
		"deer_updateRN" 4
		2 "|deer_update:pCube1" "translate" " -type \"double3\" -3.860815 -2.646189 -20.426385"
		
		2 "|deer_update:pCube1" "rotate" " -type \"double3\" 0 45 0"
		2 "|deer_update:pCube1" "scale" " -type \"double3\" 0.243818 0.243818 0.243818"
		
		5 4 "deer_updateRN" "|deer_update:pCube1.renderLayerInfo[0]" "deer_updateRN.placeHolderList[1]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "car_update_uvRN";
	setAttr ".phl[1]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"car_update_uvRN"
		"car_update_uvRN" 0
		"car_update_uvRN" 4
		2 "|car_update_uv:nurbsCircle1|car_update_uv:Car_body" "translate" " -type \"double3\" -2.196849 -1.586443 -6.073638"
		
		2 "|car_update_uv:nurbsCircle1|car_update_uv:Car_body" "rotate" " -type \"double3\" 0 90 0"
		
		2 "|car_update_uv:nurbsCircle1|car_update_uv:Car_body" "scale" " -type \"double3\" 0.278801 0.278801 0.278801"
		
		5 4 "car_update_uvRN" "|car_update_uv:nurbsCircle1|car_update_uv:Car_body.renderLayerInfo[0]" 
		"car_update_uvRN.placeHolderList[1]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "shackRN";
	setAttr ".phl[1]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"shackRN"
		"shackRN" 0
		"shackRN" 4
		2 "|shack:pCube1" "translate" " -type \"double3\" 5.822417 -0.01008 -22.676032"
		
		2 "|shack:pCube1" "rotate" " -type \"double3\" 0 -30 0"
		2 "|shack:pCube1" "scale" " -type \"double3\" 0.738818 0.738818 0.738818"
		
		5 4 "shackRN" "|shack:pCube1.renderLayerInfo[0]" "shackRN.placeHolderList[1]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode renderLayer -n "shackRenderLayer";
	setAttr ".do" 1;
createNode renderLayer -n "CarRenderLayer";
	setAttr ".do" 2;
createNode renderLayer -n "DeerRenderLayer";
	setAttr ".do" 3;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 8 ".r";
select -ne :renderGlobalsList1;
select -ne :initialMaterialInfo;
	setAttr -s 6 ".t";
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "DeerRenderLayer.ri" "deer_updateRN.phl[1]";
connectAttr "CarRenderLayer.ri" "car_update_uvRN.phl[1]";
connectAttr "shackRenderLayer.ri" "shackRN.phl[1]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "renderLayerManager.rlmi[1]" "shackRenderLayer.rlid";
connectAttr "renderLayerManager.rlmi[2]" "CarRenderLayer.rlid";
connectAttr "renderLayerManager.rlmi[3]" "DeerRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "shackRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "CarRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "DeerRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of shot 1.ma
