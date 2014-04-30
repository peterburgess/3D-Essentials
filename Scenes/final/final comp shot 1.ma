//Maya ASCII 2012 scene
//Name: final comp shot 1.ma
//Last modified: Tue, Apr 29, 2014 08:26:42 PM
//Codeset: UTF-8
file -rdi 1 -pm "final_shot_1PM" -pt "original" -ns "final_shot_1" -dr 1 -rfn
		 "final_shot_1RN" "/Users/pdburgess86/3D-Essentials//scenes/final/final shot 1.ma";
file -rdi 1 -ns "deer_model" -rfn "deer_modelRN" "/Users/pdburgess86/3D-Essentials//scenes/final/deer model.ma";
file -rdi 1 -ns "shack_model" -rfn "shack_modelRN" "/Users/pdburgess86/3D-Essentials//scenes/final/shack model.ma";
file -rdi 1 -ns "Hi_res_car_copy" -rfn "Hi_res_car_copyRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 6/Hi res car copy.ma";
file -rdi 1 -pm "final_shot_1PM" -ap -pt "final_shot_1PM1" -ns "final_shot_1"
		 -rfn "final_shot_1final_shot_1PM1RN" "/Users/pdburgess86/3D-Essentials//scenes/final/final shot 1no background.ma";
file -r -pm "final_shot_1PM" -pt "original" -ns "final_shot_1" -dr 1 -rfn "final_shot_1RN"
		 "/Users/pdburgess86/3D-Essentials//scenes/final/final shot 1.ma";
file -r -ns "deer_model" -dr 1 -rfn "deer_modelRN" "/Users/pdburgess86/3D-Essentials//scenes/final/deer model.ma";
file -r -ns "shack_model" -dr 1 -rfn "shack_modelRN" "/Users/pdburgess86/3D-Essentials//scenes/final/shack model.ma";
file -r -ns "Hi_res_car_copy" -dr 1 -rfn "Hi_res_car_copyRN" "/Users/pdburgess86/3D-Essentials//scenes/milestone 6/Hi res car copy.ma";
file -r -pm "final_shot_1PM" -ap -pt "final_shot_1PM1" -ns "final_shot_1" -dr 1 
		-rfn "final_shot_1final_shot_1PM1RN" "/Users/pdburgess86/3D-Essentials//scenes/final/final shot 1no background.ma";
requires maya "2012";
requires "Mayatomr" "2012.0m - 3.9.1.48 ";
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
	setAttr ".t" -type "double3" 7.8888732523450358 18.453875752725494 79.849136087369004 ;
	setAttr ".r" -type "double3" -12.938352729626509 1.4000000000000148 6.2138757676485349e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 116.86892964886127;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
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
	setAttr ".t" -type "double3" 14.501944307038031 21.386535568345028 70.073470084075254 ;
	setAttr ".r" -type "double3" -10.538352729610832 -0.9999999999970578 1.0288039840029482e-11 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 2.3592239273284576e-15 1.4210854715202004e-14 ;
	setAttr ".rpt" -type "double3" 1.6971379937675511e-14 5.0681930161858941e-15 1.0754810150502315e-14 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 112.72695068715532;
	setAttr ".ow" 54.43222311461497;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 16.436116877922071 0.76949129543679007 -40.735202289251774 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "areaLight1";
	setAttr -s 4 ".rlio";
	setAttr -s 4 ".rlio";
	setAttr ".t" -type "double3" -24.46237921939872 50.798172687025186 -0.81747122707421127 ;
createNode areaLight -n "areaLightShape1" -p "areaLight1";
	setAttr -k off ".v";
	setAttr ".in" 1.1926605701446533;
createNode transform -n "pointLight1";
	setAttr -s 2 ".rlio";
	setAttr -s 2 ".rlio";
	setAttr ".t" -type "double3" 40.375050318014509 -2.2014668927767076 -59.290947510279061 ;
createNode pointLight -n "pointLightShape1" -p "pointLight1";
	setAttr -k off ".v";
	setAttr ".in" 0.64220184087753296;
	setAttr ".us" no;
createNode transform -n "spotLight1";
	setAttr -s 2 ".rlio";
	setAttr -s 2 ".rlio";
	setAttr ".t" -type "double3" -18.453347367329066 5.9302569731046262 -50.114537550098348 ;
	setAttr ".r" -type "double3" -31.047259374118656 -16.129037223570126 -2.1434227999313116 ;
createNode spotLight -n "spotLightShape1" -p "spotLight1";
	setAttr -k off ".v";
createNode transform -n "spotLight2";
	setAttr ".t" -type "double3" -28.848422934159895 0 10.743791827568819 ;
	setAttr ".r" -type "double3" 0 -64.605838981282645 0 ;
createNode spotLight -n "spotLightShape2" -p "spotLight2";
	setAttr -k off ".v";
createNode transform -n "ambientLight1";
	setAttr ".t" -type "double3" 31.773189930794345 0 -14.528325428211422 ;
createNode ambientLight -n "ambientLightShape1" -p "ambientLight1";
	setAttr -k off ".v";
	setAttr ".in" 0.380952388048172;
createNode transform -n "pointLight2";
	setAttr -s 2 ".rlio";
	setAttr -s 2 ".rlio";
	setAttr ".t" -type "double3" 19.617344948278696 21.780640756785239 0 ;
createNode pointLight -n "pointLightShape2" -p "pointLight2";
	setAttr -k off ".v";
createNode transform -n "pointLight3";
	setAttr -s 4 ".rlio";
	setAttr -s 4 ".rlio";
	setAttr ".t" -type "double3" 5.4453006261189749 14.107908678145854 8.6175861769768662 ;
createNode pointLight -n "pointLightShape3" -p "pointLight3";
	setAttr -k off ".v";
	setAttr ".in" 0.55045872926712036;
createNode transform -n "pPlane1";
	setAttr ".t" -type "double3" 0.50815943917409356 0 -7.1017614971504557 ;
	setAttr ".s" -type "double3" 2.0022439656520912 1 1 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 22 ".lnk";
	setAttr -s 22 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
	setAttr -s 6 ".rlmi";
	setAttr ".rlmi[4]" 1;
	setAttr ".rlmi[8:11]" 2 3 0 4;
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
	setAttr ".rndr" no;
	setAttr -s 21 ".adjs";
	setAttr ".adjs[0].val" -type "string" "mentalRay";
	setAttr ".adjs[1].val" 1;
	setAttr ".adjs[2].val" -2;
	setAttr ".adjs[3].val" 0;
	setAttr ".adjs[4].val" 0;
	setAttr ".adjs[5].val" 1;
	setAttr ".adjs[6].val" 1;
	setAttr ".adjs[7].val" 0.10000000149011612;
	setAttr ".adjs[8].val" 0.10000000149011612;
	setAttr ".adjs[9].val" 0.10000000149011612;
	setAttr ".adjs[10].val" 0.10000000149011612;
	setAttr ".adjs[11].val" 1;
	setAttr ".adjs[12].val" 1;
	setAttr ".adjs[13].val" 1;
	setAttr ".adjs[14].val" 2;
	setAttr ".adjs[15].val" 2;
	setAttr ".adjs[16].val" -type "float3" 0 0 0 ;
	setAttr ".adjs[17].val" -type "float3" 0 0 0 ;
	setAttr ".adjs[18].val" -type "float3" 0 0 0 ;
	setAttr ".adjs[19].val" -type "float3" 0 0 0 ;
	setAttr ".adjs[20].val" -type "float3" 0 0 0 ;
createNode reference -n "final_shot_1RN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"final_shot_1RN"
		"final_shot_1RN" 12
		2 "|final_shot_1:camera1" "rotatePivot" " -type \"double3\" 0 0 0"
		2 "|final_shot_1:camera1" "rotatePivotTranslate" " -type \"double3\" 0 0 0"
		
		2 "|final_shot_1:camera1|final_shot_1:cameraShape1" "renderable" " 1"
		2 "|final_shot_1:camera1|final_shot_1:cameraShape1" "overscan" " 1"
		2 "|final_shot_1:camera1|final_shot_1:cameraShape1" "nearClipPlane" " 0.1"
		
		2 "|final_shot_1:camera1|final_shot_1:cameraShape1" "farClipPlane" " 10000"
		
		2 "|final_shot_1:camera1|final_shot_1:cameraShape1" "centerOfInterest" " 558.832824"
		
		2 "|final_shot_1:camera1|final_shot_1:cameraShape1" "displayFilmGate" " 0"
		
		2 "|final_shot_1:camera1|final_shot_1:cameraShape1" "displayResolution" " 0"
		
		2 "|final_shot_1:camera1|final_shot_1:cameraShape1" "depth" " 0"
		2 "|final_shot_1:camera1|final_shot_1:cameraShape1" "mask" " 1"
		2 "final_shot_1:imagePlane1" "coverage" " -type \"short2\" 720 480";
	setAttr ".ptag" -type "string" "original";
lockNode -l 1 ;
createNode reference -n "deer_modelRN";
	setAttr ".phl[1]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"deer_modelRN"
		"deer_modelRN" 0
		"deer_modelRN" 4
		2 "|deer_model:pCube1" "rlio[0:1]" " -s 2 0 1 0 3 1 0"
		2 "|deer_model:pCube1" "translate" " -type \"double3\" -17.778336 -1.499827 -61.755538"
		
		2 "|deer_model:pCube1" "rotate" " -type \"double3\" 3.335015 27.251646 0"
		
		5 4 "deer_modelRN" "|deer_model:pCube1.renderLayerInfo[1]" "deer_modelRN.placeHolderList[1]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 17 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	addAttr -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".scan" 0;
	setAttr ".maxr" 2;
	setAttr -s 28 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "true";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode reference -n "shack_modelRN";
	setAttr ".phl[1]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"shack_modelRN"
		"shack_modelRN" 0
		"shack_modelRN" 4
		2 "|shack_model:pCube1" "rlio[0:4]" " -s 5 0 1 0 0 1 0 0 1 0 0 1 0 2 1 0"
		
		2 "|shack_model:pCube1" "translate" " -type \"double3\" 22.708004 -1.433699 -82.128742"
		
		2 "|shack_model:pCube1" "rotate" " -type \"double3\" -0.916802 -22.127846 0"
		
		5 4 "shack_modelRN" "|shack_model:pCube1.renderLayerInfo[4]" "shack_modelRN.placeHolderList[1]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "Hi_res_car_copyRN";
	setAttr -s 44 ".phl";
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
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Hi_res_car_copyRN"
		"Hi_res_car_copyRN" 0
		"Hi_res_car_copyRN" 59
		2 "|Hi_res_car_copy:car_control" "visibility" " 1"
		2 "|Hi_res_car_copy:car_control" "renderLayerInfo" " -s 4"
		2 "|Hi_res_car_copy:car_control" "renderLayerInfo[0].renderLayerId" " 0"
		2 "|Hi_res_car_copy:car_control" "renderLayerInfo[0].renderLayerRenderable" 
		" 1"
		2 "|Hi_res_car_copy:car_control" "renderLayerInfo[0].renderLayerColor" " 0"
		
		2 "|Hi_res_car_copy:car_control" "translate" " -type \"double3\" 6.677865 0 -8.239098"
		
		2 "|Hi_res_car_copy:car_control" "translateX" " -av"
		2 "|Hi_res_car_copy:car_control" "rotate" " -type \"double3\" 0 -90 0"
		2 "|Hi_res_car_copy:car_control" "scale" " -type \"double3\" 1.49912 1.49912 1.49912"
		
		2 "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control" "visibility" 
		" 1"
		2 "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control" "translate" 
		" -type \"double3\" 0 0 0"
		2 "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control" "rotate" 
		" -type \"double3\" 1.600747 0 0"
		2 "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control" "rotateX" 
		" -av"
		2 "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control" "scale" 
		" -type \"double3\" 1 1 1"
		2 "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body" 
		"translate" " -type \"double3\" 0 0 0"
		3 "|Hi_res_car_copy:car_control|Hi_res_car_copy:Front_left_wheel|Hi_res_car_copy:pCylinder1|Hi_res_car_copy:pCylinderShape1.instObjGroups" 
		"Hi_res_car_copy:mia_material_x3SG.dagSetMembers" "-na"
		3 "|Hi_res_car_copy:car_control|Hi_res_car_copy:back_left_wheel1|Hi_res_car_copy:pCylinder1|Hi_res_car_copy:pCylinderShape1.instObjGroups" 
		"Hi_res_car_copy:mia_material_x3SG.dagSetMembers" "-na"
		3 "|Hi_res_car_copy:car_control|Hi_res_car_copy:back_right_wheel2|Hi_res_car_copy:pCylinder1|Hi_res_car_copy:pCylinderShape1.instObjGroups" 
		"Hi_res_car_copy:mia_material_x3SG.dagSetMembers" "-na"
		3 "|Hi_res_car_copy:car_control|Hi_res_car_copy:Front_right_wheel3|Hi_res_car_copy:pCylinder1|Hi_res_car_copy:pCylinderShape1.instObjGroups" 
		"Hi_res_car_copy:mia_material_x3SG.dagSetMembers" "-na"
		3 "|Hi_res_car_copy:car_control|Hi_res_car_copy:Front_left_wheel|Hi_res_car_copy:Front_left_wheelShape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x2SG.dagSetMembers" "-na"
		3 "|Hi_res_car_copy:car_control|Hi_res_car_copy:back_left_wheel1|Hi_res_car_copy:back_left_wheel1Shape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x2SG.dagSetMembers" "-na"
		3 "|Hi_res_car_copy:car_control|Hi_res_car_copy:back_right_wheel2|Hi_res_car_copy:back_right_wheel2Shape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x2SG.dagSetMembers" "-na"
		3 "|Hi_res_car_copy:car_control|Hi_res_car_copy:Front_right_wheel3|Hi_res_car_copy:Front_right_wheel3Shape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x2SG.dagSetMembers" "-na"
		3 "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body|Hi_res_car_copy:Window_side|Hi_res_car_copy:Window_sideShape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x_passes3SG.dagSetMembers" "-na"
		3 "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body|Hi_res_car_copy:side_window|Hi_res_car_copy:side_windowShape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x_passes3SG.dagSetMembers" "-na"
		3 "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body|Hi_res_car_copy:back_window|Hi_res_car_copy:back_windowShape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x_passes3SG.dagSetMembers" "-na"
		3 "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body|Hi_res_car_copy:front_window|Hi_res_car_copy:front_windowShape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x_passes3SG.dagSetMembers" "-na"
		3 "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body|Hi_res_car_copy:Car_bodyShape.instObjGroups" 
		"Hi_res_car_copy:blinn1SG.dagSetMembers" "-na"
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control.translateX" "Hi_res_car_copyRN.placeHolderList[1]" 
		""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[2]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control.renderLayerInfo[3]" 
		"Hi_res_car_copyRN.placeHolderList[3]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:Front_left_wheel.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[4]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:Front_left_wheel|Hi_res_car_copy:pCylinder1.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[5]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:back_left_wheel1.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[6]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:back_left_wheel1|Hi_res_car_copy:pCylinder1.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[7]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:back_right_wheel2.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[8]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:back_right_wheel2|Hi_res_car_copy:pCylinder1.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[9]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:Front_right_wheel3.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[10]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:Front_right_wheel3|Hi_res_car_copy:pCylinder1.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[11]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control.rotateX" 
		"Hi_res_car_copyRN.placeHolderList[12]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[13]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[14]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body|Hi_res_car_copy:Window_side.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[15]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body|Hi_res_car_copy:side_window.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[16]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body|Hi_res_car_copy:back_window.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[17]" ""
		5 4 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body|Hi_res_car_copy:front_window.renderLayerInfo[1]" 
		"Hi_res_car_copyRN.placeHolderList[18]" ""
		5 0 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body|Hi_res_car_copy:Car_bodyShape.instObjGroups" 
		"Hi_res_car_copy:blinn1SG.dagSetMembers" "Hi_res_car_copyRN.placeHolderList[19]" 
		"Hi_res_car_copyRN.placeHolderList[20]" "Hi_res_car_copy:blinn1SG.dsm"
		5 0 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:Front_left_wheel|Hi_res_car_copy:Front_left_wheelShape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x2SG.dagSetMembers" "Hi_res_car_copyRN.placeHolderList[21]" 
		"Hi_res_car_copyRN.placeHolderList[22]" "Hi_res_car_copy:mia_material_x2SG.dsm"
		5 0 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:back_left_wheel1|Hi_res_car_copy:back_left_wheel1Shape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x2SG.dagSetMembers" "Hi_res_car_copyRN.placeHolderList[23]" 
		"Hi_res_car_copyRN.placeHolderList[24]" "Hi_res_car_copy:mia_material_x2SG.dsm"
		5 0 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:Front_right_wheel3|Hi_res_car_copy:Front_right_wheel3Shape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x2SG.dagSetMembers" "Hi_res_car_copyRN.placeHolderList[25]" 
		"Hi_res_car_copyRN.placeHolderList[26]" "Hi_res_car_copy:mia_material_x2SG.dsm"
		5 0 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:back_right_wheel2|Hi_res_car_copy:back_right_wheel2Shape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x2SG.dagSetMembers" "Hi_res_car_copyRN.placeHolderList[27]" 
		"Hi_res_car_copyRN.placeHolderList[28]" "Hi_res_car_copy:mia_material_x2SG.dsm"
		5 0 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:Front_left_wheel|Hi_res_car_copy:pCylinder1|Hi_res_car_copy:pCylinderShape1.instObjGroups" 
		"Hi_res_car_copy:mia_material_x3SG.dagSetMembers" "Hi_res_car_copyRN.placeHolderList[29]" 
		"Hi_res_car_copyRN.placeHolderList[30]" "Hi_res_car_copy:mia_material_x3SG.dsm"
		5 0 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:Front_right_wheel3|Hi_res_car_copy:pCylinder1|Hi_res_car_copy:pCylinderShape1.instObjGroups" 
		"Hi_res_car_copy:mia_material_x3SG.dagSetMembers" "Hi_res_car_copyRN.placeHolderList[31]" 
		"Hi_res_car_copyRN.placeHolderList[32]" "Hi_res_car_copy:mia_material_x3SG.dsm"
		5 0 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:back_right_wheel2|Hi_res_car_copy:pCylinder1|Hi_res_car_copy:pCylinderShape1.instObjGroups" 
		"Hi_res_car_copy:mia_material_x3SG.dagSetMembers" "Hi_res_car_copyRN.placeHolderList[33]" 
		"Hi_res_car_copyRN.placeHolderList[34]" "Hi_res_car_copy:mia_material_x3SG.dsm"
		5 0 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:back_left_wheel1|Hi_res_car_copy:pCylinder1|Hi_res_car_copy:pCylinderShape1.instObjGroups" 
		"Hi_res_car_copy:mia_material_x3SG.dagSetMembers" "Hi_res_car_copyRN.placeHolderList[35]" 
		"Hi_res_car_copyRN.placeHolderList[36]" "Hi_res_car_copy:mia_material_x3SG.dsm"
		5 0 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body|Hi_res_car_copy:side_window|Hi_res_car_copy:side_windowShape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x_passes3SG.dagSetMembers" "Hi_res_car_copyRN.placeHolderList[37]" 
		"Hi_res_car_copyRN.placeHolderList[38]" "Hi_res_car_copy:mia_material_x_passes3SG.dsm"
		
		5 0 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body|Hi_res_car_copy:Window_side|Hi_res_car_copy:Window_sideShape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x_passes3SG.dagSetMembers" "Hi_res_car_copyRN.placeHolderList[39]" 
		"Hi_res_car_copyRN.placeHolderList[40]" "Hi_res_car_copy:mia_material_x_passes3SG.dsm"
		
		5 0 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body|Hi_res_car_copy:front_window|Hi_res_car_copy:front_windowShape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x_passes3SG.dagSetMembers" "Hi_res_car_copyRN.placeHolderList[41]" 
		"Hi_res_car_copyRN.placeHolderList[42]" "Hi_res_car_copy:mia_material_x_passes3SG.dsm"
		
		5 0 "Hi_res_car_copyRN" "|Hi_res_car_copy:car_control|Hi_res_car_copy:car_body_control|Hi_res_car_copy:Car_body|Hi_res_car_copy:back_window|Hi_res_car_copy:back_windowShape.instObjGroups" 
		"Hi_res_car_copy:mia_material_x_passes3SG.dagSetMembers" "Hi_res_car_copyRN.placeHolderList[43]" 
		"Hi_res_car_copyRN.placeHolderList[44]" "Hi_res_car_copy:mia_material_x_passes3SG.dsm";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1.25 -max 195 -ast 1.25 -aet 195 ";
	setAttr ".st" 6;
createNode animCurveTL -n "Hi_res_car_copy:car_control_translateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.25 21.065844171231387 75 6.022220380637525
		 150 6.022220380637525 195 -17.912901915964021;
	setAttr -s 4 ".kit[1:3]"  1 18 2;
	setAttr -s 4 ".kot[1:3]"  18 1 2;
	setAttr -s 4 ".ktl[1:3]" no no yes;
	setAttr -s 4 ".kix[1:3]"  0.47438538074493408 1 0.062546707689762115;
	setAttr -s 4 ".kiy[1:3]"  0.8803173303604126 0 -0.99804204702377319;
	setAttr -s 4 ".kox[2:3]"  0.19777344167232513 1;
	setAttr -s 4 ".koy[2:3]"  0.98024779558181763 0;
createNode animCurveTA -n "Hi_res_car_copy:car_body_control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1.25 0 43 0 62 1.7155501464855765 71 0 153 0
		 160 -2.4155564757030317 174 0 195 0;
createNode proxyManager -n "final_shot_1PM";
	setAttr -s 2 ".plst";
createNode reference -n "final_shot_1final_shot_1PM1RN";
	setAttr -s 2 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"final_shot_1final_shot_1PM1RN"
		"final_shot_1final_shot_1PM1RN" 0
		"final_shot_1final_shot_1PM1RN" 6
		2 "|final_shot_1:camera1|final_shot_1:cameraShape1" "renderable" " 1"
		2 "|final_shot_1:camera1|final_shot_1:cameraShape1" "depth" " 0"
		2 "|final_shot_1:camera1|final_shot_1:cameraShape1" "mask" " 1"
		2 "|final_shot_1:camera1|final_shot_1:cameraShape1" "backgroundColor" " -type \"float3\" 0 0 0"
		
		5 3 "final_shot_1final_shot_1PM1RN" "|final_shot_1:camera1|final_shot_1:cameraShape1.backgroundColor" 
		"final_shot_1final_shot_1PM1RN.placeHolderList[1]" ""
		5 3 "final_shot_1final_shot_1PM1RN" "|final_shot_1:camera1|final_shot_1:cameraShape1.backgroundColor" 
		"final_shot_1final_shot_1PM1RN.placeHolderList[2]" "";
	setAttr ".ptag" -type "string" "final_shot_1PM1";
lockNode -l 1 ;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode renderLayer -n "car_render_layer";
	setAttr ".do" 1;
createNode renderLayer -n "shack_render_layer";
	setAttr ".do" 2;
createNode renderLayer -n "deer_render_layer";
	setAttr ".do" 3;
createNode renderPass -n "diffuse";
	addAttr -ci true -sn "cs" -ln "computeShadows" -nn "Shadows" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "hs" -ln "hiddenShadows" -nn "Hidden Geometries Cast Shadows" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ta" -ln "transparentAttenuation" -nn "Attenuate According to Transparency" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "DIFF";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPass -n "reflection";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "REFL";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPass -n "refraction";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "REFR";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPass -n "specular";
	addAttr -ci true -sn "cs" -ln "computeShadows" -nn "Shadows" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "hs" -ln "hiddenShadows" -nn "Hidden Geometries Cast Shadows" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "SPEC";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPass -n "beauty";
	addAttr -ci true -sn "cs" -ln "computeShadows" -nn "Shadows" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "hs" -ln "hiddenShadows" -nn "Hidden Geometries Cast Shadows" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-dv 10 -min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-dv 10 -min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "BEAUTY";
	setAttr ".fbt" 256;
	setAttr ".nc" 4;
	setAttr ".pgn" -type "string" "Beauties";
createNode mentalrayOptions -s -n "miContourPreset";
createNode mentalrayOptions -s -n "Draft";
	setAttr ".maxr" 2;
createNode mentalrayOptions -s -n "DraftMotionBlur";
	setAttr ".maxr" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "DraftRapidMotion";
	setAttr ".scan" 3;
	setAttr ".rapc" 1;
	setAttr ".raps" 0.25;
	setAttr ".maxr" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "Preview";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
createNode mentalrayOptions -s -n "PreviewMotionblur";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewRapidMotion";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewCaustics";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".ca" yes;
	setAttr ".cc" 1;
	setAttr ".cr" 1;
createNode mentalrayOptions -s -n "PreviewGlobalIllum";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".gi" yes;
	setAttr ".gc" 1;
	setAttr ".gr" 1;
createNode mentalrayOptions -s -n "PreviewFinalGather";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".fg" yes;
createNode mentalrayOptions -s -n "Production";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
createNode mentalrayOptions -s -n "ProductionMotionblur";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionRapidMotion";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".scan" 3;
	setAttr ".rapc" 8;
	setAttr ".raps" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionFineTrace";
	setAttr ".conr" 0.019999999552965164;
	setAttr ".cong" 0.019999999552965164;
	setAttr ".conb" 0.019999999552965164;
	setAttr ".minsp" 1;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 0.75;
	setAttr ".filh" 0.75;
	setAttr ".jit" yes;
	setAttr ".scan" 0;
createNode mentalrayOptions -s -n "ProductionRapidFur";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".raps" 0.25;
	setAttr ".ray" no;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode mentalrayOptions -s -n "ProductionRapidHair";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 6;
	setAttr ".ray" no;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode polyPlane -n "polyPlane1";
	setAttr ".w" 27.751044247502612;
	setAttr ".h" 12.421265702948503;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode renderLayer -n "occlusion";
	setAttr -s 21 ".adjs";
	setAttr ".adjs[0].val" -type "string" "mentalRay";
	setAttr ".adjs[1].val" 0;
	setAttr ".adjs[2].val" 0;
	setAttr ".adjs[3].val" 2;
	setAttr ".adjs[4].val" 1;
	setAttr ".adjs[5].val" 1;
	setAttr ".adjs[6].val" 1;
	setAttr ".adjs[7].val" 0.019999999552965164;
	setAttr ".adjs[8].val" 0.019999999552965164;
	setAttr ".adjs[9].val" 0.019999999552965164;
	setAttr ".adjs[10].val" 0.019999999552965164;
	setAttr ".adjs[11].val" 1;
	setAttr ".adjs[12].val" 1;
	setAttr ".adjs[13].val" 1;
	setAttr ".adjs[14].val" 1;
	setAttr ".adjs[15].val" 2;
	setAttr ".adjs[16].val" -type "float3" 1 1 1 ;
	setAttr ".adjs[17].val" -type "float3" 1 1 1 ;
	setAttr ".adjs[18].val" -type "float3" 1 1 1 ;
	setAttr ".adjs[19].val" -type "float3" 1 1 1 ;
	setAttr ".adjs[20].val" -type "float3" 1 1 1 ;
	setAttr ".do" 4;
createNode mib_amb_occlusion -n "mib_amb_occlusion1";
	setAttr ".S00" 64;
createNode surfaceShader -n "surfaceShader1";
createNode shadingEngine -n "set1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
select -ne :time1;
	setAttr ".o" 59;
	setAttr ".unw" 59;
select -ne :renderPartition;
	setAttr -s 22 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 19 ".s";
select -ne :defaultTextureList1;
	setAttr -s 11 ".tx";
select -ne :lightList1;
	setAttr -s 7 ".l";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 11 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 14 ".r";
select -ne :renderGlobalsList1;
select -ne :initialMaterialInfo;
	setAttr -s 3 ".t";
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 30;
	setAttr ".ren" -type "string" "mentalRay";
	setAttr ".outf" 32;
	setAttr ".imfkey" -type "string" "png";
	setAttr ".an" yes;
	setAttr ".fs" 1;
	setAttr ".ef" 195;
	setAttr ".pff" yes;
	setAttr ".peie" 2;
select -ne :defaultResolution;
	setAttr ".pa" 1;
	setAttr ".dar" 1.3329999446868896;
select -ne :defaultLightSet;
	setAttr -s 7 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 30;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "deer_render_layer.ri" "deer_modelRN.phl[1]";
connectAttr "shack_render_layer.ri" "shack_modelRN.phl[1]";
connectAttr "Hi_res_car_copy:car_control_translateX.o" "Hi_res_car_copyRN.phl[1]"
		;
connectAttr "car_render_layer.ri" "Hi_res_car_copyRN.phl[2]";
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[3]";
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[4]";
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[5]";
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[6]";
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[7]";
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[8]";
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[9]";
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[10]";
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[11]";
connectAttr "Hi_res_car_copy:car_body_control_rotateX.o" "Hi_res_car_copyRN.phl[12]"
		;
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[13]";
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[14]";
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[15]";
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[16]";
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[17]";
connectAttr "occlusion.ri" "Hi_res_car_copyRN.phl[18]";
connectAttr "Hi_res_car_copyRN.phl[19]" "Hi_res_car_copyRN.phl[20]";
connectAttr "Hi_res_car_copyRN.phl[21]" "Hi_res_car_copyRN.phl[22]";
connectAttr "Hi_res_car_copyRN.phl[23]" "Hi_res_car_copyRN.phl[24]";
connectAttr "Hi_res_car_copyRN.phl[25]" "Hi_res_car_copyRN.phl[26]";
connectAttr "Hi_res_car_copyRN.phl[27]" "Hi_res_car_copyRN.phl[28]";
connectAttr "Hi_res_car_copyRN.phl[29]" "Hi_res_car_copyRN.phl[30]";
connectAttr "Hi_res_car_copyRN.phl[31]" "Hi_res_car_copyRN.phl[32]";
connectAttr "Hi_res_car_copyRN.phl[33]" "Hi_res_car_copyRN.phl[34]";
connectAttr "Hi_res_car_copyRN.phl[35]" "Hi_res_car_copyRN.phl[36]";
connectAttr "Hi_res_car_copyRN.phl[37]" "Hi_res_car_copyRN.phl[38]";
connectAttr "Hi_res_car_copyRN.phl[39]" "Hi_res_car_copyRN.phl[40]";
connectAttr "Hi_res_car_copyRN.phl[41]" "Hi_res_car_copyRN.phl[42]";
connectAttr "Hi_res_car_copyRN.phl[43]" "Hi_res_car_copyRN.phl[44]";
connectAttr "final_shot_1final_shot_1PM1RN.phl[1]" "occlusion.adjs[16].plg";
connectAttr "final_shot_1final_shot_1PM1RN.phl[2]" "defaultRenderLayer.adjs[16].plg"
		;
connectAttr "car_render_layer.ri" "areaLight1.rlio[0]";
connectAttr "shack_render_layer.ri" "areaLight1.rlio[1]";
connectAttr "deer_render_layer.ri" "areaLight1.rlio[2]";
connectAttr "occlusion.ri" "areaLight1.rlio[3]";
connectAttr "car_render_layer.ri" "pointLight1.rlio[0]";
connectAttr "shack_render_layer.ri" "pointLight1.rlio[1]";
connectAttr "car_render_layer.ri" "spotLight1.rlio[0]";
connectAttr "deer_render_layer.ri" "spotLight1.rlio[1]";
connectAttr "car_render_layer.ri" "spotLight2.rlio[0]";
connectAttr "car_render_layer.ri" "ambientLight1.rlio[0]";
connectAttr "car_render_layer.ri" "pointLight2.rlio[0]";
connectAttr "deer_render_layer.ri" "pointLight2.rlio[1]";
connectAttr "car_render_layer.ri" "pointLight3.rlio[0]";
connectAttr "shack_render_layer.ri" "pointLight3.rlio[1]";
connectAttr "deer_render_layer.ri" "pointLight3.rlio[2]";
connectAttr "occlusion.ri" "pointLight3.rlio[3]";
connectAttr "occlusion.ri" "pPlane1.rlio[0]";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultRenderGlobals.ren" "defaultRenderLayer.adjs[0].plg";
connectAttr ":defaultRenderGlobals.edl" "defaultRenderLayer.adjs[1].plg";
connectAttr ":miDefaultOptions.minsp" "defaultRenderLayer.adjs[2].plg";
connectAttr ":miDefaultOptions.maxsp" "defaultRenderLayer.adjs[3].plg";
connectAttr ":miDefaultOptions.fil" "defaultRenderLayer.adjs[4].plg";
connectAttr ":miDefaultOptions.filw" "defaultRenderLayer.adjs[5].plg";
connectAttr ":miDefaultOptions.filh" "defaultRenderLayer.adjs[6].plg";
connectAttr ":miDefaultOptions.conr" "defaultRenderLayer.adjs[7].plg";
connectAttr ":miDefaultOptions.cong" "defaultRenderLayer.adjs[8].plg";
connectAttr ":miDefaultOptions.conb" "defaultRenderLayer.adjs[9].plg";
connectAttr ":miDefaultOptions.cona" "defaultRenderLayer.adjs[10].plg";
connectAttr ":miDefaultOptions.ray" "defaultRenderLayer.adjs[11].plg";
connectAttr ":miDefaultOptions.rflr" "defaultRenderLayer.adjs[12].plg";
connectAttr ":miDefaultOptions.rfrr" "defaultRenderLayer.adjs[13].plg";
connectAttr ":miDefaultOptions.maxr" "defaultRenderLayer.adjs[14].plg";
connectAttr ":miDefaultOptions.shrd" "defaultRenderLayer.adjs[15].plg";
connectAttr ":frontShape.col" "defaultRenderLayer.adjs[17].plg";
connectAttr ":perspShape.col" "defaultRenderLayer.adjs[18].plg";
connectAttr ":sideShape.col" "defaultRenderLayer.adjs[19].plg";
connectAttr ":topShape.col" "defaultRenderLayer.adjs[20].plg";
connectAttr "final_shot_1PM.plst[0]" "final_shot_1RN.pmsg";
connectAttr "sharedReferenceNode.sr" "final_shot_1RN.sr";
connectAttr ":miContourPreset.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Draft.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":DraftMotionBlur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":DraftRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Preview.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewMotionblur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewCaustics.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewGlobalIllum.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewFinalGather.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Production.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionMotionblur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionFineTrace.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionRapidFur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionRapidHair.msg" ":mentalrayItemsList.opt" -na;
connectAttr "final_shot_1PM.aprx" "final_shot_1PM.plst[1]";
connectAttr "final_shot_1PM.plst[1]" "final_shot_1final_shot_1PM1RN.pmsg";
connectAttr "renderLayerManager.rlmi[4]" "car_render_layer.rlid";
connectAttr "renderLayerManager.rlmi[8]" "shack_render_layer.rlid";
connectAttr "renderLayerManager.rlmi[9]" "deer_render_layer.rlid";
connectAttr "car_render_layer.rps" "diffuse.ow" -na;
connectAttr "car_render_layer.rps" "reflection.ow" -na;
connectAttr "car_render_layer.rps" "refraction.ow" -na;
connectAttr "car_render_layer.rps" "specular.ow" -na;
connectAttr "car_render_layer.rps" "beauty.ow" -na;
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pPlaneShape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "renderLayerManager.rlmi[11]" "occlusion.rlid";
connectAttr ":defaultRenderGlobals.ren" "occlusion.adjs[0].plg";
connectAttr ":defaultRenderGlobals.edl" "occlusion.adjs[1].plg";
connectAttr ":miDefaultOptions.minsp" "occlusion.adjs[2].plg";
connectAttr ":miDefaultOptions.maxsp" "occlusion.adjs[3].plg";
connectAttr ":miDefaultOptions.fil" "occlusion.adjs[4].plg";
connectAttr ":miDefaultOptions.filw" "occlusion.adjs[5].plg";
connectAttr ":miDefaultOptions.filh" "occlusion.adjs[6].plg";
connectAttr ":miDefaultOptions.conr" "occlusion.adjs[7].plg";
connectAttr ":miDefaultOptions.cong" "occlusion.adjs[8].plg";
connectAttr ":miDefaultOptions.conb" "occlusion.adjs[9].plg";
connectAttr ":miDefaultOptions.cona" "occlusion.adjs[10].plg";
connectAttr ":miDefaultOptions.ray" "occlusion.adjs[11].plg";
connectAttr ":miDefaultOptions.rflr" "occlusion.adjs[12].plg";
connectAttr ":miDefaultOptions.rfrr" "occlusion.adjs[13].plg";
connectAttr ":miDefaultOptions.maxr" "occlusion.adjs[14].plg";
connectAttr ":miDefaultOptions.shrd" "occlusion.adjs[15].plg";
connectAttr ":frontShape.col" "occlusion.adjs[17].plg";
connectAttr ":perspShape.col" "occlusion.adjs[18].plg";
connectAttr ":sideShape.col" "occlusion.adjs[19].plg";
connectAttr ":topShape.col" "occlusion.adjs[20].plg";
connectAttr "set1.msg" "occlusion.sgo";
connectAttr "mib_amb_occlusion1.S11" "surfaceShader1.oc";
connectAttr "surfaceShader1.oc" "set1.ss";
connectAttr "set1.msg" "materialInfo2.sg";
connectAttr "surfaceShader1.msg" "materialInfo2.m";
connectAttr "surfaceShader1.msg" "materialInfo2.t" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "set1.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "mib_amb_occlusion1.msg" ":defaultTextureList1.tx" -na;
connectAttr "areaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape1.ltd" ":lightList1.l" -na;
connectAttr "spotLightShape1.ltd" ":lightList1.l" -na;
connectAttr "spotLightShape2.ltd" ":lightList1.l" -na;
connectAttr "ambientLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape2.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape3.ltd" ":lightList1.l" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "car_render_layer.msg" ":defaultRenderingList1.r" -na;
connectAttr "shack_render_layer.msg" ":defaultRenderingList1.r" -na;
connectAttr "deer_render_layer.msg" ":defaultRenderingList1.r" -na;
connectAttr "diffuse.msg" ":defaultRenderingList1.r" -na;
connectAttr "reflection.msg" ":defaultRenderingList1.r" -na;
connectAttr "refraction.msg" ":defaultRenderingList1.r" -na;
connectAttr "specular.msg" ":defaultRenderingList1.r" -na;
connectAttr "beauty.msg" ":defaultRenderingList1.r" -na;
connectAttr "occlusion.msg" ":defaultRenderingList1.r" -na;
connectAttr "areaLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "spotLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "spotLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "ambientLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight3.iog" ":defaultLightSet.dsm" -na;
// End of final comp shot 1.ma
