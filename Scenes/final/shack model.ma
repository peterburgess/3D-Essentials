//Maya ASCII 2012 scene
//Name: shack model.ma
//Last modified: Mon, Apr 28, 2014 03:34:46 PM
//Codeset: UTF-8
requires maya "2012";
requires "Mayatomr" "2012.0m - 3.9.1.48 ";
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
	setAttr ".t" -type "double3" 2.3305618008675366 6.6666886345804635 21.832863734475623 ;
	setAttr ".r" -type "double3" -5.7383527294210701 362.59999999985331 -4.9747378351969924e-17 ;
	setAttr ".rp" -type "double3" -1.1102230246251565e-16 2.2204460492503131e-16 -3.5527136788005009e-15 ;
	setAttr ".rpt" -type "double3" -1.7841615887635217e-16 -1.2367324218299059e-15 1.5123778544491373e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 20.835950210953818;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.60186540387707721 1.1099814825773873 0.99224001164436615 ;
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
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0.42701178778646787 0.6463770844635317 0.55355344656102745 ;
	setAttr ".s" -type "double3" 2.4073202788462704 2.4073202788462704 2.4073202788462704 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54356008632616559 0.70888764614408661 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 10.151722146557031;
	setAttr ".h" 1.2968226864554111;
	setAttr ".d" 1.7759122221202794;
	setAttr ".cuv" 4;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.1411391961752475 1.5391905542963666 -0.058558789902148689 1;
	setAttr ".wt" 0.50136560201644897;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  1.9821285 0 0 -2.8968792 0
		 0 1.9821285 1.69559872 0 -2.8968792 1.69559872 0 1.9821285 1.69559872 -1.16054988
		 -2.8968792 1.69559872 -1.16054988 1.9821285 0 -1.16054988 -2.8968792 0 -1.16054988;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[4:5]" "e[8:9]" "e[14]" "e[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.42701178778646787 0.6463770844635317 0.55355344656102745 1;
	setAttr ".wt" 0.044888310134410858;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[8]" -type "float3" 0 1.3098115 0 ;
	setAttr ".tk[11]" -type "float3" 0 1.3098115 0 ;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[4:5]" "e[18]" "e[20:21]" "e[23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.42701178778646787 0.6463770844635317 0.55355344656102745 1;
	setAttr ".wt" 0.026336068287491798;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[0:3]" "e[16]" "e[19]" "e[22]" "e[28]" "e[34]" "e[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.42701178778646787 0.6463770844635317 0.55355344656102745 1;
	setAttr ".wt" 0.083778426051139832;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[2:5]" -type "float3" -0.17395926 -0.043213759 0.096880808  
		0.17395926 -0.043213759 0.096880808  -0.17395926 -0.043213759 -0.096880808  0.17395926 
		-0.043213759 -0.096880808 ;
	setAttr ".tk[8]" -type "float3" -0.17395926 0.043213759 -0.00026460236 ;
	setAttr ".tk[11:23]" -type "float3" 0.17395926 0.043213759 -0.00026460236  
		0.15996028 -0.037952542 -0.089084536  -0.15996028 -0.037952542 -0.089084536  -0.15996028 
		0.037952542 -0.0002433086  -0.15996028 -0.037952542 0.089084528  0.15996028 -0.037952542 
		0.089084528  0.15996028 0.037952542 -0.0002433086  0 0.16917114 0  0 0.16917114 0  
		0 0.16917114 0  0 0.16917114 0  0 0.16917114 0  0 0.16917114 0 ;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[0:3]" "e[16]" "e[28]" "e[40]" "e[44]" "e[57]" "e[59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.42701178778646787 0.6463770844635317 0.55355344656102745 1;
	setAttr ".wt" 0.087714344263076782;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[6:7]" "e[13]" "e[15]" "e[26]" "e[30]" "e[38]" "e[42]" "e[46]" "e[54]" "e[66]" "e[74]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.42701178778646787 0.6463770844635317 0.55355344656102745 1;
	setAttr ".wt" 0.87816828489303589;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[10:12]" "e[17]" "e[24]" "e[31]" "e[36]" "e[43]" "e[56]" "e[63]" "e[76]" "e[83]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.42701178778646787 0.6463770844635317 0.55355344656102745 1;
	setAttr ".wt" 0.16818708181381226;
	setAttr ".re" 17;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 2 "f[31]" "f[43]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.42701178778646787 0.6463770844635317 0.55355344656102745 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.0832119 4.2259974 -0.066652 ;
	setAttr ".rs" 375096125;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.8573587535762628 4.1085829713043518 -0.29350890275843056 ;
	setAttr ".cbx" -type "double3" 2.3090651630306085 4.3434123971161194 0.16020490172498314 ;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[19]" "f[25]" "f[35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.42701178778646787 0.6463770844635317 0.55355344656102745 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.030363500118255615 1.4739642143249512 1.441509485244751 ;
	setAttr ".ro" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".ps" -type "double2" 2.9519968628883371 5.272714138031005 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[68:73]" -type "float3"  0 0.60633534 0 0 0.36677337
		 0 0 0.36677337 0 0 0.60633534 0 0 0.53533334 0 0 0.53533334 0;
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[42]" -type "float2" -0.7122879 0.73504519 ;
	setAttr ".uvtk[53]" -type "float2" -0.71228117 0.6910876 ;
	setAttr ".uvtk[98:103]" -type "float2" 0.0216102 0.69113243  0.021603465 
		0.73509008  -0.71229434 0.77721226  0.021597028 0.7772572  -0.71236151 1.215777  
		0.021529913 1.215822 ;
createNode polyPlanarProj -n "polyPlanarProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "f[0:2]" "f[4:6]" "f[8:15]" "f[22:24]" "f[29:30]" "f[32:34]" "f[39:42]" "f[44:46]" "f[52:58]" "f[64:65]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.42701178778646787 0.6463770844635317 0.55355344656102745 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.030363511294126511 3.5804657936096191 -0.026962332427501678 ;
	setAttr ".ro" -type "double3" 9.334489890414829e-06 89.978215883089717 -89.999999999933081 ;
	setAttr ".ps" -type "double2" 3.1302236440318536 5.6206328760353967 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 48 ".uvtk";
	setAttr ".uvtk[2:5]" -type "float2" 0.64709711 0.69027334  0.64214414 
		0.62225217  0.63955373 0.61719996  0.64381927 0.68550068 ;
	setAttr ".uvtk[11]" -type "float2" 0.11867687 0.62729245 ;
	setAttr ".uvtk[13:15]" -type "float2" 0.12119552 0.68888408  -0.54216582 
		0.68372768  -0.53804082 0.61554557 ;
	setAttr ".uvtk[20:29]" -type "float2" -0.54073638 0.62044984  -0.54553372 
		0.68832904  0.1228815 0.63599485  0.12625572 1.3716768  0.63840628 1.382704  0.63374859 
		1.3882451  0.12233189 1.3808181  -0.047858626 1.3712957  0.053000212 1.3721788  0.052141428 
		1.3820969 ;
	setAttr ".uvtk[39:41]" -type "float2" -0.044000208 1.3803866  0.048708193 
		0.62420207  0.049307697 0.63507801 ;
	setAttr ".uvtk[47:48]" -type "float2" -0.051859409 0.63567084  -0.047240615 
		0.62724477 ;
	setAttr ".uvtk[50:52]" -type "float2" -0.04935053 0.68872315  0.049334757 
		0.68704015  -0.51460123 0.65376085 ;
	setAttr ".uvtk[58:61]" -type "float2" -0.52444059 0.70774096  -0.041075945 
		1.3358902  0.05312252 1.3368021  0.121438 1.3362463 ;
	setAttr ".uvtk[64:66]" -type "float2" 0.61583436 1.3521607  0.6261192 0.70987099  
		0.61564785 0.65569097 ;
	setAttr ".uvtk[75:77]" -type "float2" 0.11776844 0.67133898  0.049303405 
		0.67046446  -0.045106649 0.67109066 ;
	setAttr ".uvtk[80:82]" -type "float2" 0.64540774 0.74789196  0.12216893 
		0.74907357  0.64872843 0.74939996 ;
	setAttr ".uvtk[91]" -type "float2" 0.62712735 0.7637071 ;
	setAttr ".uvtk[104:111]" -type "float2" -0.54675502 0.74739623  -0.52500147 
		0.76151747  -0.54341191 0.74602491  -0.53238791 1.3813581  -0.50835925 1.3496699  
		-0.52832514 1.3884206  0.049689882 0.74905902  -0.049886703 0.7487846 ;
createNode polyPlanarProj -n "polyPlanarProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[31]" "f[43]" "f[66:71]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.42701178778646787 0.6463770844635317 0.55355344656102745 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 2.0832116603851318 4.4087944030761719 -0.067113131284713745 ;
	setAttr ".ro" -type "double3" -89.251954567592264 0.001046345420963346 6.0773626928905676e-13 ;
	setAttr ".ps" -type "double2" 0.45171469517670282 0.46075439361194659 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[38]" -type "float2" 0.85637403 0.56580794 ;
	setAttr ".uvtk[49]" -type "float2" 0.85187745 1.0703819 ;
	setAttr ".uvtk[62:63]" -type "float2" -0.0090987086 1.0768926  -0.014083683 
		0.57190931 ;
	setAttr ".uvtk[78:79]" -type "float2" 0.85501277 1.4318103  -0.011519134 
		1.439265 ;
	setAttr ".uvtk[92:97]" -type "float2" 0.8080045 0.68692803  0.7514571 1.0744395  
		0.091076449 1.0731709  0.036152244 0.68507612  0.80183184 1.3739972  0.039730489 
		1.3724971 ;
createNode polyPlanarProj -n "polyPlanarProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "f[16:18]" "f[20:21]" "f[28]" "f[38]" "f[47]" "f[51]" "f[59]" "f[63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.42701178778646787 0.6463770844635317 0.55355344656102745 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.030363500118255615 2.0829987525939941 -0.02672157809138298 ;
	setAttr ".ro" -type "double3" 179.99999886163511 2.3457831771175041e-06 89.999999999999986 ;
	setAttr ".ps" -type "double2" 4.1700659997023841 5.2727141963732667 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[0:1]" -type "float2" -0.36864713 -0.36615998  -0.39930129 
		-0.4501909 ;
	setAttr ".uvtk[10]" -type "float2" 0.31037167 -0.6553818 ;
	setAttr ".uvtk[12]" -type "float2" 0.34110031 -0.57132524 ;
	setAttr ".uvtk[16]" -type "float2" 0.76146322 0.34929943 ;
	setAttr ".uvtk[19]" -type "float2" 0.77859181 0.34949923 ;
	setAttr ".uvtk[30:37]" -type "float2" -0.22481519 0.63929802  -0.19263387 
		0.6248517  0.79106516 0.34964699  0.88093638 0.35072023  0.17059505 0.55587143  -0.17663753 
		0.62913221  0.10607639 -0.65699768  0.19599223 -0.65631247 ;
	setAttr ".uvtk[46]" -type "float2" -0.77057815 -0.37667215 ;
	setAttr ".uvtk[57]" -type "float2" -0.60337663 -0.4517172 ;
	setAttr ".uvtk[67:68]" -type "float2" -0.72741318 -0.38037843  -0.79377151 
		-0.36625862 ;
	setAttr ".uvtk[73:74]" -type "float2" 0.20846894 -0.65621769  0.22560582 
		-0.65608549 ;
	setAttr ".uvtk[83:84]" -type "float2" -0.33924964 -0.28553957  0.37057394 
		-0.49067283 ;
	setAttr ".uvtk[89:90]" -type "float2" -0.033371031 0.55343741  0.67676723 
		0.34835419 ;
createNode polyPlanarProj -n "polyPlanarProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[3]" "f[7]" "f[26:27]" "f[36:37]" "f[48:50]" "f[60:62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.42701178778646787 0.6463770844635317 0.55355344656102745 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.030363500118255615 -0.0020342490170150995 -0.026721552014350891 ;
	setAttr ".ro" -type "double3" 90 89.999999999999986 0 ;
	setAttr ".ps" -type "double2" 2.9364620447158831 5.2727141380310059 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 112 ".uvtk[0:111]" -type "float2" -0.087671474 -0.32650062
		 -0.087671474 -0.32650062 -0.25917429 -0.69866157 -0.26294798 -0.68697393 -0.26683116
		 -0.6889255 -0.26358128 -0.70071805 -0.16753656 -0.60257447 -0.19206572 -0.6865133
		 0.24869221 -0.75830364 0.2732189 -0.67436206 -0.087671474 -0.32650062 -0.32834917
		 -0.68123603 -0.087671474 -0.32650062 -0.3264302 -0.69814026 -0.40528411 -0.70206904
		 -0.40214127 -0.69018602 -0.087671474 -0.32650062 -0.31263661 -0.57894301 -0.33716583
		 -0.66287923 -0.087671474 -0.32650062 -0.40608066 -0.68834722 -0.4097358 -0.70014298
		 -0.3249014 -0.6765033 -0.32233059 -0.87409329 -0.26579589 -0.86569166 -0.27125412
		 -0.86336744 -0.32556444 -0.86902618 -0.34509844 -0.87438369 -0.33185226 -0.87371099
		 -0.33251983 -0.86805189 -0.087671474 -0.32650062 -0.087671474 -0.32650062 -0.087671474
		 -0.32650062 -0.087671474 -0.32650062 -0.087671474 -0.32650062 -0.087671474 -0.32650062
		 -0.087671466 -0.32650062 -0.087671466 -0.32650062 -0.35489345 -0.82794827 -0.34185255
		 -0.86935496 -0.33513564 -0.68359065 -0.3346656 -0.67720187 0.66182089 -0.78215194
		 -0.2532112 -0.67655373 -0.2286827 -0.59261572 -0.14400777 -0.52205694 -0.087671466
		 -0.32650062 -0.34814662 -0.67675006 -0.34432143 -0.68127239 -0.35330847 -0.80500084
		 -0.34592891 -0.69826281 -0.33465821 -0.69954515 -0.4078638 -0.68465078 0.66182089
		 -0.78215194 0.29674393 -0.59383166 -0.28910762 -0.49842528 -0.20515603 -0.51209879
		 -0.087671466 -0.32650062 -0.41536045 -0.70340312 -0.34363067 -0.87967587 -0.33182043
		 -0.87898111 -0.32341498 -0.87940466 -0.40218937 -0.80728394 -0.40044022 -0.83008748
		 -0.26132232 -0.86727941 -0.25348622 -0.7017802 -0.26146442 -0.68318021 -0.087671474
		 -0.32650062 -0.087671466 -0.32650062 0.10063739 0.31538865 0.54138809 0.24362102
		 -0.044462115 0.33901826 0.03949064 0.32534698 -0.087671466 -0.32650062 -0.087671474
		 -0.32650062 -0.32621074 -0.67125785 -0.33473027 -0.67192423 -0.34670168 -0.67144716
		 -0.35440826 -0.78616863 -0.4013356 -0.78878373 -0.262371 -0.71441305 -0.3256886 -0.71351278
		 -0.25793135 -0.71453869 -0.087671474 -0.32650062 -0.087671474 -0.32650062 -0.4596706
		 0.40662745 -0.70431381 -0.43080524 -0.72783905 -0.51131594 -0.75236684 -0.5952481
		 -0.087671474 -0.32650062 -0.087671474 -0.32650062 -0.25271815 -0.71820307 -0.33788434
		 -0.86449856 -0.31799582 -0.80277318 -0.4374159 -0.80232078 -0.41810554 -0.86384088
		 -0.33570728 -0.76050466 -0.41935748 -0.75997084 0.66182089 -0.78215194 0.66182089
		 -0.78215194 0.66182089 -0.78215194 0.66182089 -0.78215194 0.66182089 -0.78215194
		 0.66182089 -0.78215194 -0.41066629 -0.71606541 -0.41578782 -0.71987128 -0.40623355
		 -0.71583557 -0.39971995 -0.8667171 -0.403108 -0.8691771 -0.39473885 -0.8632338 -0.33438766
		 -0.71352386 -0.3463375 -0.71373296;
createNode brush -n "art3dPaintLastPaintBrush";
	setAttr ".gsc" 0.39145343110000003;
	setAttr ".bwd" 0.30760799;
	setAttr ".sdn" 3;
	setAttr ".sft" 0.41748;
	setAttr ".cl1" -type "float3" 0.55699998 0.39371499 0.26011899 ;
	setAttr ".cl2" -type "float3" 0.99215686 0.91332763 0.79115385 ;
	setAttr ".tn2" -type "float3" 0.74901962 0.6895082 0.59727424 ;
	setAttr ".spc" -type "float3" 1 0.94901961 0.82352942 ;
	setAttr ".spp" 5.8252;
	setAttr ".trn" 1;
	setAttr ".glc" -type "float3" 0.9254902 0.9254902 0.9254902 ;
	setAttr ".gls" 1;
	setAttr ".rfd" 0.13592;
	setAttr ".tfd" 0.14564;
	setAttr ".sof" 1;
	setAttr ".sdf" 1;
	setAttr ".stn" 0.96116;
	setAttr ".brn" 0.02912;
	setAttr ".dps" 0.002;
	setAttr ".ldr" -type "double3" 0.5 -0.5 -0.5 ;
	setAttr ".grn" 1;
	setAttr ".tcm" no;
	setAttr ".tps" 10;
	setAttr ".lnx" 0.5826;
	setAttr ".lnn" 0.6796;
	setAttr ".sgm" 13;
	setAttr ".tw1" 0.027186;
	setAttr ".tw2" 0.034952;
	setAttr ".wdr" 0.12622;
	setAttr ".wdb" -0.65048;
	setAttr ".lfx" 0.62136;
	setAttr ".elm" 0;
	setAttr ".elx" 0;
	setAttr ".azn" -1;
	setAttr ".azx" 1;
	setAttr ".ddl" 0;
	setAttr ".wgf" 1.9421;
	setAttr ".nof" 0.6311;
	setAttr ".pfl" 0.03884;
	setAttr ".pat" 0.1068;
	setAttr ".trt" 4;
	setAttr ".tin" 2;
	setAttr ".tur" 0.03884;
	setAttr ".trf" 2.9408;
	setAttr ".ran" 0.70874;
	setAttr ".dfx" 0.0099999997759999994;
	setAttr ".lcl[0]"  0 0.5 1;
	setAttr ".pcl[0]"  0 0.5 1;
	setAttr ".mcl" yes;
	setAttr ".txt" 4;
	setAttr ".mmd" 0;
	setAttr ".tos" 0;
	setAttr ".too" 1;
	setAttr ".tc1" -type "float3" 1.0482353 1.0688 1.1 ;
	setAttr ".al1" 0;
	setAttr ".al2" -0.74756;
	setAttr ".rpu" 3.4952;
	setAttr ".rpv" 2.7962;
	setAttr ".bmt" 0.2136;
	setAttr ".imn" -type "string" "paper-pinkplaster.jpg";
	setAttr ".fra" 0.92234;
	setAttr ".fam" 0.63106;
	setAttr ".wsc[0]"  0 1 1;
	setAttr ".lws[0]"  0 1 1;
	setAttr ".pws[0]"  0 1 1;
	setAttr ".tls[0]"  0 1 1;
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0 0 0.15000001 ;
	setAttr ".env[0].envi" 1;
	setAttr ".env[1].envp" 0.5;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 1;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 1;
	setAttr ".rro[0]"  0 1 1;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/pdburgess86/3D-Essentials//3D-Essentials/3dPaintTextures/shack model/pCubeShape1_color.iff";
createNode place2dTexture -n "place2dTexture1";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "/Users/pdburgess86/3D-Essentials//3D-Essentials/3dPaintTextures/shack model/pCubeShape1_color_1.png";
createNode place2dTexture -n "place2dTexture2";
createNode lambert -n "house";
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
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
	setAttr ".stringOptions[9].value" -type "string" "false";
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
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[131:143]";
	setAttr ".ix" -type "matrix" 2.4073202788462704 0 0 0 0 2.4073202788462704 0 0 0 0 2.4073202788462704 0
		 0.42701178778646787 0.6463770844635317 0.55355344656102745 1;
	setAttr ".a" 180;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :initialMaterialInfo;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polySoftEdge1.out" "pCubeShape1.i";
connectAttr "polyTweakUV5.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak2.ip";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polyTweak3.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak3.ip";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak4.out" "polyPlanarProj1.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak4.ip";
connectAttr "polyPlanarProj1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyPlanarProj2.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyPlanarProj3.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyPlanarProj4.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj4.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyPlanarProj5.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj5.mp";
connectAttr "polyPlanarProj5.out" "polyTweakUV5.ip";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "house.oc" "lambert2SG.ss";
connectAttr "pCubeShape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "house.msg" "materialInfo1.m";
connectAttr "file2.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "file2.oc" "house.c";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "polyTweakUV5.out" "polySoftEdge1.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge1.mp";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "house.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.oc" ":lambert1.c";
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":initialMaterialInfo.t" -na;
// End of shack model.ma
