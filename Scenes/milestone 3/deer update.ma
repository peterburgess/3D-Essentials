//Maya ASCII 2012 scene
//Name: deer update.ma
//Last modified: Sun, Feb 23, 2014 05:23:23 PM
//Codeset: UTF-8
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
	setAttr ".t" -type "double3" -3.0573570764732199 7.7880051455339645 13.894762081010288 ;
	setAttr ".r" -type "double3" -18.338360660526266 4316.1999999999152 0 ;
	setAttr ".rp" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" -2.7123158100052328e-17 2.0791931072310995e-16 -2.5105537642000231e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 14.95672974233049;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.0420404548868833 1.6929504737015826 -0.62249594959672194 ;
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
	setAttr ".rp" -type "double3" -0.10239883540940498 2.7084390384826289 -1.0195833306672104 ;
	setAttr ".sp" -type "double3" -0.10239883540940498 2.7084390384826289 -1.0195833306672104 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
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
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".wt" 0.51986449956893921;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" -1.8894863 0 0 ;
	setAttr ".tk[2]" -type "float3" -1.8894863 0 0 ;
	setAttr ".tk[4]" -type "float3" -1.8894863 0 0 ;
	setAttr ".tk[6]" -type "float3" -1.8894863 0 0 ;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[4:5]" "e[8:9]" "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".wt" 0.45662331581115723;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.21550004 0.074580722 0 -0.21550004
		 0.074580722 0 -0.21550004 -0.074580722 0 0.21550004 -0.074580722 0;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[28]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".wt" 0.51449102163314819;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[12:17]" -type "float3"  0.20336628 -0.00045537826
		 -0.070381463 -0.20336626 -0.00045537826 -0.070381463 -0.23370068 0.00045537826 -0.0027961861
		 -0.20336626 -0.00045537826 0.070381463 0.20336628 -0.00045537826 0.070381463 0.23370068
		 0.00045537826 -0.0027961861;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[18]" "e[28]" "e[33]" "e[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".wt" 0.30432721972465515;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[18:25]" -type "float3"  0.00029918598 -0.16814625
		 -0.047903936 -0.00029918598 -0.17529169 0.0019031758 0.00029918598 -0.16814625 0.047903936
		 -0.00026549876 -0.12435454 0.054647036 0.00029918598 -0.072338402 0.047903936 -0.00029918598
		 -0.065192975 0.0019031758 0.00029918598 -0.072338402 -0.047903936 -0.00026549876
		 -0.12435454 -0.054647036;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1719894 2.3242135 -0.24009809 ;
	setAttr ".rs" 1056916533;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.6131980667407082 2.2786071356747861 -0.78641429784568118 ;
	setAttr ".cbx" -type "double3" -1.7307809839541481 2.3698196467374082 0.30621811506478025 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[26:33]" -type "float3"  0.0092955707 0.060894676 0.060894676
		 0.36260763 0.069977812 -0.0024192843 0.0092955707 0.060894676 -0.060894676 -0.0082487594
		 0.0052273571 -0.069466382 0.0092955707 -0.060894672 -0.060894676 -0.0092955483 -0.069977812
		 -0.0024192843 0.0092955707 -0.060894672 0.060894676 -0.0082487594 0.0052273571 0.069466382;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.4867191 2.7599967 -0.24009806 ;
	setAttr ".rs" 1438293160;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.7749791393572854 2.7302002366994138 -0.59702924135001467 ;
	setAttr ".cbx" -type "double3" -2.1984591732317971 2.7897932585690732 0.11683311817375852 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[9]" -type "float3" 0 -0.10179098 0 ;
	setAttr ".tk[34:39]" -type "float3" -0.23648584 0.4515931 -0.17332901  -0.39657402 
		0.44822222 -0.18938498  -0.4676781 0.41997367 0.0075240801  -0.1617811 0.42573941 
		0.0068862019  -0.39657402 0.44822222 0.18938498  -0.23648584 0.4515931 0.17332903 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.4867191 3.0362866 -0.24009803 ;
	setAttr ".rs" 1939285553;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.9779229412371682 2.9855125006650205 -0.8483196223047571 ;
	setAttr ".cbx" -type "double3" -1.9955152521426247 3.0870606955502744 0.36812355873314573 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[40:45]" -type "float3"  -0.1038197 0.2553122 0.22998631
		 0.10859767 0.2597844 0.25129041 0.20294391 0.2972675 -0.009983547 -0.20294391 0.28961754
		 -0.0091371434 0.10859767 0.2597844 -0.25129041 -0.1038197 0.2553122 -0.22998632;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.4867191 3.2978983 -0.24009803 ;
	setAttr ".rs" 1254629944;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.9779229412371682 3.2471242007230039 -0.8483196223047571 ;
	setAttr ".cbx" -type "double3" -1.9955152521426247 3.3486723956082578 0.36812355873314573 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[46:51]" -type "float3"  0 0.26161173 0 0 0.26161173
		 0 0 0.26161173 0 0 0.26161173 0 0 0.26161173 0 0 0.26161173 0;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 2 "f[46]" "f[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.8579633 3.1197388 -0.24009809 ;
	setAttr ".rs" 1822093898;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.9779229412371682 2.9093211945508237 -0.79675540569098757 ;
	setAttr ".cbx" -type "double3" -2.7380035171801613 3.3301565703366514 0.31655922291008665 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[43]" -type "float3" 0 -0.15922369 0 ;
	setAttr ".tk[52:57]" -type "float3" 0.11352226 0.24437535 -0.25147986  -0.11874677 
		0.23948514 -0.27477503  -0.22191015 0.19849907 0.010916569  0.22191016 0.206864 0.009991073  
		-0.11874677 0.23948514 0.27477503  0.11352226 0.24437535 0.25147995 ;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[33]" "e[37]" "e[48]" "e[50]" "e[54]" "e[56]" "e[58]" "e[60]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".wt" 0.59030598402023315;
	setAttr ".dr" no;
	setAttr ".re" 48;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[58:63]" -type "float3"  -0.38456801 0.063245304 -0.26228786
		 -0.27152178 0.09914539 0.010420436 -0.38456801 -0.060021866 -0.26228786 -0.27152178
		 -0.09914539 0.010420436 -0.38456801 0.063245304 0.26228786 -0.38456801 -0.060021866
		 0.26228786;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[14]" "e[22]" "e[32]" "e[35]" "e[39]" "e[41]" "e[43]" "e[45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".wt" 0.50191771984100342;
	setAttr ".dr" no;
	setAttr ".re" 45;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[18:25]" -type "float3" -0.00026993779 0.043221146 0.043221164  
		0.00026993779 0.049668096 -0.0017171334  -0.00026993779 0.043221146 -0.043221164  
		0.00023954835 0.0037102075 -0.0493051  -0.00026993779 -0.043221161 -0.043221164  
		0.00026993779 -0.049668096 -0.0017171334  -0.00026993779 -0.043221161 0.043221164  
		0.00023954835 0.0037102075 0.0493051 ;
	setAttr ".tk[64:71]" -type "float3" -0.000985611 0.043244164 0.043244168  
		0.00671387 0.049694534 -0.001718047  -0.000985611 0.043244164 -0.043244168  -0.0063913455 
		0.0037121898 -0.049331348  -0.000985611 -0.043244164 -0.043244168  -0.00671387 -0.049694534 
		-0.001718047  -0.000985611 -0.043244164 0.043244168  -0.0063913455 0.0037121898 0.049331348 ;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "e[6:7]" "e[15]" "e[17]" "e[26]" "e[30]" "e[34]" "e[44]" "e[49]" "e[59]" "e[67]" "e[69]" "e[79]" "e[81]" "e[91:92]" "e[102]" "e[105]" "e[113]" "e[117]" "e[126]" "e[136]" "e[144]" "e[154]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".wt" 0.54374963045120239;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[1]" -type "float3" -0.40524381 -0.047971737 0 ;
	setAttr ".tk[3]" -type "float3" -0.40524381 -0.047971737 0 ;
	setAttr ".tk[5:8]" -type "float3" -0.40524381 -0.047971737 0  0 0 0  -0.40524381 
		-0.047971737 0  -0.40524381 -0.047971737 0 ;
	setAttr ".tk[11:17]" -type "float3" -0.40524381 -0.047971737 0  -0.44043931 
		-0.046768751 -0.058674477  -0.034668449 0.0061378027 -0.058674477  -0.04082619 0.0068970742 
		-0.0023310767  -0.034668449 0.0061378027 0.058674481  -0.44043931 -0.046768751 0.058674481  
		-0.41515082 -0.046009488 -0.0023310767 ;
	setAttr ".tk[21]" -type "float3" 0.025754411 -0.0062727449 -0.058124956 ;
	setAttr ".tk[25]" -type "float3" 0.025754411 -0.0062727449 0.058124956 ;
	setAttr ".tk[29]" -type "float3" 0.047828488 0.0027825206 -0.064109609 ;
	setAttr ".tk[33]" -type "float3" 0.047828488 0.0027825206 0.064109609 ;
	setAttr ".tk[64:79]" -type "float3" -0.068309978 0 0  -0.068309978 0 0  
		-0.068309978 0 0  -0.093298823 -0.0024062868 -0.062657483  -0.068309978 0 0  -0.068309978 
		0 0  -0.068309978 0 0  -0.093298823 -0.0024062868 0.062657483  -0.19222051 -0.073519878 
		0.089856848  -0.20141682 -0.043766439 0.025002589  -0.19582793 -0.04003701 -0.00099332957  
		-0.20141682 -0.043766439 -0.025002597  -0.2516681 -0.073519878 -0.089856848  -0.20141682 
		-0.093771622 -0.025002597  -0.28633147 -0.097501054 -0.00099332957  -0.20141682 -0.093771622 
		0.025002589 ;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[10:13]" "e[24]" "e[31]" "e[36]" "e[42]" "e[51]" "e[57]" "e[71]" "e[74]" "e[83]" "e[86]" "e[94]" "e[97]" "e[107]" "e[110]" "e[120]" "e[122]" "e[128]" "e[134]" "e[146]" "e[152]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".wt" 0.49815121293067932;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[76:77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.3977323 2.3036401 -0.074262783 ;
	setAttr ".rs" 387048093;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.40835931399412606 1.0848853644345517 -0.022774221923668847 ;
	setAttr ".cbx" -type "double3" 0.254715328425689 1.7747596893821473 0.41747954246727659 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[76:77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.050144237 0.82892466 0.30109262 ;
	setAttr ".rs" 1186641793;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.35295003154821847 0.77562249269230321 0.10083320495812131 ;
	setAttr ".cbx" -type "double3" 0.25266156098298576 0.88222677077991918 0.50135203954903318 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[1]" -type "float3" 0.18863501 0 0 ;
	setAttr ".tk[128:133]" -type "float3" 0.05301648 -0.30926287 0.12196062  0.055409275 
		-0.31634778 0.072575405  -0.046886954 -0.32684422 0.12360743  0.166117 -0.35792941 
		0.076364234  0.03632696 -0.87801909 0.083872482  -0.055409275 -0.89253289 0.088639274 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[76:77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.050144244 0.6176737 0.30109265 ;
	setAttr ".rs" 549808611;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.23290599384851907 0.58550274934513524 0.18022387978760435 ;
	setAttr ".cbx" -type "double3" 0.13261750838212516 0.64984465207798436 0.42196145412651731 ;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[1]" -type "float3" -0.06994094 -0.056039415 0 ;
	setAttr ".tk[10:12]" -type "float3" 0 0 0  0 0 0  0 0 0 ;
	setAttr ".tk[101:102]" -type "float3" 0 0 0  0.052386019 0 0 ;
	setAttr ".tk[128:139]" -type "float3" -0.090534255 0.1009741 0  -0.090534255 
		0.1009741 0  -0.090534255 0.1009741 0  -0.090534255 0.1009741 0  -0.090534255 0.1009741 
		0  -0.090534255 0.1009741 0  0.11531682 -0.19011979 0.076137193  0.12004404 -0.20411694 
		-0.021429462  -0.082054935 -0.22485405 0.079390667  -0.12004405 -0.22860754 -0.013944143  
		0.082344562 -0.20370817 -0.079390675  -0.098891847 -0.23238215 -0.069973268 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[76:77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.050144244 0.32438993 0.30109268 ;
	setAttr ".rs" 1233295499;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.14687054851599191 0.30736351575596288 0.23712309953896238 ;
	setAttr ".cbx" -type "double3" 0.046582063049597999 0.34141636457188085 0.36506226417748167 ;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[134:145]" -type "float3"  0.083490171 0 0 0.083490171
		 0 0 0.083490171 0 0 0.083490171 0 0 0.083490171 0 0 0.083490171 0 0 0.082647428 -0.27813929
		 0.05456746 0.086035445 -0.2881709 -0.015358454 -0.058808692 -0.30303317 0.056899216
		 -0.086035445 -0.30572328 -0.0099937404 0.059016261 -0.2878781 -0.05689922 -0.070875689
		 -0.30842829 -0.050149743;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 2 "f[3]" "f[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2628655 1.4895272 0.21222727 ;
	setAttr ".rs" 1405055394;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.6357326755816506 1.1513881739590879 -0.022774221923668847 ;
	setAttr ".cbx" -type "double3" -1.8899985800082253 1.8276662882779355 0.44722875711647703 ;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[1]" -type "float3" 0.02671808 0 -0.10183604 ;
	setAttr ".tk[3]" -type "float3" 0 -0.087289311 -0.048705362 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.09993232 ;
	setAttr ".tk[33]" -type "float3" 0.15546574 0 0 ;
	setAttr ".tk[72]" -type "float3" -0.23816261 0 0 ;
	setAttr ".tk[79]" -type "float3" -0.26491478 0 0 ;
	setAttr ".tk[101:102]" -type "float3" 0 0 -0.098617725  0 0 -0.10289446 ;
	setAttr ".tk[146:151]" -type "float3" 0 -0.21489426 0  0 -0.21489426 0  0 
		-0.21489426 0  0 -0.21489426 0  0 -0.21489426 0  0 -0.21489426 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 2 "f[3]" "f[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1702428 0.96759087 0.28302398 ;
	setAttr ".rs" 833252147;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3625123749072121 0.93662155236942723 0.11843678114144041 ;
	setAttr ".cbx" -type "double3" -1.977973128348069 0.99856019582493261 0.44761118051735593 ;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[0]" -type "float3" -0.091002904 0 0 ;
	setAttr ".tk[7]" -type "float3" 0 -2.9802322e-08 0 ;
	setAttr ".tk[126]" -type "float3" 0 -2.9802322e-08 0 ;
	setAttr ".tk[152:157]" -type "float3" 0.17215517 -0.23949371 0.14121099  -0.016203366 
		-0.21476662 0.13546719  -0.042079277 -0.22740895 -0.023747528  0.035185553 -0.29226983 
		-0.010532771  -0.10442048 -0.82012373 0.00038243458  0.38506809 -0.83869594 0.030466139 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 2 "f[3]" "f[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2583122 0.47671384 0.28302398 ;
	setAttr ".rs" 996217327;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3670933494860695 0.45919216241581395 0.18990489599434568 ;
	setAttr ".cbx" -type "double3" -2.1495311508471535 0.49423552121860936 0.37614306566445066 ;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[158:163]" -type "float3"  -0.013174962 -0.50432462 0.071468107
		 -0.14341319 -0.47742942 0.065220706 -0.17155802 -0.49118021 0.00024028722 -0.0045809522
		 -0.49901718 0.014613821 -0.16441673 -0.49260482 -0.071468115 -0.053148244 -0.50016052
		 -0.05922848;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 2 "f[9]" "f[101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.36026564 2.0420306 -0.26634273 ;
	setAttr ".rs" 1441609066;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.19469300410203483 1.7788448389981504 -0.56600511315139101 ;
	setAttr ".cbx" -type "double3" 0.52583829066209342 2.3052160796139951 0.033319649669806495 ;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[164:169]" -type "float3"  0.014358282 -0.38937023 0.013701391
		 -0.010610104 -0.3842141 0.012503681 -0.016005874 -0.38685027 4.6069239e-05 0.016005874
		 -0.38835275 0.0028016623 -0.014636789 -0.38712341 -0.013701391 0.0066948771 -0.38857195
		 -0.01135489;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[0:2]" "e[17]" "e[27]" "e[50]" "e[63]" "e[71]" "e[75]" "e[83]" "e[87]" "e[94]" "e[98]" "e[102]" "e[107]" "e[171]" "e[189]" "e[219]" "e[237]" "e[300]" "e[308]" "e[312]" "e[320]" "e[324]" "e[328]" "e[333]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".wt" 0.5012088418006897;
	setAttr ".re" 0;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0 -0.085473165 ;
	setAttr ".tk[8]" -type "float3" -0.14758669 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.1006816 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.058797657 0 0 ;
	setAttr ".tk[26]" -type "float3" 0 0 -0.12631544 ;
	setAttr ".tk[84]" -type "float3" 0.015301712 0.047550526 0 ;
	setAttr ".tk[95]" -type "float3" -0.093505032 0 0.045469467 ;
	setAttr ".tk[103]" -type "float3" 0 0 -0.048003025 ;
	setAttr ".tk[127]" -type "float3" 0 0 0.061940812 ;
	setAttr ".tk[170:175]" -type "float3" -0.0015492919 0.4200685 -0.00037246561  
		-0.0043539274 0.26479161 -0.0018967214  0.038602117 0.42127404 0.089085191  0.096895307 
		0.27583653 0.13120542  0.035224881 0.42117262 -0.089085191  0.094210938 0.27490744 
		-0.12060707 ;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[178]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.4852729 3.5079892 -0.0053590261 ;
	setAttr ".rs" 402113929;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.6960015545184182 3.4914994296048398 -0.10745337846549319 ;
	setAttr ".cbx" -type "double3" -2.274544025450425 3.5244786795590635 0.096735326025168433 ;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk[176:201]" -type "float3"  0 0 0.022981849 0 0 0.018749226
		 0 0 0.032253202 0 0 0.032253202 0 0 0.017487196 0 0 0.0073567 0 0 -0.001143618 0
		 0 -0.0097153122 0 0 -0.018350638 0 0 -0.033116631 0 0 -0.033116631 0 0 -0.019612659
		 0 0 -0.029789928 0 0 -0.037367612 0 0 -0.029789928 0 0 -0.015641879 0 0 -0.0015980902
		 0 0 -0.051026426 0 0 -0.043264434 0 0 -0.03942997 0 0 -0.038694851 0 0 0.028459309
		 0 0 0.032996885 0 0 0.0337 0 0 0.037367612 0 0 0.036504183;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[178]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 1.7786071356747861 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.3475926 3.668421 0.12949848 ;
	setAttr ".rs" 1086494675;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4895024547869729 3.6573164519284482 0.060745624277274146 ;
	setAttr ".cbx" -type "double3" -2.2056825409228371 3.6795255001996274 0.19825133440224363 ;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[202:207]" -type "float3"  0.18314235 0.16581702 0.11185405
		 0.13700603 0.16484571 0.10151602 0.13751383 0.156387 0.16378534 0.20649911 0.15773359
		 0.168199 0.091092341 0.16387907 0.10262203 0.068861432 0.15504685 0.16418636;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 2 "f[74]" "f[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 2.2133425382778706 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.07682199 1.8661913 -0.69840914 ;
	setAttr ".rs" 397519465;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.40835931399412606 1.5228874591991963 -0.89767560603888796 ;
	setAttr ".cbx" -type "double3" 0.254715328425689 2.2094950584576192 -0.49914264920028018 ;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 120 ".tk";
	setAttr ".tk[10]" -type "float3" 0.077588983 0 0 ;
	setAttr ".tk[14]" -type "float3" 0.056902766 0 0 ;
	setAttr ".tk[32]" -type "float3" 0.2238922 0 0 ;
	setAttr ".tk[34:63]" -type "float3" 0.014725658 0 0  0.014725658 0 0  0.014725658 
		0 0  0.014725658 0 0  0.014725658 0 0  0.014725658 0 0  -0.30790621 0 -0.17579548  
		-0.30790621 0 -0.17579548  -0.30790621 0 0  -0.30790621 0 0  -0.30790621 0 0.1597116  
		-0.30790621 0 0.1597116  -0.30790621 0 -0.17579548  -0.30790621 0 -0.17579548  -0.30790621 
		0 0  -0.30790621 0 0  -0.30790621 0 0.1597116  -0.30790621 0 0.1597116  -0.26005816 
		0.005667733 -0.082275808  -0.35693908 0.0036280439 -0.091992378  -0.40040773 0 0  
		-0.21540467 0 0  -0.35078046 0.0028618544 0.084008262  -0.26598901 0.0046470147 0.075504221  
		-0.30790621 0 -0.058065031  -0.30790621 0 0  -0.30790621 0 -0.058065031  -0.30790621 
		0 0  -0.30790621 0 0.05827469  -0.30790621 0 0.05827469 ;
	setAttr ".tk[85:94]" -type "float3" 0.014725658 0 0  -0.30790621 0 -0.058065031  
		-0.30790621 0 -0.058065031  -0.38033673 -0.005667733 -0.027196905  -0.23547553 -0.0028399501 
		-0.02297366  -0.30790621 0 -0.058065031  -0.30790621 0 -0.058065031  -0.30790621 
		0 -0.058065031  -0.30790621 0 -0.058065031  0.014725658 0 0 ;
	setAttr ".tk[96]" -type "float3" 0.049213577 0 0 ;
	setAttr ".tk[109:118]" -type "float3" 0.014725658 0 0  -0.30790621 0 0.05827469  
		-0.30790621 0 0.05827469  -0.36968046 -0.0046470147 0.035668366  -0.24613196 -0.0022252507 
		0.031262536  -0.30790621 0 0.05827469  -0.30790621 0 0.05827469  -0.30790621 0 0.05827469  
		-0.30790621 0 0.05827469  0.014725658 0 0 ;
	setAttr ".tk[134:169]" -type "float3" 0.058913969 -0.10416982 0  0.058913969 
		-0.10416982 0  0.058913969 -0.10416982 0  0.058913969 -0.10416982 0  0.058913969 
		-0.10416982 0  0.058913969 -0.10416982 0  0 -0.23699535 0  0 -0.23699535 0  0 -0.23699535 
		0  0 -0.23699535 0  0 -0.23699535 0  0 -0.23699535 0  0 -0.47116426 0  0 -0.47116426 
		0  0 -0.47116426 0  0 -0.47116426 0  0 -0.47116426 0  0 -0.47116426 0  0.13633934 
		-0.15358035 0  0.13633934 -0.15358035 0  0.13633934 -0.15358035 0  0.13633934 -0.15358035 
		0  0.13633934 -0.15358035 0  0.13633934 -0.15358035 0  0.057018619 -0.11115281 0  
		0.057018619 -0.11115281 0  0.057018619 -0.11115281 0  0.057018619 -0.11115281 0  
		0.057018619 -0.11115281 0  0.057018619 -0.11115281 0  0 -0.45483965 0  0 -0.45483965 
		0  0 -0.45483965 0  0 -0.45483965 0  0 -0.45483965 0  0 -0.45483965 0 ;
	setAttr ".tk[177:187]" -type "float3" 0.014725658 0 0  -0.30790621 0 -0.17579548  
		-0.30790621 0 -0.17579548  -0.30861551 0.0046454314 -0.093156397  -0.30808151 -0.0042572417 
		-0.027619028  -0.30790621 0 0  -0.30805564 -0.0034390744 0.036393378  -0.30848736 
		0.0037522826 0.085286871  -0.30790621 0 0.1597116  -0.30790621 0 0.1597116  0.014725658 
		0 0 ;
	setAttr ".tk[194:200]" -type "float3" 0.13633934 -0.15358035 0  0.057018619 
		-0.11115281 0  0 -0.45483965 0  0 -0.45483965 0  0 -0.45483965 0  0.057018619 -0.11115281 
		0  0.13633934 -0.15358035 0 ;
	setAttr ".tk[202:213]" -type "float3" -0.45339078 0 -0.070292749  -0.37626588 
		0 -0.070292749  -0.40629661 0 -0.070292749  -0.45339078 0 -0.070292749  -0.32368958 
		0 -0.070292749  -0.32368958 0 -0.070292749  -0.29708266 0.17642877 0.1854699  -0.36400557 
		0.17501986 0.17047402  -0.36326894 0.16274996 0.26079881  -0.26320246 0.1647035 0.2672011  
		-0.43060559 0.17361777 0.1720784  -0.46285272 0.16080621 0.26138052 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	setAttr ".ics" -type "componentList" 2 "f[74]" "f[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 2.2133425382778706 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.10798656 1.3663986 -0.79083163 ;
	setAttr ".rs" 1148714249;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.39870541790075753 1.3010063079998555 -0.95952144506247805 ;
	setAttr ".cbx" -type "double3" 0.18273228904656913 1.4317909387753072 -0.62214181068213747 ;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[7]" -type "float3" 0.12337426 -0.03806445 0.061492749 ;
	setAttr ".tk[125:126]" -type "float3" 0 0 0.096371129  0.062404912 0 0.096371129 ;
	setAttr ".tk[214:219]" -type "float3" 0.055545952 -0.76156425 -0.043026917  
		0.0096538868 -0.26100644 -0.0043186122  -0.21202096 -0.77899051 -0.090367518  0.096187733 
		-0.23357986 -0.074647449  0.06387686 -0.20498823 -0.1206423  -0.054483965 -0.22606926 
		-0.12299916 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	setAttr ".ics" -type "componentList" 2 "f[74]" "f[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 2.2133425382778706 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.063427158 0.93205369 -0.79083163 ;
	setAttr ".rs" 1925716191;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.088976557045654991 0.89777301828122757 -0.8792639696863489 ;
	setAttr ".cbx" -type "double3" 0.21583086749963309 0.9663343338177266 -0.70239925625594424 ;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[220:225]" -type "float3"  0.26185593 -0.43181872 0.071303993
		 0.30972886 -0.40323326 -0.011297038 0.099724352 -0.46484452 0.080257431 0.033098582
		 -0.46545663 0.011377507 0.27764449 -0.41127053 -0.075790748 0.053329833 -0.45122272
		 -0.080257423;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 2 "f[74]" "f[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 2.2133425382778706 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.077992901 0.58088887 -0.79083163 ;
	setAttr ".rs" 1505957030;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.1879687855536506 0.55615161935544632 -0.85464522483619021 ;
	setAttr ".cbx" -type "double3" 0.031982978195472023 0.60562609712339066 -0.72701803090842532 ;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[226:231]" -type "float3"  -0.11367711 -0.3503899 0.02187233
		 -0.098992221 -0.34162143 -0.0034653535 -0.16341056 -0.3605206 0.024618773 -0.18384789
		 -0.36070821 0.0034899991 -0.10883403 -0.34408671 -0.02324862 -0.17764196 -0.35634199
		 -0.024618773;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 3 "f[10]" "f[119]" "f[187:188]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 2.2133425382778706 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2858133 1.9259698 -0.71743506 ;
	setAttr ".rs" 594301310;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.6357326755816506 1.5895379690334859 -0.93572744968207644 ;
	setAttr ".cbx" -type "double3" -1.9358937988574074 2.2624016908810201 -0.49914264920028018 ;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[76:77]" -type "float3" -0.19046099 0 0  -0.20573169 0 0 ;
	setAttr ".tk[232:237]" -type "float3" 0 -0.53344446 0  0 -0.53344446 0  0 
		-0.53344446 0  0 -0.53344446 0  0 -0.53344446 0  0 -0.53344446 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	setAttr ".ics" -type "componentList" 3 "f[10]" "f[119]" "f[187:188]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 2.2133425382778706 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2791982 1.4470688 -0.78114742 ;
	setAttr ".rs" 1671889562;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4680357227618264 1.3993965295956197 -0.9492591941622095 ;
	setAttr ".cbx" -type "double3" -2.0903606663043068 1.4947411922619405 -0.61303559186728762 ;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[6]" -type "float3" -0.15162781 0.00038206586 -0.013938719 ;
	setAttr ".tk[237:245]" -type "float3" 0.030963959 -0.80051625 -0.013531759  
		0.18575603 -0.80466092 -0.028835533  -0.13128603 -0.24181435 -0.046318188  -0.070337653 
		-0.21860135 -0.058502644  -0.005443275 -0.20004541 -0.10753249  0.12655552 -0.20999742 
		-0.11389294  -0.12219775 -0.79639149 -0.01544033  -0.15446682 -0.1995424 -0.047855586  
		-0.14272484 -0.19014141 -0.10837683 ;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	setAttr ".ics" -type "componentList" 3 "f[10]" "f[119]" "f[187:188]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 2.2133425382778706 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.3571908 0.85264528 -0.78114736 ;
	setAttr ".rs" 1213909757;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4821729908282326 0.8210931924984517 -0.89241227748664187 ;
	setAttr ".cbx" -type "double3" -2.2322085151965187 0.88419734517789506 -0.66988241913588809 ;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk[237:253]" -type "float3"  0.10121088 -0.18881719 0 0.10121088
		 -0.18881719 0 0.10121088 -0.2366914 0 0.10121088 -0.22410436 0 0.10121088 -0.24242689
		 0 0.10121088 -0.18881719 0 0.10121088 -0.18881719 0 0.10121088 -0.18881719 0 -0.067941777
		 -0.59333718 0.056846865 -0.02024396 -0.5980323 0.039510071 -0.071795858 -0.58864284
		 0.019704945 -0.014137337 -0.61054391 0.0059018577 -0.081922121 -0.58952296 -0.049641438
		 -0.044146255 -0.60079706 -0.056846861 -0.1157084 -0.58866459 0.054684766 -0.14184785
		 -0.58895296 0.017963331 -0.11751425 -0.57830328 -0.050597917;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	setAttr ".ics" -type "componentList" 2 "f[110]" "f[181]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 2.2133425382778706 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.7930462 3.9416823 -0.41353238 ;
	setAttr ".rs" 1365641489;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.9366221676165627 3.9308818487331929 -0.49250796678336428 ;
	setAttr ".cbx" -type "double3" -2.6494701156909035 3.9524830488369527 -0.33455679061682986 ;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr -s 120 ".tk";
	setAttr ".tk[1:5]" -type "float3" 0.24116434 0 0  0 -0.081272855 -0.082490191  
		0.24116434 -0.14361431 0  0 -0.10117334 0.091012768  0.24116434 -0.14361431 0 ;
	setAttr ".tk[7:9]" -type "float3" 0.24116434 0 0  0.24116434 0 0  0 -0.085570738 
		0 ;
	setAttr ".tk[11:12]" -type "float3" 0.24116434 0 0  0.24116434 0 0 ;
	setAttr ".tk[14]" -type "float3" 0.054671414 0 0 ;
	setAttr ".tk[16:26]" -type "float3" 0.24116434 0 0  0.24116434 0 0  0.13867825 
		-0.17053589 -0.015842628  0.13848038 -0.050404958 0.00062941178  0.13867825 -0.17053589 
		0.015842631  0.13766775 -0.033358548 0.019931804  0.13867825 -0.016356587 0.015842631  
		0.13848038 -0.013993478 0.00062941178  0.13867825 -0.016356587 -0.015842628  0.13766775 
		-0.033358548 -0.019931804  0 -0.085426114 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.085426114 0 ;
	setAttr ".tk[64]" -type "float3" 0 -0.12249408 -0.056710809 ;
	setAttr ".tk[66]" -type "float3" 0 -0.12249408 0 ;
	setAttr ".tk[72:82]" -type "float3" 0.24116434 0 0  0.24116434 -0.14361431 
		0  0.24116434 0 0  0.24116434 -0.14361431 0  0.24116434 0 0  0.24116434 0 0  0.24116434 
		0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.13857065 -0.049326785 -0.0068859598 ;
	setAttr ".tk[84]" -type "float3" 0.02895698 -0.041458115 0 ;
	setAttr ".tk[95]" -type "float3" 0 -0.081272855 -0.082490191 ;
	setAttr ".tk[100:106]" -type "float3" 0.13857065 -0.015071646 -0.0068859598  
		0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.13857894 
		-0.049227767 0.0082078911 ;
	setAttr ".tk[108]" -type "float3" 0.050074402 0 0 ;
	setAttr ".tk[119]" -type "float3" -0.052342158 -0.10593543 0 ;
	setAttr ".tk[124:151]" -type "float3" 0.13857894 -0.015170657 0.0082078911  
		0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 
		0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 
		0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  
		0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 
		0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 
		0 ;
	setAttr ".tk[170:176]" -type "float3" 0.24116434 0 0  0.24116434 0 0  0.24116434 
		0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0 -0.11528777 0 ;
	setAttr ".tk[181]" -type "float3" 0 0 -0.044388924 ;
	setAttr ".tk[183]" -type "float3" 0 0 0.044313017 ;
	setAttr ".tk[188]" -type "float3" 0 -0.090790026 0 ;
	setAttr ".tk[202:203]" -type "float3" 0 0 -0.066205762  0 0 -0.051433563 ;
	setAttr ".tk[213:236]" -type "float3" 0.24116434 0 0  0.24116434 0 0  0.24116434 
		0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 
		0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  
		0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 
		0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 0  0.24116434 0 
		0 ;
	setAttr ".tk[253:261]" -type "float3" 0.0051025948 -0.77742344 0.028860267  
		0.029318051 -0.77980703 0.020058632  0.0031459925 -0.77504009 0.010003898  0.032418303 
		-0.78615922 0.0029962624  -0.0019949807 -0.77548707 -0.025202185  0.017183265 -0.78121096 
		-0.028860264  -0.01914773 -0.77505147 0.027762603  -0.032418303 -0.77519804 0.009119682  
		-0.020064542 -0.76979107 -0.025687782 ;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	setAttr ".ics" -type "componentList" 2 "f[110]" "f[181]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 2.2133425382778706 -0.24009809139045046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.7930462 4.1285491 -0.51722354 ;
	setAttr ".rs" 586859385;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.9828777561480568 4.1142687706158227 -0.61967808249266909 ;
	setAttr ".cbx" -type "double3" -2.6032145271594094 4.1428292898342676 -0.41476901116641329 ;
createNode polyTweak -n "polyTweak31";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[262:267]" -type "float3"  0.00011179527 0.18944174 -0.080212221
		 -0.046255689 0.18853275 -0.09064655 0.00043509132 0.18405691 -0.040990435 -0.031387001
		 0.18338697 -0.12377404 0.046255689 0.19034618 -0.0939456 0.032103729 0.18472371 -0.13014174;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n"
		+ "                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n"
		+ "                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 27 "e[12]" "e[20]" "e[137:138]" "e[142]" "e[147]" "e[153]" "e[195]" "e[201]" "e[243]" "e[251]" "e[258]" "e[263]" "e[270]" "e[275]" "e[282]" "e[287]" "e[290]" "e[295]" "e[422]" "e[427]" "e[434]" "e[439]" "e[446]" "e[451]" "e[458]" "e[461]" "e[464]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 2.7084390384826289 -0.24009809139045046 1;
	setAttr ".wt" 0.52594834566116333;
	setAttr ".re" 137;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak32";
	setAttr ".uopa" yes;
	setAttr -s 240 ".tk";
	setAttr ".tk[0]" -type "float3" -0.32388806 0 0 ;
	setAttr ".tk[2:6]" -type "float3" -0.32388806 -0.22632094 0  0 -0.22632094 
		0  -0.32388806 -0.22632094 0  0 -0.22632094 0  -0.32388806 0 0 ;
	setAttr ".tk[8:10]" -type "float3" 0 -0.22632094 0  -0.32388806 -0.22632094 
		0  -0.29447603 -0.021355769 0 ;
	setAttr ".tk[12:76]" -type "float3" 0 -0.22632094 0  -0.32388806 -0.22632094 
		0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  0 -0.22632094 0  0 -0.22632094 
		0  -0.1890672 -0.14753948 -0.055903945  -0.18976545 -0.17016032 0.0022210083  -0.1890672 
		-0.14753948 0.055903945  -0.19263288 -0.21973857 0.070333414  -0.1890672 -0.10773449 
		0.055903945  -0.18976545 -0.19678895 0.0022210083  -0.1890672 -0.10773449 -0.055903945  
		-0.19263288 -0.21973857 -0.070333414  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 
		0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 0 0  -0.2253769 
		-0.090885185 0  -0.32388806 0 0  -0.32388806 -0.22632094 0  -0.29041097 -0.21955661 
		-0.074258044  -0.35890582 -0.22099866 -0.081127651  -0.38932809 -0.23308526 0.0031212205  
		-0.25844797 -0.23061851 0.0028482941  -0.35890582 -0.22099866 0.080931619  -0.29041097 
		-0.21955661 0.074062042  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 0 0  -0.32388806 -0.15975337 
		0  -0.32388806 0 0  -0.23048732 -0.22632094 0  0 -0.22632094 0  0 -0.059509635 0  
		0 -0.059509635 0  0 -0.059509635 0  0 -0.22632094 0 ;
	setAttr ".tk[80:100]" -type "float3" 0 -0.22632094 0  0 -0.059509635 0  -0.1894469 
		-0.1663558 -0.024298523  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.37544796 
		-0.22757076 -0.035317358  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.27303112 
		-0.22557154 -0.032331508  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		0 0  -0.32388806 0 0  -0.32388806 -0.10612092 0  -0.1894469 -0.16118863 -0.024298523 ;
	setAttr ".tk[103:124]" -type "float3" 0 -0.22632094 0  0 -0.22632094 0  0 
		-0.059509635 0  -0.18941759 -0.16600637 0.028963236  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.37417319 -0.22706431 0.041882567  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.27437037 -0.22510801 0.038323503  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 0 0  -0.32388806 0 0  -0.32388806 -0.10612092 0  -0.18941759 
		-0.161538 0.028963236 ;
	setAttr ".tk[127]" -type "float3" 0 -0.22632094 0 ;
	setAttr ".tk[140:212]" -type "float3" 0 -0.38176468 0  0 -0.38176468 0  0 
		-0.38176468 0  0 -0.38176468 0  0 -0.38176468 0  0 -0.38176468 0  0 -0.51213503 0  
		0 -0.51213503 0  0 -0.51213503 0  0 -0.51213503 0  0 -0.51213503 0  0 -0.51213503 
		0  -0.32388806 0 0  -0.32388806 0 0  -0.32388806 0 0  -0.32388806 0 0  -0.32388806 
		0 0  -0.32388806 0 0  -0.32388806 -0.24087265 0  -0.32388806 -0.24087265 0  -0.32388806 
		-0.24087265 0  -0.32388806 -0.24087265 0  -0.32388806 -0.24087265 0  -0.32388806 
		-0.24087265 0  -0.32388806 -0.51213503 0  -0.32388806 -0.51213503 0  -0.32388806 
		-0.51213503 0  -0.32388806 -0.51213503 0  -0.32388806 -0.51213503 0  -0.32388806 
		-0.51213503 0  0 -0.22632094 0  0 -0.22632094 0  0 -0.22632094 0  0 -0.22632094 0  
		0 -0.22632094 0  0 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32474118 -0.2202794 
		-0.081957571  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 
		0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 
		0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 
		0  -0.32474118 -0.2202794 0.081957571  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 
		-0.04927671  -0.32388806 0 0  -0.23180662 -0.090885185 0  -0.32388806 0 0  -0.32388806 
		0 0  -0.32388806 -0.24087265 0  -0.32388806 -0.51213503 0  -0.32388806 -0.51213503 
		0  -0.32388806 -0.51213503 0  -0.32388806 -0.24087265 0  -0.32388806 0 0  -0.32388806 
		-0.22632094 0.04927671  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 
		-0.22632094 0 ;
	setAttr ".tk[225:273]" -type "float3" 0 -0.38176468 0  0 -0.38176468 0  0 
		-0.38176468 0  0 -0.38176468 0  0 -0.38176468 0  0 -0.38176468 0  0 -0.51213503 0  
		0 -0.51213503 0  0 -0.51213503 0  0 -0.51213503 0  0 -0.51213503 0  0 -0.51213503 
		0  -0.32388806 0 0  -0.32388806 0 0  -0.32388806 0 0  -0.32388806 0 0  -0.32388806 
		0 0  -0.32388806 0 0  -0.32388806 0 0  -0.32388806 0 0  -0.32388806 -0.24087265 0  
		-0.32388806 -0.24087265 0  -0.32388806 -0.24087265 0  -0.32388806 -0.24087265 0  
		-0.32388806 -0.24087265 0  -0.32388806 -0.24087265 0  -0.32388806 -0.24087265 0  
		-0.32388806 -0.24087265 0  -0.32388806 -0.51213503 0  -0.32388806 -0.51213503 0  
		-0.32388806 -0.51213503 0  -0.32388806 -0.51213503 0  -0.32388806 -0.51213503 0  
		-0.32388806 -0.51213503 0  -0.32388806 -0.51213503 0  -0.32388806 -0.51213503 0  
		-0.32388806 -0.51213503 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  
		-0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  -0.32388806 -0.22632094 0  
		-0.32388806 -0.22632094 0  -0.32420337 -0.060114905 -0.35614648  -0.19343491 -0.057551399 
		-0.32671875  -0.32511517 -0.044928282 -0.29727626  -0.23536839 -0.04303892 -0.23329054  
		-0.4543412 -0.062665686 -0.31741464  -0.41442904 -0.046808928 -0.21533205 ;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[30]" "e[34]" "e[121]" "e[124]" "e[128]" "e[130]" "e[132]" "e[134]" "e[157]" "e[191]" "e[205]" "e[239]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 2.7084390384826289 -0.24009809139045046 1;
	setAttr ".wt" 0.48067060112953186;
	setAttr ".dr" no;
	setAttr ".re" 124;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak33";
	setAttr ".uopa" yes;
	setAttr -s 43 ".tk";
	setAttr ".tk[27]" -type "float3" 0 0.077744462 0 ;
	setAttr ".tk[64:66]" -type "float3" 0 0.10255108 0  0 0.10255108 0  0 0.10255108 
		0 ;
	setAttr ".tk[72:76]" -type "float3" -0.17011681 0 0  -0.26734504 0 0  -0.24526893 
		-0.023053557 0  -0.26734504 0 0  -0.17011681 0 0 ;
	setAttr ".tk[81]" -type "float3" -0.24526893 -0.023053557 0 ;
	setAttr ".tk[83:84]" -type "float3" 0 0.10255108 0  0 0.077744462 0 ;
	setAttr ".tk[105]" -type "float3" -0.24526893 -0.023053557 0 ;
	setAttr ".tk[107:108]" -type "float3" 0 0.10255108 0  0 0.077744462 0 ;
	setAttr ".tk[274:301]" -type "float3" -0.18827114 0 0.089966036  -0.13239665 
		0.08784046 0.073718756  -0.13239665 0.032766189 0  -0.13239665 0.032766189 -2.3283064e-10  
		-0.13239665 0.032766189 9.3132257e-10  -0.13239665 0.08784046 -0.080545396  -0.18827114 
		0 -0.1009662  0 0 -0.11148807  0 0 -0.099713437  0 0 -0.096101604  0 0 -0.096101604  
		0 0 -7.4505806e-09  0 0 0.071467742  0 0 0.071467742  0 0 0.067925021  0 0 0.056375705  
		0 0 0.024117235  0 0 -2.3283064e-10  0 0 -0.018652407  0 0 -0.051715028  0 0 -0.063221253  
		0 0 -0.071467735  0 0 -0.071467735  0 0 0  0 0 0.091693506  0 0 0.091693506  0 0 
		0.099957474  0 0 0.11148807 ;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[84:85]" "e[87]" "e[90]" "e[92]" "e[112]" "e[115]" "e[120]" "e[165]" "e[175]" "e[213]" "e[223]" "e[352]" "e[364]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.008211637526230553 2.7084390384826289 -0.24009809139045046 1;
	setAttr ".wt" 0.42468157410621643;
	setAttr ".dr" no;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak34";
	setAttr ".uopa" yes;
	setAttr -s 58 ".tk";
	setAttr ".tk[1:2]" -type "float3" 0.089709602 0 0  -0.14566328 0 0 ;
	setAttr ".tk[4]" -type "float3" -0.14566328 0 0 ;
	setAttr ".tk[7]" -type "float3" 0.089709602 0 0 ;
	setAttr ".tk[9]" -type "float3" -0.068375595 0 0 ;
	setAttr ".tk[13:15]" -type "float3" 0.087605424 0 0  0.099705607 0 0  0.087605424 
		0 0 ;
	setAttr ".tk[34:39]" -type "float3" -0.060957931 0 0  0 0 -0.047122374  
		0.044388816 0 0  -0.075120419 -0.089259975 0  0 0 0.047122374  -0.060957931 0 0 ;
	setAttr ".tk[47:48]" -type "float3" -0.081229761 0 0  -0.081229761 0 0 ;
	setAttr ".tk[58:63]" -type "float3" -0.20682411 0 0  -0.20682411 0 0  -0.20682411 
		0 0  -0.20682411 0 0  -0.20682411 0 0  -0.20682411 0 0 ;
	setAttr ".tk[85:87]" -type "float3" 0.041802537 0 0  0.049878184 0 0  -0.029024195 
		0 0 ;
	setAttr ".tk[91:92]" -type "float3" -0.20682411 0 0  -0.20682411 0 0 ;
	setAttr ".tk[94:96]" -type "float3" -0.088277057 -0.058132946 0  -0.068375595 
		0 0  0.099705607 0 0 ;
	setAttr ".tk[109:111]" -type "float3" 0.041802537 0 0  0.049878184 0 0  -0.029024195 
		0 0 ;
	setAttr ".tk[115:116]" -type "float3" -0.20682411 0 0  -0.20682411 0 0 ;
	setAttr ".tk[118:120]" -type "float3" -0.088277057 -0.058132946 0  -0.068375595 
		0 0  0.099705607 0 0 ;
	setAttr ".tk[130:131]" -type "float3" 0.078940973 0 0  0.078940973 0 0 ;
	setAttr ".tk[133]" -type "float3" 0.078940973 0 0 ;
	setAttr ".tk[176]" -type "float3" -0.14566328 0 0 ;
	setAttr ".tk[188]" -type "float3" -0.14566328 0 0 ;
	setAttr ".tk[215:216]" -type "float3" 0.078940973 0 0  0.078940973 0 0 ;
	setAttr ".tk[218]" -type "float3" 0.078940973 0 0 ;
	setAttr ".tk[302:313]" -type "float3" 0.00032330869 -0.015430357 0.018015523  
		0.0016215452 0.00082141231 0.022665538  0.00032330869 -0.028886778 0.018015523  0.00096606242 
		-0.024429344 0.0093336478  0.0016040781 -0.021337669 0.00071574026  0.0010197252 
		-0.024316747 -0.0078304037  0.00032330869 -0.028886778 -0.018015521  -0.00019562322 
		0.00082141231 -0.022665538  0.00032330869 -0.015430357 -0.016912177  -0.00073420489 
		-0.021223333 -0.0078304037  -0.0016215452 -0.022449376 0.00071574026  -0.00065271126 
		-0.021110732 0.0093336478 ;
createNode polyTweak -n "polyTweak35";
	setAttr ".uopa" yes;
	setAttr -s 111 ".tk";
	setAttr ".tk[10]" -type "float3" 0 0.040077388 0 ;
	setAttr ".tk[18:20]" -type "float3" 0 0.041142426 0  0 0.041142426 0  0 
		0.041142426 0 ;
	setAttr ".tk[27]" -type "float3" -0.075619049 0.0520484 0 ;
	setAttr ".tk[29]" -type "float3" 0.13348186 0 0 ;
	setAttr ".tk[31]" -type "float3" 0.10589276 0.040192537 0 ;
	setAttr ".tk[33]" -type "float3" 0.13348186 0 0 ;
	setAttr ".tk[37]" -type "float3" 0.029304814 0.034116738 0 ;
	setAttr ".tk[40:66]" -type "float3" 0.0011907517 0.05860338 -0.033912659  
		0.0557747 0.059752572 -0.028438233  0.080018416 0.0085688615 -0.0011525672  0.29261366 
		0.00029635336 -0.00093507249  0.0557747 0.059752572 0.040955253  0.0011907517 0.05860338 
		0.046429642  0.073491305 0.086377881 -0.033912659  0.047150798 0.087527074 -0.028438233  
		0.071394511 0.097158931 -0.0011525672  0.019152086 0.057786446 -0.00093507249  0.0557747 
		0.087527074 0.040955253  0.073491305 0.086377881 0.046429642  0.15439181 0.073298 
		0.00098719192  0.10438675 0.072245218 -0.0040279925  0.071906403 0.068765178 6.4103051e-06  
		0.0090993559 0.005451343 0.00012564957  0.07175988 0.079632543 0.012753731  0.14890963 
		0.081256859 0.0050161472  -0.04974217 0.04600234 -0.10868676  0.0083559491 0.05478429 
		0.0041104644  -0.04974217 0.015848391 -0.10868676  0.0083559491 0.0062779272 0.0041104644  
		-0.04974217 0.046002354 0.11193998  -0.04974217 0.015848391 0.11193998  -0.043516524 
		-0.072416134 0  -0.087829828 0 0  -0.043516524 -0.072416134 0 ;
	setAttr ".tk[82:84]" -type "float3" 0 0.041142426 0  -0.087829828 0 0  -0.075619049 
		0.0520484 0 ;
	setAttr ".tk[86:94]" -type "float3" 0.074252605 0.015823863 0.023314783  
		0.065875798 0.092764385 0.023314783  0.092310116 0.067447186 0.029416023  0.16708013 
		0.068906784 0.03159586  0.030773448 0.053764477 0.020935334  -0.034705438 0.010644377 
		-0.013670286  -0.034705438 0.050777543 -0.013670286  0.15472908 0.0039869538 0.020935334  
		0.029304814 0.034116738 0 ;
	setAttr ".tk[98]" -type "float3" 0.11444272 0 0 ;
	setAttr ".tk[106:108]" -type "float3" 0 0.041142426 0  -0.087829828 0 0  -0.075619049 
		0.0520484 0 ;
	setAttr ".tk[110:118]" -type "float3" 0.073236778 0.015420274 -0.025854871  
		0.064859979 0.092360817 -0.025854871  0.054563351 0.072800472 -0.031229425  0.16697703 
		0.075004034 -0.035238195  0.031840749 0.053395122 -0.023018636  -0.035864212 0.01104542 
		0.022101108  -0.035864212 0.050409563 0.022101108  0.15579633 0.004325903 -0.023018636  
		0.029304814 0.034116738 0 ;
	setAttr ".tk[122]" -type "float3" 0.11444272 0 0 ;
	setAttr ".tk[176]" -type "float3" 0 0.042613987 0.031143723 ;
	setAttr ".tk[178:186]" -type "float3" 0.028548716 0.059179362 -0.027744586  
		0.028548716 0.086953886 -0.027744586  0.12932874 0.072770283 -0.0046288501  0.12960479 
		0.068175226 0.041197482  0.027937956 0.045813482 -5.5528562e-05  0.11063435 0.073899493 
		-0.047917318  0.1102415 0.080442779 0.013917066  0.028548716 0.086953886 0.040169947  
		0.028548716 0.059179362 0.040169947 ;
	setAttr ".tk[191]" -type "float3" 0 0.040192537 0 ;
	setAttr ".tk[201:212]" -type "float3" -0.014926848 0.12610728 0.062212646  
		0.038301162 0.12700894 0.042007823  0.028698269 0.13486022 -0.0091399755  -0.029809222 
		0.13361019 0.009914455  0.083801948 0.12790611 0.070781596  0.097966835 0.13610402 
		0.013638953  0.033835821 0.20289029 -0.0050907894  0.036831185 0.20295334 -0.0044196076  
		0.036798228 0.20350252 -0.0084623843  0.032319393 0.20341514 -0.0087489448  0.039812095 
		0.20301612 -0.0044914088  0.041255422 0.20358954 -0.0084884167 ;
	setAttr ".tk[262:273]" -type "float3" 0.028182421 0.14347279 -0.099750012  
		-0.032337539 0.1422864 -0.11336918  0.028604398 0.13644442 -0.13751069  -0.012930626 
		0.13556999 -0.15660805  0.088410512 0.14465326 -0.11767516  0.069939069 0.13731477 
		-0.16491932  0.028051704 0.15887925 -0.02930275  0.021732448 0.15875536 -0.030724801  
		0.02809578 0.15814537 -0.035657812  0.023758844 0.15805405 -0.035239641  0.034340519 
		0.15900248 -0.031174421  0.03241181 0.15823624 -0.036107481 ;
	setAttr ".tk[314:327]" -type "float3" 0.001424883 0.068084612 -0.016168296  
		-0.068631992 0.031911604 -0.10331167  -0.055818196 0.032369383 -0.011145564  -0.014621956 
		0.032753535 0.0040066666  -0.056805681 0.032334119 0.019337768  -0.068631992 0.031911604 
		0.10694163  0.001424883 0.068084612 0.028724637  0.040527254 0.068907879 0.019777732  
		0.079440981 0.069727145 0.020900138  0.099314593 0.076635949 -0.037174337  0.10885752 
		0.083493836 -0.0018676743  0.10076652 0.077212758 0.033103172  0.074206337 0.069727145 
		-0.0083437916  0.040527254 0.068907879 -0.0073523857 ;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-16 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-16 0
		 -0.10239883540940498 2.7084390384826289 -1.0195833306672104 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
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
connectAttr "transformGeometry1.og" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplitRing4.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak12.ip";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak13.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polySplitRing9.ip";
connectAttr "pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polySplitRing9.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyExtrudeFace20.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyExtrudeFace21.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyExtrudeFace22.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyExtrudeFace23.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polyExtrudeFace24.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak31.ip";
connectAttr "polyTweak32.out" "polySplitRing10.ip";
connectAttr "pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polySplitRing11.ip";
connectAttr "pCubeShape1.wm" "polySplitRing11.mp";
connectAttr "polySplitRing10.out" "polyTweak33.ip";
connectAttr "polyTweak34.out" "polySplitRing12.ip";
connectAttr "pCubeShape1.wm" "polySplitRing12.mp";
connectAttr "polySplitRing11.out" "polyTweak34.ip";
connectAttr "polySplitRing12.out" "polyTweak35.ip";
connectAttr "polyTweak35.out" "transformGeometry1.ig";
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of deer update.ma
