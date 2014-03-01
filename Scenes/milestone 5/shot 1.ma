//Maya ASCII 2012 scene
//Name: shot 1.ma
//Last modified: Fri, Feb 28, 2014 11:03:15 AM
//Codeset: UTF-8
file -rdi 1 -pm "camera_shot_1PM" -pt "original" -ns "camera_shot_1" -dr 1 -rfn
		 "camera_shot_1RN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 5/camera shot 1.ma";
file -rdi 1 -pm "deer_updatePM" -pt "original" -ns "deer_update" -dr 1 -rfn
		 "deer_updateRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 3/deer update.ma";
file -rdi 1 -ns "car_update_uv" -rfn "car_update_uvRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 4/car update uv.ma";
file -rdi 1 -pm "shackPM" -pt "original" -ns "shack" -dr 1 -rfn "shackRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 1/shack.ma";
file -rdi 1 -pm "camera_shot_1PM" -ap -pt "camera_shot_1PM1" -ns "camera_shot_1"
		 -rfn "camera_shot_1camera_shot_1PM1RN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 5/camera shot 1no background.ma";
file -rdi 1 -pm "deer_updatePM" -ap -pt "deer_updatePM1" -ns "deer_update" 
		-rfn "deer_updatedeer_updatePM1RN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 4/deer update.ma";
file -rdi 1 -pm "shackPM" -ap -pt "shackPM1" -ns "shack" -rfn "shackshackPM1RN"
		 "/Users/pdburgess86/3D-Essentials//scenes/milestone 4/shack.ma";
file -r -pm "camera_shot_1PM" -pt "original" -ns "camera_shot_1" -dr 1 -rfn "camera_shot_1RN"
		 "/Users/pdburgess86/3D-Essentials//scenes/milestone 5/camera shot 1.ma";
file -r -pm "deer_updatePM" -pt "original" -ns "deer_update" -dr 1 -rfn "deer_updateRN"
		 "/Users/pdburgess86/3D-Essentials//scenes/milestone 3/deer update.ma";
file -r -ns "car_update_uv" -dr 1 -rfn "car_update_uvRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 4/car update uv.ma";
file -r -pm "shackPM" -pt "original" -ns "shack" -dr 1 -rfn "shackRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 1/shack.ma";
file -r -pm "camera_shot_1PM" -ap -pt "camera_shot_1PM1" -ns "camera_shot_1" -dr
		 1 -rfn "camera_shot_1camera_shot_1PM1RN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 5/camera shot 1no background.ma";
file -r -pm "deer_updatePM" -ap -pt "deer_updatePM1" -ns "deer_update" -dr 1 -rfn
		 "deer_updatedeer_updatePM1RN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 4/deer update.ma";
file -r -pm "shackPM" -ap -pt "shackPM1" -ns "shack" -dr 1 -rfn "shackshackPM1RN"
		 "/Users/pdburgess86/3D-Essentials//scenes/milestone 4/shack.ma";
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
	setAttr ".t" -type "double3" -1.4191441861093026 4.7194734738027195 24.83472654641804 ;
	setAttr ".r" -type "double3" -6.9383527296051151 -9.7999999999961833 -1.6471116310130997e-13 ;
	setAttr ".rp" -type "double3" 4.4408920985006262e-16 0 0 ;
	setAttr ".rpt" -type "double3" 7.2910354416083687e-17 1.3942173414873141e-17 -7.8176983217504525e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 30.333923439051752;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.7061666505921007 1.0550947178342138 -4.837658399289495 ;
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
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
	setAttr -s 4 ".rlmi";
	setAttr ".rlmi[2]" 2;
	setAttr ".rlmi[4:5]" 1 3;
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
	setAttr ".rndr" no;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode reference -n "camera_shot_1RN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"camera_shot_1RN"
		"camera_shot_1RN" 4
		2 "|camera_shot_1:camera1|camera_shot_1:cameraShape1" "renderable" " 1"
		2 "|camera_shot_1:camera1|camera_shot_1:cameraShape1" "depth" " 0"
		2 "|camera_shot_1:camera1|camera_shot_1:cameraShape1" "mask" " 1"
		2 "camera_shot_1:imagePlane1" "coverage" " -type \"short2\" 1920 1080";
	setAttr ".ptag" -type "string" "original";
lockNode -l 1 ;
createNode reference -n "deer_updateRN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"deer_updateRN"
		"deer_updateRN" 4
		2 "|deer_update:pCube1" "translate" " -type \"double3\" -3.860815 -2.646189 -20.426385"
		
		2 "|deer_update:pCube1" "rotate" " -type \"double3\" 0 45 0"
		2 "|deer_update:pCube1" "scale" " -type \"double3\" 0.243818 0.243818 0.243818"
		
		5 4 "deer_updateRN" "|deer_update:pCube1.renderLayerInfo[0]" "deer_updateRN.placeHolderList[1]" 
		"";
	setAttr ".ptag" -type "string" "original";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"shackRN"
		"shackRN" 4
		2 "|shack:pCube1" "translate" " -type \"double3\" 5.822417 -0.01008 -22.676032"
		
		2 "|shack:pCube1" "rotate" " -type \"double3\" 0 -30 0"
		2 "|shack:pCube1" "scale" " -type \"double3\" 0.738818 0.738818 0.738818"
		
		5 4 "shackRN" "|shack:pCube1.renderLayerInfo[0]" "shackRN.placeHolderList[1]" 
		"";
	setAttr ".ptag" -type "string" "original";
lockNode -l 1 ;
createNode renderLayer -n "CarRenderLayer";
	setAttr ".do" 1;
createNode proxyManager -n "camera_shot_1PM";
	setAttr -s 2 ".plst";
createNode reference -n "camera_shot_1camera_shot_1PM1RN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"camera_shot_1camera_shot_1PM1RN"
		"camera_shot_1camera_shot_1PM1RN" 0
		"camera_shot_1camera_shot_1PM1RN" 5
		2 "|camera_shot_1:camera1" "translate" " -type \"double3\" 0.0152807 0.194558 1.628513"
		
		2 "|camera_shot_1:camera1|camera_shot_1:cameraShape1" "renderable" " 1"
		2 "|camera_shot_1:camera1|camera_shot_1:cameraShape1" "centerOfInterest" 
		" 8.150778"
		2 "|camera_shot_1:camera1|camera_shot_1:cameraShape1" "depth" " 0"
		2 "|camera_shot_1:camera1|camera_shot_1:cameraShape1" "mask" " 1";
	setAttr ".ptag" -type "string" "camera_shot_1PM1";
lockNode -l 1 ;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode proxyManager -n "deer_updatePM";
	setAttr -s 2 ".plst";
createNode reference -n "deer_updatedeer_updatePM1RN";
	setAttr ".phl[1]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"deer_updatedeer_updatePM1RN"
		"deer_updatedeer_updatePM1RN" 0
		"deer_updatedeer_updatePM1RN" 4
		2 "|deer_update:pCube1" "translate" " -type \"double3\" -2.675763 -2.497551 -18.070291"
		
		2 "|deer_update:pCube1" "rotate" " -type \"double3\" 0 45 0"
		2 "|deer_update:pCube1" "scale" " -type \"double3\" 0.250956 0.250956 0.250956"
		
		5 4 "deer_updatedeer_updatePM1RN" "|deer_update:pCube1.renderLayerInfo[0]" 
		"deer_updatedeer_updatePM1RN.placeHolderList[1]" "";
	setAttr ".ptag" -type "string" "deer_updatePM1";
lockNode -l 1 ;
createNode proxyManager -n "shackPM";
	setAttr -s 2 ".plst";
createNode reference -n "shackshackPM1RN";
	setAttr ".phl[1]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"shackshackPM1RN"
		"shackshackPM1RN" 0
		"shackshackPM1RN" 4
		2 "|shack:pCube1" "translate" " -type \"double3\" 3.787443 0.0333628 -12.740061"
		
		2 "|shack:pCube1" "rotate" " -type \"double3\" 0 -22.372066 0"
		2 "|shack:pCube1" "scale" " -type \"double3\" 0.47189 0.47189 0.47189"
		5 4 "shackshackPM1RN" "|shack:pCube1.renderLayerInfo[0]" "shackshackPM1RN.placeHolderList[1]" 
		"";
	setAttr ".ptag" -type "string" "shackPM1";
lockNode -l 1 ;
createNode renderLayer -n "ShackRenderLayer";
	setAttr ".do" 2;
createNode renderLayer -n "DeerRenderLayer";
	setAttr ".do" 3;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
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
connectAttr "CarRenderLayer.ri" "car_update_uvRN.phl[1]";
connectAttr "DeerRenderLayer.ri" "deer_updatedeer_updatePM1RN.phl[1]";
connectAttr "ShackRenderLayer.ri" "shackshackPM1RN.phl[1]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "camera_shot_1PM.plst[0]" "camera_shot_1RN.pmsg";
connectAttr "sharedReferenceNode.sr" "camera_shot_1RN.sr";
connectAttr "deer_updatePM.plst[0]" "deer_updateRN.pmsg";
connectAttr "sharedReferenceNode.sr" "deer_updateRN.sr";
connectAttr "shackPM.plst[0]" "shackRN.pmsg";
connectAttr "sharedReferenceNode.sr" "shackRN.sr";
connectAttr "renderLayerManager.rlmi[2]" "CarRenderLayer.rlid";
connectAttr "camera_shot_1PM.aprx" "camera_shot_1PM.plst[1]";
connectAttr "camera_shot_1PM.plst[1]" "camera_shot_1camera_shot_1PM1RN.pmsg";
connectAttr "sharedReferenceNode.sr" "camera_shot_1camera_shot_1PM1RN.sr";
connectAttr "deer_updatePM.aprx" "deer_updatePM.plst[1]";
connectAttr "deer_updatePM.plst[1]" "deer_updatedeer_updatePM1RN.pmsg";
connectAttr "shackPM.aprx" "shackPM.plst[1]";
connectAttr "shackPM.plst[1]" "shackshackPM1RN.pmsg";
connectAttr "renderLayerManager.rlmi[4]" "ShackRenderLayer.rlid";
connectAttr "renderLayerManager.rlmi[5]" "DeerRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "CarRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ShackRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "DeerRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of shot 1.ma
