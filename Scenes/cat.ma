//Maya ASCII 2012 scene
//Name: cat.ma
//Last modified: Fri, Jan 17, 2014 10:19:12 AM
//Codeset: UTF-8
requires maya "2012";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "201201172010-821143";
fileInfo "osv" "Mac OS X 10.8.4";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.7992875165126683 5.5138707518551531 12.673349406974241 ;
	setAttr ".r" -type "double3" -13.538352736524686 3946.9999999996876 -2.0401352091572576e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 13.144285233992754;
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
	setAttr ".t" -type "double3" 0.016572908649910456 2.2969711193135023 0.012578552569830315 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[274:279]" -type "float3" -0.0061844359 0.0096775573 0.045972228  
		0.071241051 -0.0096775573 0.03413875  0.0567034 -0.0087589193 -0.034275789  -0.01011581 
		0.0085346652 -0.045972228  -0.066393711 -0.0076872688 -0.022718759  -0.071241058 
		-0.0050419075 0.026723402 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 3.9756882543984338;
	setAttr ".h" 1.4312261583067585;
	setAttr ".d" 2.0083684809061264;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".wt" 0.51958417892456055;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[4:5]" "e[8:9]" "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".wt" 0.50975519418716431;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.56721801 0.20419544 0 -0.56721801
		 0.20419544 0 -0.56721801 -0.20419544 0 0.56721801 -0.20419544 0;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[28]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".wt" 0.31685954332351685;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[12:17]" -type "float3"  0.29827422 -0.00029889133
		 0.15067692 -0.29827422 -0.00029889133 0.15067692 -0.38338467 0.00029889136 -0.0059017711
		 -0.29827422 -0.00029889133 -0.15067692 0.29827422 -0.00029889133 -0.15067692 0.38338467
		 0.00029889136 -0.0059017711;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[14]" "e[22]" "e[32]" "e[35]" "e[37]" "e[39]" "e[41]" "e[43]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".wt" 0.61620306968688965;
	setAttr ".dr" no;
	setAttr ".re" 32;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[18]" "e[28]" "e[33]" "e[45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".wt" 0.45514333248138428;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[18:33]" -type "float3"  0.015613928 0.10756131 0.15093546
		 -0.015613928 0.13825323 -0.005911896 0.015613928 0.10756131 -0.15093546 -0.00080739614
		 0.0020536415 -0.17358319 0.015613928 -0.10756131 -0.15093546 -0.015613928 -0.13825323
		 -0.005911896 0.015613928 -0.10756131 0.15093546 -0.00080739614 0.0020536415 0.17358319
		 -0.022913711 0.12155931 0.17057818 0.022913711 0.15624547 -0.0066812704 -0.022913711
		 0.12155931 -0.17057818 0.0011848346 0.0023209015 -0.19617322 -0.022913711 -0.12155931
		 -0.17057818 0.022913711 -0.15624547 -0.0066812704 -0.022913711 -0.12155931 0.17057818
		 0.0011848346 0.0023209015 0.19617322;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7948642 2.6409764 0.012578553 ;
	setAttr ".rs" 923136404;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3467905957598796 2.5911334909680441 -0.74298363367131959 ;
	setAttr ".cbx" -type "double3" -1.24293784688903 2.6908191599133566 0.76814073881098022 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0.10450978 -0.24862203 ;
	setAttr ".tk[4]" -type "float3" 0 0.10450978 0.24862203 ;
	setAttr ".tk[9:10]" -type "float3" 0.19169852 0 0  0.3530212 0.13801479 
		0 ;
	setAttr ".tk[14]" -type "float3" 0.44624856 0 0 ;
	setAttr ".tk[18:20]" -type "float3" 0.13518383 0 -0.30057305  0.38686988 
		0 0  0.13518383 0 0.30057305 ;
	setAttr ".tk[34:41]" -type "float3" 0.019464722 0.07123585 -0.41822106  
		0.56569362 -0.086600482 -0.0039153383  0.019464722 0.07123585 0.41822106  -0.0010065095 
		0.0013600884 -0.11496089  0.019464722 -0.07123585 -0.099961713  -0.019464722 -0.09156251 
		-0.0039153383  0.019464722 -0.07123585 0.099961713  -0.0010065095 0.0013600884 0.11496089 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.9093564 3.0447831 0.010439401 ;
	setAttr ".rs" 588524188;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3527319867510905 3.0047432340863303 -0.59438257852605592 ;
	setAttr ".cbx" -type "double3" -1.4659808118243327 3.084823028016384 0.61526138147302856 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[9]" -type "float3" 0 -0.35013509 0 ;
	setAttr ".tk[42:47]" -type "float3" -0.079797156 0.41360959 -0.15287934  
		-0.19778937 0.41052541 -0.13303438  -0.22304299 0.39866018 0.0047567277  -0.0059414431 
		0.39400372 0.0034574633  -0.18306352 0.41052541 0.12875612  -0.0650713 0.41360959 
		0.14860108 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1077166 3.4156675 0.010439401 ;
	setAttr ".rs" 1249061946;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.8182423550982585 3.3515019573453024 -0.95881014505437623 ;
	setAttr ".cbx" -type "double3" -1.3971909720797648 3.4798330225232199 0.97968894800134887 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[48:53]" -type "float3"  -0.28374693 0.34675881 0.36442754
		 0.0066390848 0.35434893 0.31558776 0.068789862 0.38354993 -0.023524541 -0.4655104
		 0.39500985 -0.020326972 0.015511868 0.35434893 -0.31558776 -0.274874 0.34675881 -0.36442754;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1077166 3.9513371 0.010439401 ;
	setAttr ".rs" 1997536315;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.8182423550982585 3.8871715225461081 -0.95881014505437623 ;
	setAttr ".cbx" -type "double3" -1.3971909720797648 4.0155027069333151 0.97968894800134887 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[54:59]" -type "float3"  0 0.53566962 0 0 0.53566962
		 0 0 0.53566962 0 0 0.53566962 0 0 0.53566962 0 0 0.53566962 0;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 2 "f[27]" "f[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5992098 1.4127704 0.012578553 ;
	setAttr ".rs" 825895044;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.85951949764298297 0.93383826391726288 -1.3384558502774597 ;
	setAttr ".cbx" -type "double3" 2.3389000456433187 1.8917026229384497 1.3636129554171204 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk";
	setAttr ".tk[1]" -type "float3" 0.097217418 0.25619391 -0.20539421 ;
	setAttr ".tk[3]" -type "float3" 0.097217418 -0.036546834 -0.20539421 ;
	setAttr ".tk[5]" -type "float3" 0.097217418 -0.036546834 0.20539421 ;
	setAttr ".tk[7:8]" -type "float3" 0.097217418 0.25619391 0.20539421  -0.018800495 
		-0.078312695 0.008044959 ;
	setAttr ".tk[11:12]" -type "float3" -0.018800495 0.29795974 0.008044959  
		0.036208846 0.10702892 -0.23621348 ;
	setAttr ".tk[16:17]" -type "float3" 0.036208846 0.10702892 0.23621348  -0.097217418 
		0.10609178 0.0092521021 ;
	setAttr ".tk[29]" -type "float3" -0.24557455 0 0 ;
	setAttr ".tk[33]" -type "float3" -0.24557455 0 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.19233985 0 ;
	setAttr ".tk[51]" -type "float3" 0 -0.15702838 0 ;
	setAttr ".tk[54:65]" -type "float3" 0 -0.14147176 0  0 -0.14147176 0  0 
		-0.19167657 0  0 -0.21931338 0  0 -0.14147176 0  0 -0.14147176 0  0.080016471 0.19235489 
		-0.34150767  -0.19210638 0.19038759 -0.29573956  -0.25034827 0.16302337 0.02204502  
		0.25034827 0.14576435 0.019048553  -0.20042115 0.19038759 0.29573956  0.071701571 
		0.2039094 0.34150767 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 2 "f[27]" "f[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5402337 1.3629925 0.12756985 ;
	setAttr ".rs" 820132680;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.98601372648285723 1.030039445329006 -1.2657393757443787 ;
	setAttr ".cbx" -type "double3" 2.0944537680249105 1.6959456213000372 1.5208790954012512 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[66:73]" -type "float3"  0.25269723 -0.30950412 0.072716475
		 0.20988682 0.10205974 -0.08797282 -0.24444626 -0.28926617 -0.2621344 -0.16603674
		 -0.203088 -0.22793296 0.10415418 0.096201167 0.14717916 0.12649424 -0.25159338 0.1572662
		 -0.054110937 -0.17386371 0.1711805 -0.24444626 -0.19575705 0.2621344;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[0:3]" "e[18]" "e[28]" "e[76]" "e[81]" "e[89]" "e[93]" "e[101]" "e[105]" "e[113]" "e[117]" "e[121]" "e[126]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".wt" 0.5031963586807251;
	setAttr ".dr" no;
	setAttr ".re" 113;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 37 ".tk";
	setAttr ".tk[0]" -type "float3" 0.41896203 -0.017498884 -0.28911152 ;
	setAttr ".tk[2:6]" -type "float3" 0 0 -0.1689965  0 0 -0.29832691  0 0 
		0.1689965  0 0 0.29832691  0.41896203 -0.017498884 0.28911152 ;
	setAttr ".tk[13]" -type "float3" 0.16449137 -0.10847365 -0.2583077 ;
	setAttr ".tk[15]" -type "float3" 0.16449137 -0.10847365 0.2583077 ;
	setAttr ".tk[18]" -type "float3" 0 0 -0.19113638 ;
	setAttr ".tk[20:26]" -type "float3" 0 0 0.19113638  0.55070847 0 0.29713306  
		0.41608337 0.013468745 0.33256683  0.53851521 0 0  0.41608337 0.013468745 -0.33256683  
		0.55070847 0 -0.29713306  0 0 -0.47561482 ;
	setAttr ".tk[28:34]" -type "float3" 0 0 0.47561482  0 0 0.30218574  -0.41896203 
		0.017498884 0.33822221  -0.42088622 0 0  -0.41896203 0.017498884 -0.33822221  0 0 
		-0.30218574  0 0 -0.14642783 ;
	setAttr ".tk[36:41]" -type "float3" 0 0 0.14642783  0.51088268 0 0.3016921  
		0.24623792 0.017105112 0.33766982  0.38365489 0 0  0.24623792 0.017105112 -0.33766982  
		0.51088268 0 -0.3016921 ;
	setAttr ".tk[74:81]" -type "float3" 0.065371685 -0.53707349 -0.33929646  
		0.059751347 -0.46962851 -0.33550188  -0.084646851 -0.55615669 -0.31554478  -0.060384497 
		-0.4807176 -0.27802846  0.075900041 -0.46873367 0.29391474  0.084646851 -0.54591829 
		0.33929646  -0.077479087 -0.48518109 0.20820323  -0.084646851 -0.5704385 0.25953975 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 4 "f[58]" "f[62]" "f[92]" "f[95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.9368534 3.9601521 0.010439401 ;
	setAttr ".rs" 1523374212;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3348153073687663 3.7456998981717184 -0.95881014505437623 ;
	setAttr ".cbx" -type "double3" -1.5388915974993815 4.1746041931393698 0.97968894800134887 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[82:97]" -type "float3" -0.010122295 0.063163243 -0.045507658  
		-0.010122295 0.043363545 -0.045507658  -0.0036553231 0.025754778 -0.028437655  0.0025952491 
		0.0050580315 -0.027482081  0.0060985954 -0.038493808 -0.048837781  0.019273283 -0.075517081 
		-0.038952012  -0.0045972764 -0.083191909 -0.0021425392  0.019273283 -0.075517081 
		0.038952012  0.0060985954 -0.038493808 0.048837781  0.0025952491 0.0050580315 0.027482081  
		-0.0043949676 0.025754778 0.028222766  -0.011307611 0.043363545 0.045292765  -0.011307611 
		0.063163243 0.045292765  -0.014166323 0.079880886 0.029296353  -0.019273281 0.083191916 
		-0.0020053354  -0.013398636 0.080169216 -0.029511245 ;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[103:104]" "e[106]" "e[108]" "e[110]" "e[112]" "e[162]" "e[184]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".wt" 0.41684076189994812;
	setAttr ".dr" no;
	setAttr ".re" 108;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[51]" -type "float3" 0 -0.12534699 0 ;
	setAttr ".tk[98:109]" -type "float3" 0.22597992 0.53492659 0.20331322  0.011912603 
		0.47786278 0.21544763  0.045823947 0.20581597 0.41766694  0.18058385 0.27512008 0.409785  
		-0.21218343 0.51921505 0.28184724  -0.10319584 0.26093954 0.46064833  0.032481462 
		0.24323732 -0.4490208  -0.0029406177 0.45111561 -0.17238723  0.19277306 0.49398017 
		-0.15596505  0.15569887 0.29206678 -0.43841621  -0.20656955 0.48217812 -0.26339886  
		-0.10293836 0.28816923 -0.50799662 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 4 "f[54]" "f[57]" "f[108]" "f[115]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.5647295 3.4968235 0.010439401 ;
	setAttr ".rs" 1323607058;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.8182423550982585 3.1974576868298605 -0.95881014505437623 ;
	setAttr ".cbx" -type "double3" -2.3112163979907145 3.7961895622494772 0.97968894800134887 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 2 "f[27]" "f[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5633198 0.8282119 0.12756985 ;
	setAttr ".rs" 724536136;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.0528447191815267 0.52964498178988251 -1.605035835896051 ;
	setAttr ".cbx" -type "double3" 2.0737947981457601 1.126778856683071 1.8601755555529236 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[74:81]" -type "float3" 0.047391415 0.10679737 5.8207661e-10  
		-0.069151387 0.11533381 1.0477379e-09  0.039629452 -0.15419796 5.5297278e-10  -0.082518324 
		-0.092546284 3.259629e-09  -0.066338308 0.1431171 6.9849193e-10  0.067656085 0.13729593 
		3.9581209e-09  -0.07949888 -0.12290166 -2.3283064e-09  0.06398803 -0.15803547 -3.4924597e-10 ;
	setAttr ".tk[117:125]" -type "float3" -0.56533605 -0.029668517 -0.52211201  
		-0.30492496 0.053311363 0.029122252  -0.56533605 -0.11818253 -0.52211201  -0.30492496 
		-0.081129059 0.029122252  -0.57804835 -0.029668517 0.52211201  -0.57804835 -0.11818253 
		0.52211201  -0.30492496 -0.26921114 0.029122252  -0.57804835 -0.24201362 0.52211201  
		-0.56533605 -0.24201362 -0.52211201 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5254707 0.46424356 -1.3912747 ;
	setAttr ".rs" 233927048;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1396154921154866 0.41078688280611786 -1.605035835896051 ;
	setAttr ".cbx" -type "double3" 1.9113258879284749 0.51770021097689423 -1.1775136534314514 ;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[67:68]" -type "float3" -0.17708214 -0.16842219 0.27047533  
		0 -0.14416565 -0.096429482 ;
	setAttr ".tk[74:75]" -type "float3" 0 0 0.051008105  0 0 0.51650876 ;
	setAttr ".tk[77]" -type "float3" 0 0.21771128 0.18665542 ;
	setAttr ".tk[126:133]" -type "float3" 0 -0.52951413 0  0 -0.20848213 0.40814504  
		-0.13811037 -0.4805772 0  0 -0.12445254 0.10993861  0 -0.52951413 0  0 -0.52951413 
		0  0 -0.52951413 0  0 -0.52951413 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5633198 0.46394256 1.348271 ;
	setAttr ".rs" 364553017;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.0528447191815267 0.4063828148129538 1.1471548732180237 ;
	setAttr ".cbx" -type "double3" 2.0737947981457601 0.52150227205782684 1.5493870433230041 ;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 -0.22547507 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.22547507 ;
	setAttr ".tk[66:80]" -type "float3" -0.066761047 0.048369914 -0.022682395  
		-0.089008041 -0.048369911 0.022682395  0.089008041 0.045321964 -0.022506962  0.063815638 
		-0.010146296 0.30600339  0 -0.051444188 -0.30933586  0 0 -0.26539552  0 0 -0.28878635  
		0 -0.15649456 0  -0.081659988 0.040395211 -0.053572632  -0.10052323 -0.040395215 
		0.053572632  0.10052323 0.0061150608 -0.038042735  0.043790083 -0.024629273 0.045536328  
		0 0.11534832 -0.51492143  0 0 -0.27375528  0 0.32367128 -0.17466627 ;
	setAttr ".tk[130:137]" -type "float3" 0 0.29630619 -0.48128012  0 -0.075762555 
		-0.31078845  0 0.40625191 0  0 0.071551755 0.028539041  0 -0.38865811 0  0 -0.38865811 
		0  0 -0.38865811 0  0 -0.38865811 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 4 "f[0]" "f[2]" "f[84]" "f[87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.6028492 1.3531413 0.012578553 ;
	setAttr ".rs" 1740148768;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.1050539452929606 0.91931422131090912 -1.034556681309259 ;
	setAttr ".cbx" -type "double3" -1.1006446320910563 1.7869684852841452 1.0597137864489197 ;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[138:141]" -type "float3" 0 -0.3523702 0  0 -0.3523702 0  0 -0.3523702 
		0  0 -0.3523702 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 4 "f[0]" "f[2]" "f[84]" "f[87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5642228 1.2262802 -0.013005311 ;
	setAttr ".rs" 1987703841;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.9006337363619914 0.91797329561739716 -1.186956698093927 ;
	setAttr ".cbx" -type "double3" -1.2278118569750895 1.5345871605160788 1.160946076716864 ;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[142:153]" -type "float3" -0.010865502 -0.042289853 0.15300506  
		-0.06122474 0.019492228 0.098035969  -0.0020013326 -0.17213286 0.085165732  0.2711457 
		-0.2011259 0.079316653  -0.10270983 0.0081511494 0.17870319  -0.18754554 -0.29168883 
		0.10123233  0.20442018 -0.19500366 -0.13048437  -0.0020013326 -0.17213286 -0.14862016  
		-0.06122474 -0.0013409224 -0.17427084  -0.010865502 -0.07139235 -0.15300506  -0.21654065 
		-0.25238132 -0.15240003  -0.10270983 -0.012476858 -0.17870319 ;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 1 "f[14:15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4797182 2.2521048 0.012578553 ;
	setAttr ".rs" 1374649496;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.1016342203717122 1.8917026676419333 -0.90606921354345094 ;
	setAttr ".cbx" -type "double3" 2.8578023474316487 2.6125066437008932 0.93122631868311156 ;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[154:165]" -type "float3" -0.00020817443 -0.44650468 0.13304208  
		-0.036729436 -0.43522289 0.13965471  0.0062202564 -0.99346322 0.16851154  0.053562585 
		-0.90809786 0.14908965  -0.066815048 -0.43952465 0.15474772  -0.054823246 -0.92066538 
		0.17476988  0.066815048 -0.9251318 -0.14908968  0.0062202564 -0.93309897 -0.17034063  
		-0.036729436 -0.40548447 -0.14338662  -0.00020817443 -0.41512448 -0.12542486  -0.04906448 
		-0.93573552 -0.17476988  -0.066815048 -0.40982616 -0.14713016 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 1 "f[14:15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.7667594 2.4288378 0.012578553 ;
	setAttr ".rs" 458514997;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.5935294191937337 2.2637092031720236 -0.40832605401090394 ;
	setAttr ".cbx" -type "double3" 2.9399895231823812 2.5939663209202841 0.43348315915056457 ;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[166:171]" -type "float3"  0.082187198 0.37003192 0.019495782
		 0.24742524 -0.018540297 0.016952133 0.36333945 0.37200654 0.49774316 0.49189517 0.06946741
		 0.27116165 0.36333945 0.37200654 -0.49774316 0.49189517 0.06946741 -0.27116165;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 1 "f[14:15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.0251701 2.579026 0.012578553 ;
	setAttr ".rs" 436274511;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.9062995474438558 2.4657148875477866 -0.2762460652928711 ;
	setAttr ".cbx" -type "double3" 3.1440405409436116 2.6923372902157858 0.30140317043253173 ;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[172:177]" -type "float3"  0.20405096 0.20148177 0.0051733619
		 0.24789818 0.098370999 0.0044983826 0.27865699 0.20200579 0.13207999 0.31277025 0.12172453
		 0.071954876 0.27865699 0.20200579 -0.13207999 0.31277025 0.12172453 -0.071954876;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	setAttr ".ics" -type "componentList" 1 "f[14:15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.3428459 2.6723847 -0.0006225016 ;
	setAttr ".rs" 1222178028;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.2514266531567464 2.5852410353901938 -0.13483353892377625 ;
	setAttr ".cbx" -type "double3" 3.4342650930981526 2.7595286525967673 0.1335885356921791 ;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[178:183]" -type "float3"  0.29022461 0.11926146 0.0026125065
		 0.31236714 0.067191347 0.0022716473 0.32790008 0.11952607 0.14141253 0.34512699 0.048038423
		 0.036336623 0.32790008 0.11952607 -0.17758256 0.34512699 0.034105454 -0.036336623;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	setAttr ".ics" -type "componentList" 1 "f[14:15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.4064717 2.7144716 -0.0006225016 ;
	setAttr ".rs" 256558389;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.3387803595166101 2.6499458708050803 -0.099999168906724556 ;
	setAttr ".cbx" -type "double3" 4.474163011799325 2.7789971985104636 0.098754165675127403 ;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[184:189]" -type "float3"  1.039897919 0.06447608 -0.0011681684
		 1.059037209 0.019468587 -0.0014627946 1.072463274 0.064704791 0.03483437 1.087353468
		 0.037694372 0.027981726 1.072463274 0.064704791 -0.032299113 1.087353468 0.041310661
		 -0.03483437;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5374862 0.53909892 1.1747072 ;
	setAttr ".rs" 1199967857;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7803456027407756 0.50358356611758026 1.0136984046358704 ;
	setAttr ".cbx" -type "double3" -1.2946268756289592 0.57461430208712372 1.3357159551043152 ;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[190:195]" -type "float3" 0.36494878 0.24285658 -0.001353538  
		0.3871249 0.19070716 -0.001694917  0.40268156 0.24312167 0.040362027  0.41993466 
		0.21182503 0.032421976  0.40268156 0.24312167 -0.037424464  0.41993466 0.21601526 
		-0.040362027 ;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7266691 0.13090719 1.1747072 ;
	setAttr ".rs" 1399021170;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.9206031997103801 0.10254658834963593 1.0461344178576111 ;
	setAttr ".cbx" -type "double3" -1.5327350337405314 0.15926779882937225 1.3032799418825745 ;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[196:201]" -type "float3"  -0.18396592 -0.41020733 0.032436065
		 -0.21365273 -0.40103701 0.022155847 -0.17874049 -0.4059253 -0.022706445 -0.14025763
		 -0.41380778 0.0074878517 -0.2381082 -0.40453306 -0.0013085828 -0.22836046 -0.4153465
		 -0.032436065;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7266691 0.042855576 1.1747072 ;
	setAttr ".rs" 1510105393;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.9509497125048747 0.010057107377345886 1.0260155852694153 ;
	setAttr ".cbx" -type "double3" -1.5023885209460368 0.075654045510585632 1.3233987744707703 ;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[202:207]" -type "float3"  -0.0032359101 -0.086801462
		 -0.020118862 0.015177682 -0.092489436 -0.013742421 -0.0064770603 -0.089457422 0.014083948
		 -0.030346498 -0.084568232 -0.0046444228 0.030346498 -0.090320997 0.00081166998 0.024300352
		 -0.083613768 0.020118862;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[84]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5255194 0.55567026 -1.1713253 ;
	setAttr ".rs" 1796130314;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7564118344683757 0.51248885767489227 -1.3617265764813782 ;
	setAttr ".cbx" -type "double3" -1.2946268756289592 0.59885169642000946 -0.98092412391713868 ;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[150]" -type "float3" 0 0 0.041296057 ;
	setAttr ".tk[160]" -type "float3" 0.077406824 0 0 ;
	setAttr ".tk[162]" -type "float3" 0 0 0.058129255 ;
	setAttr ".tk[208:213]" -type "float3" 0.0093803219 -0.053915665 0.058320913  
		-0.043997355 -0.037427112 0.039836783  0.018775852 -0.046216413 -0.040826805  0.087969005 
		-0.060389325 0.013463319  -0.087969005 -0.043713138 -0.0023528896  -0.070442304 -0.063156031 
		-0.058320906 ;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[84]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.6713609 0.179895 -1.1713253 ;
	setAttr ".rs" 1820573559;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8567729432482829 0.14521922247439178 -1.3242220226865173 ;
	setAttr ".cbx" -type "double3" -1.4859488446612468 0.21457077639132294 -1.0184287373166443 ;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[214:219]" -type "float3"  -0.10036115 -0.37585273 -0.0015317606
		 -0.13327412 -0.38218564 0.030771777 -0.16741021 -0.36726961 -0.021651048 -0.13838342
		 -0.37493065 -0.03750461 -0.17721412 -0.38428089 0.03750461 -0.19132201 -0.37072012
		 -0.0045102187;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[84]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.6713609 0.11665381 -1.1713253 ;
	setAttr ".rs" 1754918682;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8867583711047282 0.076370135712917175 -1.3489490095715881 ;
	setAttr ".cbx" -type "double3" -1.4559634168048015 0.15693749563723358 -0.99370175043157349 ;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[220:225]" -type "float3"  -0.029985426 -0.063189834
		 0.0010099058 -0.0082858047 -0.059014976 -0.020287944 0.014220257 -0.068849087 0.014274624
		 -0.0049172398 -0.063798115 0.024726937 0.0206839 -0.057633266 -0.024726937 0.029985426
		 -0.066573814 0.0029736182;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[14]" "e[22]" "e[47]" "e[50]" "e[52]" "e[54]" "e[56]" "e[58]" "e[130]" "e[133]" "e[138]" "e[141]" "e[146]" "e[149]" "e[154]" "e[157]" "e[249]" "e[252]" "e[257]" "e[260]" "e[265]" "e[268]" "e[273]" "e[276]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 1.7710106529477194 0.012578552569830315 1;
	setAttr ".wt" 0.4407389760017395;
	setAttr ".re" 22;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[70:71]" -type "float3" -0.19329025 -0.04894086 0  0.050885938 
		-0.034550328 0.092065103 ;
	setAttr ".tk[73:74]" -type "float3" 0 -0.056269765 0.047669522  -0.077865511 
		0.070213236 0.16629721 ;
	setAttr ".tk[76:81]" -type "float3" -0.12324324 0 0.1850439  0 0 0.14344931  
		0 -0.080421999 -0.059891649  0 0 -0.087636285  0 -0.10252643 -0.031368546  -0.062976286 
		0 0 ;
	setAttr ".tk[126:141]" -type "float3" -0.079268157 0 0.27192238  0 0 0.17034039  
		-0.2328549 0 0.17034039  0 0 0.17034039  0.0814225 -0.0014136888 0.039096016  0.064807191 
		-0.011189342 -0.039096016  -0.0814225 0.011189342 0.030620879  -0.29017365 -0.0088579711 
		-0.025887342  0 0 0.17034039  0 0 0.17034039  -0.19067806 0.068792447 0.17034039  
		0 0.068792447 0.0929299  0.060930215 -0.039559666 0.029256387  0.048496604 -0.094462469 
		-0.029256387  -0.060930215 0.0019823706 0.022914261  -0.26853311 -0.087853596 -0.019372055 ;
	setAttr ".tk[226:231]" -type "float3" 0.051503602 -0.069749087 -0.0017346455  
		0.014231867 -0.076920003 0.034847025  -0.024425013 -0.060028844 -0.024518382  0.0084459633 
		-0.068704367 -0.042471539  -0.035527106 -0.079293191 0.042471539  -0.051503602 -0.063936867 
		-0.0051075611 ;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	setAttr ".ics" -type "componentList" 4 "f[27]" "f[30]" "f[234]" "f[245]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 2.2969711193135023 0.012578552569830315 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0725657 0.68917614 0.060904507 ;
	setAttr ".rs" 1280232648;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.71464564014481402 0.61567667809035775 -1.4570855442624451 ;
	setAttr ".cbx" -type "double3" 1.4304856817822347 0.76267556038405893 1.5788945611376404 ;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr -s 178 ".tk";
	setAttr ".tk[1]" -type "float3" -0.39912933 0 0 ;
	setAttr ".tk[3]" -type "float3" -0.39912933 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.39912933 0 0 ;
	setAttr ".tk[7:8]" -type "float3" -0.39912933 0 0  -0.69828445 0 0 ;
	setAttr ".tk[11:12]" -type "float3" -0.64968985 0 0  -0.39912933 0 0 ;
	setAttr ".tk[16:17]" -type "float3" -0.39912933 0 0  -0.62035537 -0.30610111 
		0 ;
	setAttr ".tk[26:33]" -type "float3" -0.39912933 0 0  -0.66324592 0 0  -0.39912933 
		0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 
		0 0 ;
	setAttr ".tk[50]" -type "float3" 0 -0.17806788 0 ;
	setAttr ".tk[66:97]" -type "float3" -0.39912933 0 0  -0.39912933 0 0  -0.39912933 
		0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 
		0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 
		0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.004561577 0.036148243 
		-0.019804357  -0.004561577 -0.093283929 -0.019804357  -0.0016472581 0.019290252 -0.012111822  
		0.0011695419 0.0099633308 -0.011681194  0.002748312 -0.0096631553 -0.021305067  0.008685438 
		-0.026347559 -0.016850078  -0.0020717476 -0.0298062 -0.00026201768  0.008685438 -0.026347559 
		0.0182571  0.002748312 -0.0096631553 0.022712089  0.0011695419 0.0099633308 0.013088215  
		-0.0019805776 0.019290252 0.013422003  -0.0050957347 -0.093283929 0.021114537  -0.0050957347 
		0.036148243 0.021114537  -0.0063840034 0.043681998 0.01390581  -0.008685438 0.045174081 
		-0.00020018721  -0.0060380506 0.043811932 -0.012595629 ;
	setAttr ".tk[99:100]" -type "float3" -0.00483899 0.046447366 0.025757965  
		-0.0053963861 0.048117835 0.022907555 ;
	setAttr ".tk[104:105]" -type "float3" -0.0053379955 0.049054291 -0.022273127  
		-0.0046249558 0.045870885 -0.023519725 ;
	setAttr ".tk[110:116]" -type "float3" -0.0037084487 0.0032021864 -0.070427202  
		0.019745845 0.038801558 -0.090275601  0.052409895 0.0046690507 -0.060988713  0.062706091 
		-0.09707877 -0.0045462204  0.050695188 0.0046690507 0.060988713  0.017372033 0.038801532 
		0.091569789  -0.0054231863 0.0032021864 0.070427202 ;
	setAttr ".tk[119:120]" -type "float3" -0.046501394 -0.0053851521 0.032489721  
		-0.062706091 -0.0076908902 -0.0018122073 ;
	setAttr ".tk[122]" -type "float3" -0.045710348 -0.0053851521 -0.032489721 ;
	setAttr ".tk[126:141]" -type "float3" -0.32464013 -0.016273042 0.035266615  
		-0.32322297 -0.0059103156 -0.04050041  -0.44848359 0.008412811 0.030685931  -0.4750357 
		0.0085796863 -0.039403051  -0.32505596 -0.0053913174 0.035569437  -0.34017169 -0.014284618 
		-0.035564963  -0.47320271 0.0060741538 0.027859248  -0.46760434 -0.012163677 -0.023548497  
		-0.39912933 0.10767291 0  -0.39912933 0.10767291 0  -0.39912933 0.10767291 0  -0.39912933 
		0.10767291 0  -0.39912933 0.10767291 0  -0.39912933 0.10767291 0  -0.39912933 0.10767291 
		0  -0.39912933 0.10767291 0 ;
	setAttr ".tk[143:144]" -type "float3" 0.0073658959 -0.025927456 0.020370014  
		0.0027051792 -0.01337304 0.024547616 ;
	setAttr ".tk[149:150]" -type "float3" 0.0027051792 -0.01337304 -0.024508197  
		0.0073658959 -0.026376462 -0.019716011 ;
	setAttr ".tk[155:156]" -type "float3" 0.0065742861 -0.035307575 0.023379914  
		0.00283924 -0.034784608 0.028179454 ;
	setAttr ".tk[161:162]" -type "float3" 0.00283924 -0.033483613 -0.028179454  
		0.0065742861 -0.035115648 -0.022443548 ;
	setAttr ".tk[166:255]" -type "float3" -0.39912933 -0.082485802 0  -0.62454426 
		0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.42961195 
		-0.084648378 0  -0.58340871 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 
		0  -0.39912933 0 0  -0.48884934 -0.031732842 0  -0.49206191 0 0  -0.39912933 0 0  
		-0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.47841296 -0.031512022 0  -0.51089454 
		0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 
		0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 0 0  -0.39912933 
		0 0  0 -0.095028624 0  0.0019695449 -0.14102764 0.023857431  -0.0010130561 -0.14061002 
		0.027690077  0 -0.095028624 0  0 -0.095028624 0  0 -0.095028624 0  0 -0.095028624 
		0  0.0022966631 -0.143021 0.023561249  -0.0011526544 -0.14253806 0.027993619  0 -0.095028624 
		0  0 -0.095028624 0  0 -0.095028624 0  0 -0.095028624 0  0.0013484106 -0.14382765 
		0.024419826  -0.00074798899 -0.14353411 0.027113702  0 -0.095028624 0  0 -0.095028624 
		0  0 -0.095028624 0  0 -0.15058389 0  -3.3143227e-05 -0.19554998 -0.02751625  0.0029661844 
		-0.19686052 -0.022910181  0 -0.15058389 0  0 -0.15058389 0  0 -0.15058389 0  0 -0.15058389 
		0  -0.00021172166 -0.19682191 -0.027953506  0.003272665 -0.19834439 -0.022602528  
		0 -0.15058389 0  0 -0.15058389 0  0 -0.15058389 0  0 -0.15058389 0  9.501091e-05 
		-0.1984797 -0.027202467  0.0027462458 -0.19963822 -0.023130957  0 -0.15058389 0  
		0 -0.15058389 0  0 -0.15058389 0  -0.39949721 0.18403903 0.19971102  -0.40321794 
		0.0063502695 0.078542873  -0.40334988 -0.022464346 0.090312332  -0.41962075 -0.057064302 
		0.041967243  -0.40929899 0.023799721 0.091236301  -0.41047952 0.023456525 -0.080287561  
		-0.41688761 -0.046136033 -0.030976148  -0.41002044 -0.041022342 -0.091867208  -0.41012299 
		-0.090467304 -0.030977663  -0.41744006 -0.076664411 0.041287277  -0.39261067 -0.028103424 
		-0.004933788  -0.41744006 -0.099062443 -0.046351902  -0.4109107 -0.076515742 0.007392128  
		-0.41232768 -0.044570766 0.059634537  -0.41728947 -0.044295847 0.0034639202  -0.41106811 
		0.024843302 0.053727686  -0.41123781 0.026117798 -0.090221442  -0.40605015 -0.047978181 
		-0.034359585  -0.4048261 -0.024057394 -0.091236301  -0.39981389 0.0077766217 -0.085189395  
		-0.39949721 0.18403903 -0.20477566  -0.40570194 0.071749009 -0.039912585  -0.68464977 
		0.084216386 -0.004933788  -0.40570194 0.071749009 0.034847952 ;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[506:507]" "e[509]" "e[511]" "e[514:515]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 2.2969711193135023 0.012578552569830315 1;
	setAttr ".wt" 0.58710813522338867;
	setAttr ".dr" no;
	setAttr ".re" 509;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak31";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[126:141]" -type "float3" 0 0.10181277 0  0 0.10181277 0  0 0.10181277 
		0  0 0.10181277 0  0 0.10181277 0  0 0.10181277 0  0 0.10181277 0  0 0.10181277 0  
		0.099749468 0.076830558 0.085392706  0.13505585 0.095268369 -0.091429263  -0.10525742 
		0.092300266 0.035228547  -0.13505585 0.092597224 -0.057460055  0.14421825 0.1386628 
		0.069109529  0.11478865 0.14052245 -0.069386825  -0.14421827 0.1480471 0.054098047  
		-0.13440548 0.14269185 -0.045991145 ;
	setAttr ".tk[235:238]" -type "float3" 0 0.10181277 0  -0.020478211 0.1755311 
		-0.093064807  -0.012519633 0.17784473 0.093064807  0 0.10181277 0 ;
	setAttr ".tk[246:249]" -type "float3" 0 0.10181277 0  -0.011069271 0.12803257 
		-0.094653204  -0.0098948833 0.1192131 0.094653204  0 0.10181277 0 ;
	setAttr ".tk[256:267]" -type "float3" 0 -0.27372304 0  0 -0.27372304 0  0 
		-0.27372304 0  0 -0.27372304 0  0 -0.27372304 0  0 -0.27372304 0  0 -0.27372304 0  
		0 -0.27372304 0  0 -0.27372304 0  0 -0.27372304 0  0 -0.27372304 0  0 -0.27372304 
		0 ;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[519:520]" "e[522]" "e[524]" "e[527:528]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.016572908649910456 2.2969711193135023 0.012578552569830315 1;
	setAttr ".wt" 0.60788971185684204;
	setAttr ".dr" no;
	setAttr ".re" 520;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak32";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[268:273]" -type "float3"  -0.044233344 -0.0042575561
		 0.014804433 -0.0041582226 0.0070523005 0.039777003 0.041918665 -0.010758569 0.035885368
		 0.056755818 -0.0030102658 -0.038422201 -0.0046517337 0.010758569 -0.039777003 -0.056755818
		 -0.0041327719 -0.024146982;
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
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
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polySplitRing10.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyTweak1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak2.ip";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polyTweak3.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing4.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplitRing5.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polySplitRing6.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak12.ip";
connectAttr "polySplitRing7.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyTweak13.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace20.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace21.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyExtrudeFace22.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyExtrudeFace23.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyExtrudeFace24.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polySplitRing8.ip";
connectAttr "pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyExtrudeFace25.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace25.mp";
connectAttr "polySplitRing8.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polySplitRing9.ip";
connectAttr "pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polyExtrudeFace25.out" "polyTweak31.ip";
connectAttr "polyTweak32.out" "polySplitRing10.ip";
connectAttr "pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polySplitRing9.out" "polyTweak32.ip";
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of cat.ma
