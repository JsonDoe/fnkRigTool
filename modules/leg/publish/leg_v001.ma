//Maya ASCII 2025ff03 scene
//Name: leg_v022.ma
//Last modified: Mon, Feb 03, 2025 03:23:07 PM
//Codeset: 1252
requires maya "2025ff03";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.4.2.1";
requires -nodeType "fnk_vector_add" -nodeType "fnk_vector_sub" -nodeType "fnk_vector_crossProduct"
		 -nodeType "fnk_vector_multiply_by_float" -nodeType "fnk_vector_normalize" -nodeType "fnk_vector_length"
		 -nodeType "fnk_float_multiply" -nodeType "fnk_float_substract" -nodeType "fnk_float_rescale"
		 -nodeType "fnk_matrix_mul" -nodeType "fnk_matrix_from_vector" -nodeType "fnk_matrix_to_vector"
		 -nodeType "fnk_rig_shape" -nodeType "fnk_rig_curve" -nodeType "fnk_rig_2BonesIK"
		 -nodeType "fnk_space_switch" -nodeType "fnk_twist_roll" -nodeType "fnk_ik_foot" -nodeType "fnk_blend_two_chains"
		 "Frankenstein" "1.2.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202407121012-8ed02f4c99";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "00569D5E-4325-5795-FF9E-BA86366A3A41";
fileInfo "license" "education";
createNode transform -n "module";
	rename -uid "727AFE08-446B-2E49-99F6-268399AD7D87";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 7;
createNode transform -n "setup" -p "module";
	rename -uid "FE8A4590-4F20-8249-BB66-E8A6869F91FA";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "legIKFK_blend" -ln "legIKFK_blend" -nn "Blend IK <=> FK" -min 
		0 -max 1 -at "double";
	addAttr -ci true -sn "guideVisibility" -ln "guideVisibility" -nn "Guide Visibility" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorX" -ln "mirrorX" -nn "Mirror X" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "footLogicCon" -ln "footLogicCon" -nn "Foot Logic Controllers" 
		-min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rig_objectType" 5;
	setAttr -k on ".legIKFK_blend";
	setAttr -k on ".guideVisibility" yes;
	setAttr -k on ".mirrorX";
	setAttr -k on ".footLogicCon";
createNode transform -n "guid_GRP" -p "module";
	rename -uid "18BD8C4C-4FDD-DCF9-38BB-CCB8579C79A0";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 5;
createNode transform -n "anckle_GUID" -p "guid_GRP";
	rename -uid "EF02FA11-453B-A6FF-5998-678B91723C24";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 0.80605387244732274 7.6298410456179342 -0.59102725886495056 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999933 ;
	setAttr ".opm" -type "matrix" 0.99999999999999989 0 0 0 0 1 0 0 0 0 0.99999999999999989 0
		 -3.4989491095064815e-16 -6.7640419594493952 7.0256300777060638e-17 1;
createNode fnk_rig_shape -n "anckle_GUIDShape" -p "anckle_GUID";
	rename -uid "CE11AB48-49AD-643A-A2CC-3B8D74FF36B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "feetGround_BUF" -p "anckle_GUID";
	rename -uid "CC03308E-44D9-D0EC-F37B-43B78961219B";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 0 0 1.1102230246251565e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "heel_GUID" -p "feetGround_BUF";
	rename -uid "8A906525-4CDF-813F-85B9-FEB4212BA124";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 0 -0.77 -0.46423865863490543 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999944 ;
createNode fnk_rig_shape -n "heel_GUIDShape" -p "heel_GUID";
	rename -uid "0707DE45-4416-D468-13DB-D8B4768D5F24";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "endFoot_GUID" -p "feetGround_BUF";
	rename -uid "65DCA67A-488F-63F0-C7C5-35ADA4B7E4FC";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 0 -0.77 1.7484077075900675 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999944 ;
createNode fnk_rig_shape -n "endFoot_GUIDShape" -p "endFoot_GUID";
	rename -uid "CFB66C08-43FF-821D-CC96-5AA2B7EE5682";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "middleFoot_GUID" -p "feetGround_BUF";
	rename -uid "8196DB1F-4603-AAC1-80D9-2A8722A2E833";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 0 -0.77 0.98068991953863882 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999944 ;
createNode fnk_rig_shape -n "middleFoot_GUIDShape" -p "middleFoot_GUID";
	rename -uid "7DDC26DD-4438-546E-62C6-309B325C988E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "sideRollExteriorFoot_GUID" -p "feetGround_BUF";
	rename -uid "F789AFF7-48D3-671F-14B3-A1B685670E97";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 0.31576601617673994 -0.77 0.98068981261298216 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999944 ;
createNode fnk_rig_shape -n "sideRollExteriorFoot_GUIDShape" -p "sideRollExteriorFoot_GUID";
	rename -uid "A555A745-4FAF-1DFE-7BE3-1EBFD4FDEA12";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "sideRollInteriorFoot_GUID" -p "feetGround_BUF";
	rename -uid "5D1AF778-4249-98AD-A150-979700CD569D";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" -0.3158546794501309 -0.77 0.98122506434110257 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999911 ;
createNode fnk_rig_shape -n "sideRollInteriorFoot_GUIDShape" -p "sideRollInteriorFoot_GUID";
	rename -uid "A9841B28-4F36-ECE0-C55A-9D897572B90A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "toes_GUID" -p "feetGround_BUF";
	rename -uid "46EBF68D-4C7D-7449-079D-71858F1B1126";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 0 -0.55557635160514329 0.98068991953863882 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999944 ;
createNode fnk_rig_shape -n "toes_GUIDShape" -p "toes_GUID";
	rename -uid "8B275022-4138-68D4-7D7B-5E844E9688EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "femur_GUID" -p "guid_GRP";
	rename -uid "EE91323D-4D59-ACB8-6011-EFA96865088B";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 0.99999999999999989 0 0 0 0 1 0 0 0 0 0.99999999999999989 0
		 0.60446237884602072 7.6157980961007494 -0.20211541146832185 1;
createNode fnk_rig_shape -n "femur_GUIDShape" -p "femur_GUID";
	rename -uid "697D7F3B-44E0-BAFC-FAA7-3891765DC652";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "tibia_BUF" -p "guid_GRP";
	rename -uid "D5B5BFEA-4B3C-9FF8-78E0-A6A93C2977DF";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 1;
createNode transform -n "upVector_GUID" -p "tibia_BUF";
	rename -uid "C58F63B7-46DB-58BB-D9E1-FAA7D3EC7172";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 0 0 3 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode fnk_rig_shape -n "upVector_GUIDShape" -p "upVector_GUID";
	rename -uid "45884152-468A-51A7-9A2C-5A969EDEE600";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "tibia_GUID" -p "guid_GRP";
	rename -uid "F88363C6-482F-408B-12EC-E0A47A7BFFAF";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 0.69318385597374177 4.6450657352374716 -0.36075669501042001 ;
	setAttr ".r" -type "double3" 1.6480592986713392 0.021976717026241786 1.0507014360548559 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
createNode fnk_rig_shape -n "tibia_GUIDShape" -p "tibia_GUID";
	rename -uid "42297AC7-461A-BB17-E14F-68B92F9D61E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "controllers_GRP" -p "module";
	rename -uid "59928C2C-462E-75B5-6A1B-59BB13A770E3";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 5;
createNode transform -n "tibiaAnckleTorsionCON_BUF" -p "controllers_GRP";
	rename -uid "E866AFC7-45A6-3946-104E-53AEE299B2B2";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" -6.6613381477509392e-16 -1.3322676295501878e-15 2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999956 0.99999999999999989 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 1 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "tibiaAnckleTorsion_CON" -p "tibiaAnckleTorsionCON_BUF";
	rename -uid "0DA0C096-4B99-D372-D9A7-72910340C933";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 0.99999999999999811 0 0 0 0 0.99999999999999967 0 0
		 0 0 0.99999999999999845 0 0 0 0 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "tibiaAnckleTorsion_CONShape" -p "tibiaAnckleTorsion_CON";
	rename -uid "A2AED801-40D2-80B0-BA87-1596BA838183";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 33;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -0.44128485734951373 5.4041808806527837e-17 0 0
		 -2.4492935982947059e-17 -0.19999999999999996 0 0 0 0 0.44128485734951373 0 0 0 0 1;
createNode transform -n "midTibAnckle_ikControllerTangent0_000_CON" -p "tibiaAnckleTorsion_CON";
	rename -uid "B2E43E03-4928-DE92-A4A7-A08C2924A785";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr ".opm" -type "matrix" 1.0000000000000038 0 0 0 0 -1.0000000000000007 -1.2246467991473574e-16 0
		 0 -1.2246467991473539e-16 1.0000000000000033 0 0 -0.60000000000000009 0 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "midTibAnckle_ikControllerTangent0_000_CONShape" -p "midTibAnckle_ikControllerTangent0_000_CON";
	rename -uid "2CF92D4C-4F79-F596-85E1-43A16BAAAF17";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.5 0 0 0 0 0.5 0 0 0 0 0.5 0 0 0 0 1;
createNode transform -n "tibiaMidTib_ikControllerTangent1_001_CON" -p "tibiaAnckleTorsion_CON";
	rename -uid "0069A0F6-489C-9AAE-1D72-009E6B7CF30E";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr ".opm" -type "matrix" 1.0000000000000038 0 0 0 0 1.0000000000000007 0 0 0 0 1.0000000000000033 0
		 -2.9542243387096204e-16 0.60000000000000009 -2.2551405187698566e-17 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "tibiaMidTib_ikControllerTangent1_001_CONShape" -p "tibiaMidTib_ikControllerTangent1_001_CON";
	rename -uid "11E37CAD-4437-334B-2CC6-D2AA452CA70C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.5 0 0 0 0 0.5 0 0 0 0 0.5 0 0 0 0 1;
createNode transform -n "anckleTorsionTangent_BUF" -p "tibiaAnckleTorsionCON_BUF";
	rename -uid "0921EE34-4CAD-4276-F296-AB9AB47E93ED";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 1;
createNode transform -n "midTibAnckle_ikControllerTangent1_001_CON" -p "anckleTorsionTangent_BUF";
	rename -uid "DCB50BC4-4DBA-15D6-AAC1-679BB9E4ED60";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 2.3939183968479938e-16 0 -2.2204460492503131e-16 ;
	setAttr ".opm" -type "matrix" 0.99999999999999989 -1.6329101157168402e-17 8.2399365108898337e-18 0
		 -2.3866000321837166e-17 1 -6.9388939039072284e-18 0 -8.6194072712597603e-18 6.9388939039072284e-18 0.99999999999999989 0
		 1.1038397843346481e-16 0.59999999999999987 -7.0082828429463004e-17 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "midTibAnckle_ikControllerTangent1_001_CONShape" -p "midTibAnckle_ikControllerTangent1_001_CON";
	rename -uid "CD0A62CA-4689-EA7E-7943-4F922AAAA4B3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.5 0 0 0 0 0.5 0 0 0 0 0.5 0 0 0 0 1;
createNode transform -n "femurTibiaTorsionCON_BUF" -p "controllers_GRP";
	rename -uid "FFD08BE7-4782-7B86-C552-728B227A8445";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -1.7763568394002505e-15 3.3306690738754696e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999989 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 1 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "femurTibiaTorsion_CON" -p "femurTibiaTorsionCON_BUF";
	rename -uid "F20D7132-4FCD-F4EA-0686-B991AEDFB3CD";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 0.99999999999999822 -4.2431336222392702e-15 5.2735593669694936e-16 0
		 4.2327252813834093e-15 0.99999999999999944 -4.3021142204224816e-16 0 -5.5511151231257827e-16 4.7184478546569153e-16 0.99999999999999889 0
		 1.4388490399142029e-13 1.2967404927621828e-13 -1.787459069646502e-14 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "femurTibiaTorsion_CONShape" -p "femurTibiaTorsion_CON";
	rename -uid "3D491B70-4B21-C9F8-534C-8D9057373FE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 33;
	setAttr ".globalScale" 1.5;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -0.44128485734951373 5.4041808806527837e-17 0 0
		 -2.4492935982947059e-17 -0.19999999999999996 0 0 0 0 0.44128485734951373 0 0 0 0 1;
createNode transform -n "midFemTibia_ikControllerTangent0_000_CON" -p "femurTibiaTorsion_CON";
	rename -uid "E2003E61-4E70-2413-7BF1-0D91A6277D9B";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr ".opm" -type "matrix" 1.0000000000000031 0 0 0 0 -1.0000000000000013 -1.2246467991473562e-16 0
		 0 -1.2246467991473549e-16 1.0000000000000024 0 0 -0.5 0 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "midFemTibia_ikControllerTangent0_000_CONShape" -p "midFemTibia_ikControllerTangent0_000_CON";
	rename -uid "EEBD87DE-4929-6F24-F33E-7C958E2A2BA2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.5 0 0 0 0 0.5 0 0 0 0 0.5 0 0 0 0 1;
createNode transform -n "femurMidFem_ikControllerTangent1_001_CON" -p "femurTibiaTorsion_CON";
	rename -uid "6F62D6C4-43F4-912C-BFE7-A8BF8A807969";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr ".opm" -type "matrix" 1.0000000000000031 0 0 0 0 1.0000000000000013 0 0 0 0 1.0000000000000024 0
		 0 0.5 0 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "femurMidFem_ikControllerTangent1_001_CONShape" -p "femurMidFem_ikControllerTangent1_001_CON";
	rename -uid "652FDD00-4522-3737-0D35-DB814F385C7B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.5 0 0 0 0 0.5 0 0 0 0 0.5 0 0 0 0 1;
createNode transform -n "femurTorsionTangent_BUF" -p "femurTibiaTorsionCON_BUF";
	rename -uid "4051F9DB-4CDC-18BE-42E0-2FBEE2EFBB36";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 1;
createNode transform -n "femurMidFem_ikControllerTangent0_000_CON" -p "femurTorsionTangent_BUF";
	rename -uid "8D51FBA2-4A01-E24C-50F3-C88F1624F91F";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr ".opm" -type "matrix" 1 0 0 0 0 -1.0000000000000002 -1.2246467991473535e-16 0
		 0 -1.2246467991473535e-16 1.0000000000000002 0 0 -0.5 0 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "femurMidFem_ikControllerTangent0_000_CONShape" -p "femurMidFem_ikControllerTangent0_000_CON";
	rename -uid "7E456200-4A90-EB34-0BC9-519130AD2A89";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.5 0 0 0 0 0.5 0 0 0 0 0.5 0 0 0 0 1;
createNode transform -n "tibiaCompensate_BUF" -p "controllers_GRP";
	rename -uid "45945002-43FB-3F5D-AC9F-6EA54D47DEBF";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 3.6637359812630166e-15 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 1 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "tibiaCompensate_CON" -p "tibiaCompensate_BUF";
	rename -uid "1989063A-4494-BAF2-5458-71B4C191BDE0";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 0.99999999999999822 -4.2431336222392702e-15 5.2735593669694936e-16 0
		 4.2327252813834093e-15 0.99999999999999944 -4.3021142204224816e-16 0 -5.5511151231257827e-16 4.7184478546569153e-16 0.99999999999999889 0
		 1.4388490399142029e-13 1.2967404927621828e-13 -1.787459069646502e-14 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "tibiaCompensate_CONShape" -p "tibiaCompensate_CON";
	rename -uid "D4D4FB10-4C24-00F7-F58C-E99460BC3782";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 33;
	setAttr ".globalScale" 1.6000000238418579;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -0.44128485734951373 5.4041808806527837e-17 0 0
		 -2.4492935982947059e-17 -0.19999999999999996 0 0 0 0 0.44128485734951373 0 0 0 0 1;
createNode transform -n "tibiaMidTib_ikControllerTangent0_000_CON" -p "tibiaCompensate_CON";
	rename -uid "BE490825-4E73-41B1-E5F1-B2BF515F3173";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr ".opm" -type "matrix" 1.0000000000000018 0 0 0 0 -1.0000000000000004 -8.116070457215878e-15 0
		 0 -8.1160704572158654e-15 1.000000000000002 0 -2.1027444684822273e-16 -0.29612124740267937 3.2672448645980731e-15 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "tibiaMidTib_ikControllerTangent0_000_CONShape" -p "tibiaMidTib_ikControllerTangent0_000_CON";
	rename -uid "A9149C67-4B8A-DE43-2D26-3A9092F2D375";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.5 0 0 0 0 0.5 0 0 0 0 0.5 0 0 0 0 1;
createNode transform -n "midFemTibia_ikControllerTangent1_001_CON" -p "tibiaCompensate_CON";
	rename -uid "840B5894-43E3-C928-7456-5BBD2902AAFD";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr ".opm" -type "matrix" 1.0000000000000018 0 0 0 0 1.0000000000000004 0 0 0 0 1.000000000000002 0
		 0 0.099999999999999811 0 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "midFemTibia_ikControllerTangent1_001_CONShape" -p "midFemTibia_ikControllerTangent1_001_CON";
	rename -uid "7C49049E-4447-325F-E050-B29664156528";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.5 0 0 0 0 0.5 0 0 0 0 0.5 0 0 0 0 1;
createNode transform -n "setupController_mirror_BUF" -p "controllers_GRP";
	rename -uid "3EA1E1CA-4DC1-01BC-3E3D-5C848E28164C";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "setup_CON" -p "setupController_mirror_BUF";
	rename -uid "6F2BF48E-4C23-0D8D-C24C-478F8D9BA8A3";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "blendIKFK" -ln "blendIKFK" -nn "Blend IK <=> FK" -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "footLogicCon" -ln "footLogicCon" -nn "Foot Logic Controllers" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "stretch" -ln "stretch" -nn "Stretch" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "torsionTangentVIZ" -ln "torsionTangentVIZ" -nn "Torsion Tangent Visualize" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "softIk" -ln "softIk" -nn "Soft Ik" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rig_objectType" 3;
	setAttr -k on ".blendIKFK";
	setAttr -k on ".footLogicCon" yes;
	setAttr -k on ".stretch";
	setAttr -k on ".torsionTangentVIZ";
	setAttr -k on ".softIk";
createNode fnk_rig_shape -n "setup_CONShape" -p "setup_CON";
	rename -uid "C81DDF64-416D-50F6-4BED-00BE8B9E4B84";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 1 ;
	setAttr ".shapeType" 13;
	setAttr ".globalScale" 0.20000000298023224;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 1 0 0 0 0 -4.4408920985006262e-16 1 0 0 -1 -4.4408920985006262e-16 0
		 0 0 0 1;
createNode transform -n "IK_GRP" -p "controllers_GRP";
	rename -uid "D59C003E-445B-7477-DD9B-00AB05B9BDA6";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".rig_objectType" 5;
createNode transform -n "legControllerTargetIN_BUF" -p "IK_GRP";
	rename -uid "70F01B8D-4271-9973-66FD-2B929166AE58";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "ankle_IK_CON" -p "legControllerTargetIN_BUF";
	rename -uid "128F2E2F-434D-D8DF-7930-C69A2278075C";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 0.99999999999999933 0 0 0 0 1 0 0 0 0 0.999999999999999 0
		 0 0 0 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "ankle_IK_CONShape" -p "ankle_IK_CON";
	rename -uid "ED2D09E9-4769-9F2B-6974-A0BB3A7F5611";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 22;
	setAttr ".wireWidth" 2;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.55634384747726529 0 0 0 0 0.29221208682773903 0 0
		 0 0 1.3796153075003976 0 -0.022687847953150913 -0.75448508746935072 0.64019213736746039 1;
createNode transform -n "toes_IK_CON" -p "ankle_IK_CON";
	rename -uid "4495A5C5-4FA0-902D-9F79-898D1FE44135";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 1 0 6.9388939039072407e-18 0 0 1.0000000000000002 0 0
		 0 0 0.99999999999999933 0 -2.4803382351473724e-08 -0.5555755211046608 0.98068997011296233 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_instance" 3;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "toes_IK_CONShape" -p "toes_IK_CON";
	rename -uid "F3122345-4D69-D10F-2BF8-58AC6C0E0EAC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0.5 ;
	setAttr ".shapeType" 32;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.45576698273754079 0 0 0 0 -0.45403265176840407 0.039722709900348936 0
		 0 -0.067901855678037956 -0.77612176185452597 0 0.023306856832270038 0.015738579241804822 0.27745265976026839 1;
createNode transform -n "anckleTorsion_IK_CON" -p "ankle_IK_CON";
	rename -uid "D9069567-46DA-B31B-91A7-9BAEF5F99FDD";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".opm" -type "matrix" 1 0 0 0 0 0.97727374196652261 0.21198120969263154 0
		 0 -0.21198120969263143 0.97727374196652239 0 -0.055003369645495168 -0.14167746623053962 1.0878995722240936 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "anckleTorsion_IK_CONShape" -p "anckleTorsion_IK_CON";
	rename -uid "ED94DA38-4948-6DB4-CCFA-F3A2D94FC2C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 19;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 1.332267629550188e-16 0 -0.30000000000000004 0
		 0 0.30000000000000004 0 0 0.30000000000000004 0 1.332267629550188e-16 0 0 0 0 1;
createNode transform -n "footRoll_IK_CON" -p "ankle_IK_CON";
	rename -uid "A4DCB6DF-42D1-1894-EBF0-709359AFD325";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".opm" -type "matrix" 0.99999999999999978 0 0 0 0 0.99999999999999956 0 0
		 0 0 1.0000000000000002 0 0.55466493123813654 -0.56230761990164613 0.99954090502931159 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "footRoll_IK_CONShape" -p "footRoll_IK_CON";
	rename -uid "9CE65458-4919-D781-9EB0-F6B41AC853FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 17;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -1.3155787505400024e-16 0.29624199853542488 0 0
		 -0.29624199853542488 -1.3155787505400024e-16 0 0 0 0 0.29624199853542488 0 0 0 0 1;
createNode transform -n "sideRoll_IK_CON" -p "ankle_IK_CON";
	rename -uid "35D5CCCC-45B9-59C4-F918-E1B89C0DFB74";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".opm" -type "matrix" 0.99999999999999978 0 0 0 0 0.99999999999999956 0 0
		 0 0 1.0000000000000002 0 -0.033385782419291021 -0.64036050892448704 2.1521422124777749 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "sideRoll_IK_CONShape" -p "sideRoll_IK_CON";
	rename -uid "08A7CB06-47FD-18A8-8304-09B308262D5C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 16;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.39732767374478817 0 0 0 0 -1.7644893268488645e-16 -0.39732767374478817 0
		 0 0.39732767374478817 -1.7644893268488645e-16 0 0 0 0 1;
createNode transform -n "rootTarget_IN_IK_BUF" -p "IK_GRP";
	rename -uid "BC33ADF2-43B0-DB79-F315-36A65E0DD532";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "femur_IK_CON" -p "rootTarget_IN_IK_BUF";
	rename -uid "1A0D6777-4481-C0CE-FFE2-66A5DA1C0DE7";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 0.99932734124039824 0.036671619471820058 -0.00023953019040583667 0
		 -0.036597187154121184 0.99767457533360926 0.057498588028842404 0 0.0023475395213533741 -0.057451144968732624 0.99834555891233312 0
		 -1.1102230246251563e-15 -8.8817841970012523e-16 0 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "femur_IK_CONShape" -p "femur_IK_CON";
	rename -uid "D88E27C6-40C3-38B6-ED07-DEB627271ACF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 22;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 8.4880956520532635e-16 0 -0.63711640692787008 0
		 0.63711640692787008 0 8.4880956520532635e-16 0 0 -0.31999594845511536 0 0 0.50738541252499814 -1.1125879406138905e-15 8.1328058969473466e-16 1;
createNode transform -n "upVectorTarget_IK_BUF" -p "IK_GRP";
	rename -uid "E0D0FB01-48BE-74CE-A704-6E8F101BEC20";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "upVector_IK_CON" -p "upVectorTarget_IK_BUF";
	rename -uid "4FD9B73E-4EF3-C4E9-1F97-5AA902E81E31";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999989 ;
	setAttr ".opm" -type "matrix" 0.99999999999999978 0 0 0 0 1.0000000000000004 0 0
		 0 0 0.999999999999999 0 0 0 0 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "upVector_IK_CONShape" -p "upVector_IK_CON";
	rename -uid "B141B39F-4FF7-D6A3-45B2-E7A74A85AF52";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 39;
	setAttr ".globalScale" 0.40000000596046448;
	setAttr ".wireWidth" 5;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "FK_GRP" -p "controllers_GRP";
	rename -uid "9CFD1C68-47CC-181B-2831-64AB8E8B4F3C";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".rig_objectType" 5;
createNode transform -n "legControllerTargetIN_FK_BUF" -p "FK_GRP";
	rename -uid "B643650D-4BF2-03DE-5596-80B6BAFD5F3B";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 1;
createNode transform -n "femur_FK_CON" -p "legControllerTargetIN_FK_BUF";
	rename -uid "16004C7D-4262-C387-96D7-44B519D4BF79";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 0.9995544166216207 0.029849043397284947 5.3108187802974351e-05 0
		 -0.029809375266234006 0.99813113874892201 0.053344456188239742 0 0.0015392720517986534 -0.053322269907133388 0.99857616944001881 0
		 -1.1101423015729065e-15 8.8458180546372946e-16 2.8060854163342457e-17 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "femur_FK_CONShape" -p "femur_FK_CON";
	rename -uid "B46628EE-4C39-0332-9966-22BB084918C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 22;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 8.4880956520532635e-16 0 -0.63711640692787008 0
		 0.63711640692787008 0 8.4880956520532635e-16 0 0 -0.31999594845511536 0 0 0.50738541252499814 -1.1125879406138905e-15 8.1328058969473466e-16 1;
createNode transform -n "tibia_FK_CON" -p "femur_FK_CON";
	rename -uid "14FF76D5-40BD-FA27-77A0-8F9273DC9D57";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 1 2.9766431832410616e-17 -2.059984127722458e-18 0 -2.8118529233527375e-17 0.99997244027878962 0.0074241957734041764 0
		 4.2283884726934673e-18 -0.0074241957734041859 0.99997244027878973 0 -3.1571967262777909e-16 -2.9762878417968754 3.5388423205082701e-17 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_instance" 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "tibia_FK_CONShape" -p "tibia_FK_CON";
	rename -uid "75E75721-4BC3-33F9-38EE-1F980B874C96";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 33;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 1.1074149033188969e-15 0 -0.62341916824143984 0
		 0 0.82936194056119605 0 0 0.62341916824143984 0 1.1074149033188969e-15 0 0 0 0 1;
createNode transform -n "ankle_FK_CON" -p "tibia_FK_CON";
	rename -uid "7BD1DCF4-4FBE-462F-92CF-CAB5ECB7E3D5";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 0.99955441662161926 -0.029797125871084688 0.00176054026801872 0
		 0.025997187967777349 0.89803178193225797 0.43916177526890837 0 -0.014666779809509031 -0.43892032298515865 0.89840627537914375 0
		 -3.1266843464270379e-16 -3.787957191467286 7.2954241556307893e-17 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_instance" 2;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "ankle_FK_CONShape" -p "ankle_FK_CON";
	rename -uid "A00098D6-4DF2-E46A-98C3-668968E50EC0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 22;
	setAttr ".wireWidth" 2;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.34248221949670232 0 0 0 0 0.72427000804527442 -0.21222605866795283 0
		 0 0.12853682104344472 0.43866132649104106 0 1.2167281392108897e-16 -0.05616682464437138 0.029511081322433484 1;
createNode transform -n "toes_FK_CON" -p "ankle_FK_CON";
	rename -uid "A253A222-4DC4-F556-73B7-97B1B350A558";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 0.99999999999999978 4.0425124542266012e-09 1.6054649553565632e-08 0
		 -5.9500907017352299e-11 0.97060238616639427 -0.24068861204490177 0 -1.6555667893686972e-08 0.24068861204490191 0.9706023861663946 0
		 -1.4342175756257949e-17 2.7643185110025753e-16 1.1271281242370594 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_instance" 3;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "toes_FK_CONShape" -p "toes_FK_CON";
	rename -uid "35B9ADFF-4D42-BC8F-CD40-43AE1320F865";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 22;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.47733212125020463 0 0 0 0 0.43648548159361922 0.19320035801003665 0
		 0 -0.077443083055872053 0.17496231245068877 0 2.3128690140502035e-09 0.43387380343985427 0.19204432144525405 1;
createNode transform -n "bones_GRP" -p "module";
	rename -uid "F2F3F831-4111-9FFB-EE1B-B99B0C66B9BF";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 5;
createNode transform -n "tibiaAnckleTorsion_deformer_GRP" -p "bones_GRP";
	rename -uid "5A35CEC0-47DB-6BC7-B5C9-2890C759DD3A";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 5;
createNode transform -n "tibiaAnckleTorsion_000_GRP" -p "tibiaAnckleTorsion_deformer_GRP";
	rename -uid "5A1B91D3-4079-BA0B-6B30-598520619A6E";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".rig_objectType" 5;
createNode transform -n "tibiaAnckleTorsion_001_GRP" -p "tibiaAnckleTorsion_deformer_GRP";
	rename -uid "348FB313-4FFD-5ECE-D070-699423EDE6EB";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.2204460492503131e-16 4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".rig_objectType" 5;
createNode joint -n "tibia_ankle_twist_002_JNT" -p "tibiaAnckleTorsion_deformer_GRP";
	rename -uid "2129D9A4-4B46-2CE7-FC08-87AA8AD4E2E7";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".radi" 0.15;
	setAttr ".rig_objectType" 8;
createNode transform -n "midTibAnckle_deformer_GRP" -p "tibiaAnckleTorsion_deformer_GRP";
	rename -uid "B815DC1F-4FCA-B909-F99B-C5A1881B5AE2";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 5;
createNode joint -n "tibia_ankle_twist_003_JNT" -p "midTibAnckle_deformer_GRP";
	rename -uid "A00CEFF0-40F3-5EA0-6083-79AE1FF7BBC5";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "tibia_ankle_twist_004_JNT" -p "midTibAnckle_deformer_GRP";
	rename -uid "ACD3C21A-4A3B-4212-BD52-F0BA51F940F1";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode transform -n "tibiaMidTib_deformer_GRP" -p "tibiaAnckleTorsion_deformer_GRP";
	rename -uid "E22A06C0-4CB7-1292-8A70-0E8F54BB55D4";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 5;
createNode joint -n "tibia_ankle_twist_000_JNT" -p "tibiaMidTib_deformer_GRP";
	rename -uid "D50E2BAA-400C-95CB-5658-B0834B447DED";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "tibia_ankle_twist_001_JNT" -p "tibiaMidTib_deformer_GRP";
	rename -uid "79B89154-4974-07E2-1102-79BC0EF96749";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode transform -n "femurTibiaTorsion_deformer_GRP" -p "bones_GRP";
	rename -uid "BAF51F9B-4380-D8D3-750D-0786850548A7";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 5;
createNode transform -n "femurTibiaTorsion_000_GRP" -p "femurTibiaTorsion_deformer_GRP";
	rename -uid "130965AE-443A-9E89-49C7-FD9A417AACCA";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999978 ;
	setAttr ".rig_objectType" 5;
createNode transform -n "femurTibiaTorsion_001_GRP" -p "femurTibiaTorsion_deformer_GRP";
	rename -uid "B3C2378D-4994-34B9-A197-229B8F3F7029";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.1102230246251565e-16 -1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr ".rig_objectType" 5;
createNode joint -n "femur_tibia_twist_002_JNT" -p "femurTibiaTorsion_deformer_GRP";
	rename -uid "8F96FDAB-499A-15B9-8765-0E8C04C7B4A5";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".radi" 0.15;
	setAttr ".rig_objectType" 8;
createNode transform -n "midFemTibia_deformer_GRP" -p "femurTibiaTorsion_deformer_GRP";
	rename -uid "8B54F9CB-4927-4037-42C7-D38D8BAF5EB7";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 5;
createNode joint -n "femur_tibia_twist_003_JNT" -p "midFemTibia_deformer_GRP";
	rename -uid "4939A642-4017-2C2C-444C-DFB64226ABBC";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "femur_tibia_twist_004_JNT" -p "midFemTibia_deformer_GRP";
	rename -uid "C55AF4E6-45E6-C23F-1763-2685691EA507";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode transform -n "femurMidFem_deformer_GRP" -p "femurTibiaTorsion_deformer_GRP";
	rename -uid "B9EB0FD9-4D24-1DE2-4B81-138AC161ED22";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 5;
createNode joint -n "femur_tibia_twist_000_JNT" -p "femurMidFem_deformer_GRP";
	rename -uid "DC6F803A-40F7-E69D-68EC-9DA14D31FF1C";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "femur_tibia_twist_001_JNT" -p "femurMidFem_deformer_GRP";
	rename -uid "D8BFFE3A-48B6-9F71-6489-E3AC3F9D7F62";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "femur_JNT" -p "bones_GRP";
	rename -uid "DA4DF2C4-4DCA-FA06-196A-ABAD0321131F";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".radi" 0.15;
	setAttr ".rig_objectType" 8;
createNode joint -n "tibia_JNT" -p "bones_GRP";
	rename -uid "953C9218-49AB-EFA2-095F-3DB2C2BD7BE0";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".t" -type "double3" -1.1102230246251565e-16 -8.8817841970012523e-16 0 ;
	setAttr ".radi" 0.15;
	setAttr ".rig_objectType" 8;
createNode joint -n "anckle_JNT" -p "bones_GRP";
	rename -uid "65C23F90-45D1-36E5-260D-32AF87990E97";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".t" -type "double3" -1.1102230246251565e-16 0 1.1102230246251565e-16 ;
	setAttr ".radi" 0.15;
	setAttr ".rig_objectType" 8;
createNode joint -n "midToe_JNT" -p "bones_GRP";
	rename -uid "BD8D246F-447C-2653-71C9-78A17F1F7353";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".radi" 0.15;
	setAttr ".rig_objectType" 8;
createNode transform -n "algo_GRP" -p "module";
	rename -uid "0F8F4967-4497-F0E1-E8E7-8CB6ECA83892";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 5;
createNode transform -n "mirrorCompensate_BUF" -p "algo_GRP";
	rename -uid "17154970-432F-EAAF-466B-7F908AE0A0A2";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "root_IN_BUF" -p "mirrorCompensate_BUF";
	rename -uid "64DC5886-4718-A1CD-CC28-C2B13F7268AD";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr ".opm" -type "matrix" 1 0 -1.2246467991473532e-16 0 0 1 0 0 1.2246467991473532e-16 0 1 0
		 0.60446237884602072 7.6157980961007494 -0.20211541146832179 1;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "legControllers_IK_BUF" -p "mirrorCompensate_BUF";
	rename -uid "9674231A-4450-6874-38BC-A891FE88D747";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 1 0 -1.2246467991473532e-16 0 0 1 0 0 1.2246467991473532e-16 0 1 0
		 0.80605389725070453 0.86579825566805635 -0.59102730943927362 1;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "upVector_IK_BUF" -p "mirrorCompensate_BUF";
	rename -uid "835690DC-45C4-1EF2-1D1F-C593A16E0C42";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 1 0 -1.2246467991473532e-16 0 0 1 0 0 1.2246467991473532e-16 0 1 0
		 0.6981734346136137 4.472650951290877 2.6342805746043747 1;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "toes_OUT_BUF" -p "algo_GRP";
	rename -uid "3E8F444D-4065-4512-5013-D78B43A10A11";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_instance" -ln "rig_instance" -dv -1 -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -s -n "persp";
	rename -uid "9CE88024-4033-A405-A79F-3B8BAAFCF2FD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.489852984966625 9.6969838916100493 24.714238274194127 ;
	setAttr ".r" -type "double3" -6.9383527295957803 26.599999999999916 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D45891C7-421D-4EA6-68AE-8CB65EF35BA3";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 28.9629524528819;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.80667290612982356 0.32596048330471789 0.66711526985963165 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A9E3E597-442A-60AE-9858-90ACC3F66C67";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A11036D2-4270-E4DF-4B57-00B450436E5B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "F374D206-499E-796E-CDF9-8A900BC4FD93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.79587357705496842 0.2931373236301103 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D9736DF0-4FFF-713A-142F-2E919EA06671";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 1.1947889804601488;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "879F5469-42D8-FCE6-670B-FB8457A1D08D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "11EB015A-439A-67E0-922B-91AA893780B7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 4.0768269573636804;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode fnk_matrix_from_vector -n "UpVectorPlan_Matrix";
	rename -uid "612DAC4B-44D2-B474-8047-42BD41512F19";
createNode fnk_matrix_to_vector -n "anckleMatrixToVector";
	rename -uid "98DB47D0-461D-D594-0FDF-89846574A63E";
createNode fnk_matrix_to_vector -n "femurMatrixToVector";
	rename -uid "28B30F9F-4DE2-0054-9DCB-8D946394B574";
createNode fnk_matrix_to_vector -n "tibiaMatrixToVector";
	rename -uid "029D59A6-4782-F9D7-127C-84B7360CCEEA";
createNode fnk_twist_roll -n "tibiaAnckleTorsion";
	rename -uid "ABCD04F0-469B-03D2-7351-E696CE2BE484";
	setAttr ".alignAxis" 4;
	setAttr -s 2 ".positionProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".rotationProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".scaleProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 3 ".transforms";
createNode fnk_blend_two_chains -n "leg_IKFK_blend";
	rename -uid "6A0CD69C-4345-5436-8C0A-0FBB65A9060E";
	setAttr -s 4 ".chains";
	setAttr -s 4 ".transform";
createNode fnk_rig_2BonesIK -n "leg_logic";
	rename -uid "38B92B39-447B-B58A-2CC4-909388E82088";
	setAttr ".alignAxis" 4;
	setAttr ".upVectorAxis" 3;
	setAttr ".softIKStart" 0.99000000953674316;
createNode fnk_ik_foot -n "foot_logic";
	rename -uid "1CF06472-446D-9EA3-85FF-E8BE40A6392A";
createNode unitConversion -n "unitConversion6";
	rename -uid "22BB0647-440A-B0FA-7365-63BEC7BC01C7";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion4";
	rename -uid "25EBD813-40AC-6CE4-DF57-D4BB1C5886B1";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion8";
	rename -uid "01471A91-48CA-AAAD-558B-9182BB355074";
	setAttr ".cf" 57.295779513082323;
createNode fnk_vector_length -n "fnk_vector_length1";
	rename -uid "04A08B71-42B7-04BB-CC43-F6BBB8BB03B7";
createNode fnk_vector_sub -n "fnk_vector_sub1";
	rename -uid "BF4F4F65-4EE9-750D-5A32-59B868AF03DA";
createNode fnk_matrix_to_vector -n "fnk_matrix_to_vector1";
	rename -uid "1C0D8608-4A4E-926F-A90F-2DA0DB14F4FE";
createNode fnk_matrix_to_vector -n "fnk_matrix_to_vector2";
	rename -uid "C0ABE0CC-4ED1-4B5C-BF8F-169A9EE7D1E9";
createNode fnk_vector_length -n "fnk_vector_length2";
	rename -uid "7ED9CC44-4708-2798-B097-2299303F2E07";
createNode fnk_vector_sub -n "fnk_vector_sub2";
	rename -uid "898FEED5-45FC-06F7-7313-EDA0317D6410";
createNode fnk_matrix_to_vector -n "fnk_matrix_to_vector3";
	rename -uid "A4A30847-4398-F2DB-748E-32BBABBD0476";
createNode fnk_matrix_from_vector -n "recompose_Anckle_Transform";
	rename -uid "4199E6F0-499F-A2EA-77E1-FDA4129A3137";
createNode fnk_matrix_to_vector -n "anckle_to_vector";
	rename -uid "BB2EF5C3-4CF1-3D9C-73C7-0BA6315FCA3D";
createNode fnk_vector_multiply_by_float -n "anckle_multiply_length_Y";
	rename -uid "2383DC81-4355-B241-6CE9-0F9D8757EE23";
createNode fnk_vector_length -n "anckle_Y_length";
	rename -uid "E7137D86-4AE2-18D6-34CE-1BB230CF4604";
createNode fnk_vector_crossProduct -n "anckle_Y";
	rename -uid "685B8642-4E0D-35A1-8974-D88BCAC24906";
	setAttr ".normalizeResult" yes;
createNode fnk_vector_normalize -n "norm_ankcle_Z";
	rename -uid "265C1BB2-4DDA-8361-0D2E-18A67618D16A";
createNode fnk_vector_sub -n "anckle_Z";
	rename -uid "0D33F76A-4367-FECC-DE18-3099B2C3F4A5";
createNode fnk_matrix_to_vector -n "toes_to_vector";
	rename -uid "0144BD61-4FC2-15DA-3F80-64B7A9385546";
createNode fnk_vector_normalize -n "norm_ankcle_X";
	rename -uid "BE4246B7-4453-F3AB-9913-87A2444E5183";
createNode fnk_vector_crossProduct -n "anckle_X";
	rename -uid "5CE4B235-481C-CAE3-DBD7-7EB18E93308F";
	setAttr ".normalizeResult" yes;
createNode fnk_vector_multiply_by_float -n "anckle_multiply_length_X";
	rename -uid "14EA39A2-47D9-5BB8-9547-2FADB74FEF84";
createNode fnk_vector_length -n "anckle_X_length";
	rename -uid "F695F366-492F-36D9-58F3-BB8DF85E5A59";
createNode fnk_vector_multiply_by_float -n "mirror_anckle_X";
	rename -uid "95FFA5C1-4FC6-5065-7C24-0E94CAF52C8C";
createNode fnk_float_rescale -n "mirror_bool_rescale";
	rename -uid "20F683C1-4EAF-2CB5-1FB3-49A3C20E118A";
	setAttr ".newMin" 1;
	setAttr ".newMax" -1;
createNode fnk_vector_multiply_by_float -n "anckle_multiply_length_Z";
	rename -uid "10772E08-44DE-FB26-D282-34B42F722909";
createNode fnk_vector_length -n "anckle_Z_length";
	rename -uid "B6DECAD9-47C5-966E-76B4-1A8B91E78B8F";
createNode fnk_matrix_mul -n "mult_by_toes_Con";
	rename -uid "21BAFED8-4F6C-DA26-8F34-31BBE690A3BA";
createNode fnk_matrix_from_vector -n "recompose_Toes_Transform";
	rename -uid "4E842806-48EF-D03D-41AC-0A8FCA98F909";
createNode fnk_vector_multiply_by_float -n "toes_multiply_length_Y";
	rename -uid "1D6356AD-4D8E-CAA8-B8A0-A7B92DA31410";
createNode fnk_vector_length -n "toes_Y_length";
	rename -uid "BE25F6E6-4223-7C4B-5EA0-DB816354F9E9";
createNode fnk_vector_crossProduct -n "toes_Y";
	rename -uid "016862C2-4EB3-2768-D550-DCBA0364567D";
	setAttr ".normalizeResult" yes;
createNode fnk_vector_normalize -n "norm_toes_Z";
	rename -uid "102F8C33-491B-C051-93EB-4282608CD417";
createNode fnk_vector_sub -n "toes_Z";
	rename -uid "C0853E59-4031-7441-C0EF-95BA6027F378";
	setAttr ".normalizeResult" yes;
createNode fnk_matrix_to_vector -n "endToe_to_vector";
	rename -uid "31E9C325-4504-8260-4EDA-4F918415DA40";
createNode fnk_vector_add -n "fnk_vector_add1";
	rename -uid "D174F790-457E-D1BF-B982-41A6E93FEC09";
createNode fnk_vector_multiply_by_float -n "fnk_vector_multiply_by_float1";
	rename -uid "45662D7E-4D79-F6E9-0E26-C5893610F441";
createNode fnk_float_multiply -n "fnk_float_multiply1";
	rename -uid "726A6EDE-4E26-372B-E871-52B3340D2326";
createNode fnk_vector_length -n "toes_Z_length";
	rename -uid "DEB00BA7-4ECE-73DB-E2EE-3E8FC1228494";
createNode fnk_vector_length -n "anckleToes_length";
	rename -uid "42C03156-4714-B651-AE05-F9ACBD520372";
createNode fnk_vector_sub -n "gudAnckle_to_gudToes";
	rename -uid "BE26334B-48DC-8D29-41C6-AC8B1B0F6D0C";
createNode fnk_matrix_to_vector -n "gudToes_to_vector";
	rename -uid "7E3C48D2-46DA-1FB3-EDDD-BB8569A157CE";
createNode fnk_matrix_to_vector -n "gudAnckle_to_vector";
	rename -uid "898F4341-4D46-8173-006A-1287155E7009";
createNode fnk_vector_normalize -n "norm_toes_X";
	rename -uid "014F86D4-476A-AAC7-C9A1-848802CE9CDB";
createNode fnk_vector_crossProduct -n "toes_X";
	rename -uid "F320A53D-42FC-FB89-6C31-A69209ADAC2B";
	setAttr ".normalizeResult" yes;
createNode fnk_vector_sub -n "toes_preY";
	rename -uid "D5BB2CE6-4F60-E496-7324-0CAB5AFD1340";
	setAttr ".normalizeResult" yes;
createNode fnk_vector_multiply_by_float -n "toes_multiply_length_X";
	rename -uid "A5F36E73-40CA-D60A-2B80-58A8CA094E36";
createNode fnk_vector_length -n "toes_X_length";
	rename -uid "0A9554C6-404B-2C21-BB2A-3E8DAC10C4D3";
createNode fnk_vector_multiply_by_float -n "mirror_toes_X";
	rename -uid "F4BBE3D8-46AD-F4F7-977A-AA9A180EF9C2";
createNode fnk_vector_multiply_by_float -n "toes_multiply_length_Z";
	rename -uid "E7C375E9-44F3-A975-8AE4-2EB3B18F3672";
createNode fnk_space_switch -n "fnk_space_switch_anckleTorsionTangent_PAR";
	rename -uid "AAC48A0B-4768-87AE-56D2-368CFC32CEFF";
	setAttr ".spaces[0].type" 6;
	setAttr ".spaces[0].offset" -type "matrix" 1.0000000000000007 3.0243311381714794e-16 -2.285227129056322e-16 0
		 -2.6147737675150801e-16 0.99999999999999889 -3.4694469519536142e-17 0 2.2770956127626807e-16 6.9388939039072284e-18 1.0000000000000007 0
		 1.9164375641977927e-09 2.8191648326902907e-07 1.8731816098238596e-10 1;
createNode fnk_twist_roll -n "femurTibiaTorsion";
	rename -uid "8B20F77E-4CA6-4EEE-CFB6-1F85E310FC17";
	setAttr ".alignAxis" 4;
	setAttr -s 2 ".positionProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".rotationProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".scaleProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 3 ".transforms";
createNode fnk_space_switch -n "fnk_space_switch_femurTorsionTangent_PAR";
	rename -uid "FB899F6A-4F17-156F-3995-40BBD95BB739";
	setAttr ".spaces[0].type" 6;
	setAttr ".spaces[0].offset" -type "matrix" 1 4.9523827269306762e-14 2.8059152223924855e-16 0
		 -4.9501891657071717e-14 1.0000000000000004 9.6173069508154185e-15 0 -2.8145888397723695e-16 -9.6450625264310474e-15 1.0000000000000004 0
		 0 1.7763568394002505e-15 -1.1102230246251565e-16 1;
createNode fnk_float_rescale -n "fnk_float_rescale1";
	rename -uid "43D85CA0-433C-DCB8-DCA9-33B27B65D10D";
	setAttr ".oldMin" 1;
	setAttr ".oldMax" 0;
	setAttr ".newMin" -1;
createNode fnk_space_switch -n "fnk_space_switch_setup_PAR";
	rename -uid "365118B5-4AF6-1D1A-9BC0-848DAB0C98C2";
	setAttr ".spaces[0].offset" -type "matrix" 0.99999999999999845 6.4668966998219743e-08 5.3196449282113444e-15 0
		 1.7172252133155754e-08 -0.26554076562929418 -0.9640996327086786 0 6.2347325921730556e-08 -0.96409963270867693 0.26554076562929452 0
		 0.72150777892957885 -0.029633697921883806 0.65752556008624397 1;
createNode fnk_float_substract -n "invertVisibility";
	rename -uid "1D18C349-4D05-D159-3964-C1AB4BF81308";
	setAttr ".floatA" 1;
createNode fnk_space_switch -n "fnk_space_switch_tibia_ankle_twist_002_PAR";
	rename -uid "871B32D6-45B4-950C-C389-89BCD950B886";
	setAttr ".spaces[0].offset" -type "matrix" 1.0000000000000022 4.2433809558598684e-15 -5.2697646593657943e-16 0
		 -4.2530710127764576e-15 1.0000000000000007 4.0939474033052647e-16 0 5.5402731014009277e-16 -4.7184478546569153e-16 1.0000000000000018 0
		 -1.4321877017664519e-13 -1.2745360322696797e-13 1.7430501486614958e-14 1;
createNode fnk_rig_curve -n "midTibAnckle_fnk_rig_curve1";
	rename -uid "348792D7-4DB0-EB2C-4365-F88C6B32F4AD";
	setAttr ".restLength" 1.8939785957336426;
	setAttr ".restControllerDistance" 1.8939785957336426;
	setAttr ".defomerCount" 2;
	setAttr ".curveType" 1;
	setAttr ".tangentMode" 1;
	setAttr ".alignAxis" 4;
	setAttr ".distributionStart" 0.33300000429153442;
	setAttr ".distributionEnd" 0.66600000858306885;
	setAttr -s 2 ".distributionProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".twsitProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 4 ".rootTipAlignProfil[0:3]"  0 1 1 0.2 0 1 0.80000001
		 0 1 1 1 1;
	setAttr -s 2 ".scaleProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 3 ".stretchProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 3 ".squashProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 2 ".controllers";
	setAttr -s 2 ".proceduralWaveProfil[0:1]"  0 0 2 1 1 2;
	setAttr -s 2 ".transformers";
createNode fnk_rig_curve -n "tibiaMidTib_fnk_rig_curve1";
	rename -uid "4D28924D-4B76-F84E-529A-C09132715D87";
	setAttr ".restLength" 1.893978476524353;
	setAttr ".restControllerDistance" 1.8939785957336426;
	setAttr ".defomerCount" 2;
	setAttr ".curveType" 1;
	setAttr ".tangentMode" 1;
	setAttr ".alignAxis" 4;
	setAttr ".distributionStart" 0.33300000429153442;
	setAttr ".distributionEnd" 0.66600000858306885;
	setAttr -s 2 ".distributionProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".twsitProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 4 ".rootTipAlignProfil[0:3]"  0 1 1 0.2 0 1 0.80000001
		 0 1 1 1 1;
	setAttr -s 2 ".scaleProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 3 ".stretchProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 3 ".squashProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 2 ".controllers";
	setAttr -s 2 ".proceduralWaveProfil[0:1]"  0 0 2 1 1 2;
	setAttr -s 2 ".transformers";
createNode fnk_space_switch -n "fnk_space_switch_femur_tibia_twist_002_PAR";
	rename -uid "F325CA7E-49EC-7B1A-3BE6-C4B082BDA887";
	setAttr ".spaces[0].offset" -type "matrix" 1.0000000000000022 4.2362552911910916e-15 -5.2708488615382798e-16 0
		 -4.2426050736801835e-15 1.0000000000000007 4.4408920985006262e-16 0 5.5544354922790196e-16 -4.649058915617843e-16 1.000000000000002 0
		 -1.4344081478157023e-13 -1.2789769243681803e-13 1.7541523789077473e-14 1;
createNode fnk_rig_curve -n "midFemTibia_fnk_rig_curve1";
	rename -uid "90F7C30F-482A-7CC5-FF9B-3680A4E025B0";
	setAttr ".restLength" 1.4881442785263062;
	setAttr ".restControllerDistance" 1.4881439208984375;
	setAttr ".defomerCount" 2;
	setAttr ".curveType" 1;
	setAttr ".tangentMode" 1;
	setAttr ".alignAxis" 4;
	setAttr ".distributionStart" 0.33300000429153442;
	setAttr ".distributionEnd" 0.66600000858306885;
	setAttr -s 2 ".distributionProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".twsitProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 4 ".rootTipAlignProfil[0:3]"  0 1 1 0.2 0 1 0.80000001
		 0 1 1 1 1;
	setAttr -s 2 ".scaleProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 3 ".stretchProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 3 ".squashProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 2 ".controllers";
	setAttr -s 2 ".proceduralWaveProfil[0:1]"  0 0 2 1 1 2;
	setAttr -s 2 ".transformers";
createNode fnk_rig_curve -n "femurMidFem_fnk_rig_curve1";
	rename -uid "26607437-472B-F54F-A94F-2B872AEBD922";
	setAttr ".restLength" 1.4881439208984375;
	setAttr ".restControllerDistance" 1.4881439208984375;
	setAttr ".defomerCount" 2;
	setAttr ".curveType" 1;
	setAttr ".tangentMode" 1;
	setAttr ".alignAxis" 4;
	setAttr ".distributionStart" 0.33300000429153442;
	setAttr ".distributionEnd" 0.66600000858306885;
	setAttr -s 2 ".distributionProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".twsitProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 4 ".rootTipAlignProfil[0:3]"  0 1 1 0.2 0 1 0.80000001
		 0 1 1 1 1;
	setAttr -s 2 ".scaleProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 3 ".stretchProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 3 ".squashProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 2 ".controllers";
	setAttr -s 2 ".proceduralWaveProfil[0:1]"  0 0 2 1 1 2;
	setAttr -s 2 ".transformers";
createNode fnk_space_switch -n "fnk_space_switch_tibia_PAR";
	rename -uid "5295FD69-4B7B-8998-22E4-06B0B3422DFB";
	setAttr ".spaces[0].offset" -type "matrix" 1.000000000000002 4.2378206080776176e-15 -5.2810132569053314e-16 -3.8405746927203663e-20
		 -4.2651835839221941e-15 1.0000000000000004 4.4408920985006262e-16 2.7822984203877649e-17
		 5.5690044589717935e-16 -4.7878367936959876e-16 1.0000000000000013 1.1676757642309585e-19
		 -1.475486399726833e-13 -1.2967404927621828e-13 1.7763568394002505e-14 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0BCD134D-4BE9-C6EA-06CD-A4BA7B5034B9";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "BF1D3E4A-478A-DE0B-EFA7-098DE6930BBF";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E544BFAB-45AD-519C-CED8-E7828A275AE0";
createNode displayLayerManager -n "layerManager";
	rename -uid "16773B3A-484A-096C-1D10-E5BADB5A9F0A";
createNode displayLayer -n "defaultLayer";
	rename -uid "70D69051-4EBC-44E5-AA23-BDA5406EDF35";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "17724990-4348-F97D-B8C3-83A60FDC5DB5";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "45902EE1-4CFA-7C75-B4F8-67A048016460";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "8E761C39-4683-5BB2-5BBF-6D94F6A0A350";
	setAttr ".version" -type "string" "5.4.2.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "72D67680-429C-998E-7A60-D6ACD8232325";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "192EEEB8-4949-2C67-D07D-21BDA907FB1A";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "1E65F9ED-4545-F667-0A6A-F2AC429D15D7";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "9911F78C-4A60-FEA4-F531-A18D8E2F4BC0";
createNode fnk_vector_sub -n "UpVector_Y";
	rename -uid "BAAAABCF-42D1-EB15-F187-68B8377FAF95";
createNode fnk_vector_normalize -n "UpVector_normY";
	rename -uid "66189617-43DF-CB48-089F-CE9D776FACB7";
createNode fnk_vector_crossProduct -n "UpVector_X";
	rename -uid "3B900D4D-43E5-988E-CC19-B584E3D879A8";
createNode fnk_vector_sub -n "UpVector_preZ";
	rename -uid "A3B5A48C-4C20-1B67-C330-018DD7121929";
createNode fnk_vector_normalize -n "UpVector_normX";
	rename -uid "FCB3C09A-46C7-2098-DFF1-6D81D7819150";
createNode fnk_vector_crossProduct -n "UpVector_Z";
	rename -uid "74DD7B51-4DD8-91A8-FC0A-BEB715198D30";
createNode fnk_vector_normalize -n "UpVector_normZ";
	rename -uid "0100D21D-4DD3-856A-F7AD-6F981F94E3E4";
createNode fnk_space_switch -n "upVectorTarget_IK_PAR";
	rename -uid "757A7BED-44EC-4D0C-E4EF-14AAFF4BEBB5";
createNode fnk_space_switch -n "rootTarget_IN_IK_PAR";
	rename -uid "25CA1556-404B-8A8B-014A-A6B96ADD85D8";
	setAttr ".spaces[0].offset" -type "matrix" 1 0 0 0 -1.3877787807814457e-17 1 3.4694469519536142e-18 0
		 0 0 0.999999999999999 0 3.5527136788005009e-15 8.8817841970012523e-16 0 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B178B42B-4143-F667-015B-BBA8FC299D02";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2346\n            -height 1162\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n"
		+ "                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n"
		+ "                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2346\\n    -height 1162\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2346\\n    -height 1162\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DA447740-4F7D-3D3F-1B76-AAA23243AEEA";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "384D89D5-43DB-864B-104B-1D97951E42DD";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -615.47616601936511 ;
	setAttr ".tgi[0].vh" -type "double2" 645.23806959863805 44.047617297323995 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "A500C1E1-4DAC-11DC-3629-7C8DBC1CB74D";
	setAttr -s 3 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_3";
	setAttr ".tgi[0].vl" -type "double2" 71.483086744236914 -195.07479461607676 ;
	setAttr ".tgi[0].vh" -type "double2" 3359.599943759596 1428.3361183059492 ;
	setAttr -s 20 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1842.857177734375;
	setAttr ".tgi[0].ni[0].y" -257.14285278320312;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 2254.28564453125;
	setAttr ".tgi[0].ni[1].y" 830;
	setAttr ".tgi[0].ni[1].nvs" 18305;
	setAttr ".tgi[0].ni[2].x" 2511.428466796875;
	setAttr ".tgi[0].ni[2].y" 872.85711669921875;
	setAttr ".tgi[0].ni[2].nvs" 18305;
	setAttr ".tgi[0].ni[3].x" 1782.857177734375;
	setAttr ".tgi[0].ni[3].y" 572.85711669921875;
	setAttr ".tgi[0].ni[3].nvs" 18305;
	setAttr ".tgi[0].ni[4].x" 1011.4285888671875;
	setAttr ".tgi[0].ni[4].y" -198.57142639160156;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 1397.142822265625;
	setAttr ".tgi[0].ni[5].y" 487.14285278320312;
	setAttr ".tgi[0].ni[5].nvs" 18306;
	setAttr ".tgi[0].ni[6].x" 1011.4285888671875;
	setAttr ".tgi[0].ni[6].y" -455.71429443359375;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1011.4285888671875;
	setAttr ".tgi[0].ni[7].y" -284.28570556640625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1011.4285888671875;
	setAttr ".tgi[0].ni[8].y" -370;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1268.5714111328125;
	setAttr ".tgi[0].ni[9].y" 701.4285888671875;
	setAttr ".tgi[0].ni[9].nvs" 18306;
	setAttr ".tgi[0].ni[10].x" 1525.7142333984375;
	setAttr ".tgi[0].ni[10].y" 701.4285888671875;
	setAttr ".tgi[0].ni[10].nvs" 18305;
	setAttr ".tgi[0].ni[11].x" 968.5714111328125;
	setAttr ".tgi[0].ni[11].y" 230;
	setAttr ".tgi[0].ni[11].nvs" 18305;
	setAttr ".tgi[0].ni[12].x" 2511.428466796875;
	setAttr ".tgi[0].ni[12].y" 572.85711669921875;
	setAttr ".tgi[0].ni[12].nvs" 18306;
	setAttr ".tgi[0].ni[13].x" 968.5714111328125;
	setAttr ".tgi[0].ni[13].y" 572.85711669921875;
	setAttr ".tgi[0].ni[13].nvs" 18305;
	setAttr ".tgi[0].ni[14].x" 2811.428466796875;
	setAttr ".tgi[0].ni[14].y" 530;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 668.5714111328125;
	setAttr ".tgi[0].ni[15].y" 358.57144165039062;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 668.5714111328125;
	setAttr ".tgi[0].ni[16].y" 272.85714721679688;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1997.142822265625;
	setAttr ".tgi[0].ni[17].y" 530;
	setAttr ".tgi[0].ni[17].nvs" 18305;
	setAttr ".tgi[0].ni[18].x" 668.5714111328125;
	setAttr ".tgi[0].ni[18].y" 444.28570556640625;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 968.5714111328125;
	setAttr ".tgi[0].ni[19].y" 401.42855834960938;
	setAttr ".tgi[0].ni[19].nvs" 18305;
	setAttr ".tgi[1].tn" -type "string" "Untitled_4";
	setAttr ".tgi[1].vl" -type "double2" -2493.5356902725666 -3136.9833031375597 ;
	setAttr ".tgi[1].vh" -type "double2" 7112.2246893803331 1605.5781401918546 ;
	setAttr -s 80 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" -2211.428466796875;
	setAttr ".tgi[1].ni[0].y" 1375.7142333984375;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 1907.142822265625;
	setAttr ".tgi[1].ni[1].y" 1604.2857666015625;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" -665.71429443359375;
	setAttr ".tgi[1].ni[2].y" -210;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 1907.142822265625;
	setAttr ".tgi[1].ni[3].y" 1502.857177734375;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 1907.142822265625;
	setAttr ".tgi[1].ni[4].y" 1401.4285888671875;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 872.85711669921875;
	setAttr ".tgi[1].ni[5].y" -557.14288330078125;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 1907.142822265625;
	setAttr ".tgi[1].ni[6].y" 1300;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" 565.71429443359375;
	setAttr ".tgi[1].ni[7].y" -464.28570556640625;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" 1907.142822265625;
	setAttr ".tgi[1].ni[8].y" 1198.5714111328125;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" 1487.142822265625;
	setAttr ".tgi[1].ni[9].y" 1470;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[1].ni[10].x" 1487.142822265625;
	setAttr ".tgi[1].ni[10].y" 938.5714111328125;
	setAttr ".tgi[1].ni[10].nvs" 18304;
	setAttr ".tgi[1].ni[11].x" 1907.142822265625;
	setAttr ".tgi[1].ni[11].y" 1097.142822265625;
	setAttr ".tgi[1].ni[11].nvs" 18304;
	setAttr ".tgi[1].ni[12].x" 1180;
	setAttr ".tgi[1].ni[12].y" -782.85711669921875;
	setAttr ".tgi[1].ni[12].nvs" 18304;
	setAttr ".tgi[1].ni[13].x" 1907.142822265625;
	setAttr ".tgi[1].ni[13].y" 995.71429443359375;
	setAttr ".tgi[1].ni[13].nvs" 18304;
	setAttr ".tgi[1].ni[14].x" 258.57144165039062;
	setAttr ".tgi[1].ni[14].y" -825.71429443359375;
	setAttr ".tgi[1].ni[14].nvs" 18304;
	setAttr ".tgi[1].ni[15].x" 872.85711669921875;
	setAttr ".tgi[1].ni[15].y" -918.5714111328125;
	setAttr ".tgi[1].ni[15].nvs" 18304;
	setAttr ".tgi[1].ni[16].x" 1487.142822265625;
	setAttr ".tgi[1].ni[16].y" 241.42857360839844;
	setAttr ".tgi[1].ni[16].nvs" 18304;
	setAttr ".tgi[1].ni[17].x" 872.85711669921875;
	setAttr ".tgi[1].ni[17].y" 660;
	setAttr ".tgi[1].ni[17].nvs" 18304;
	setAttr ".tgi[1].ni[18].x" -1290;
	setAttr ".tgi[1].ni[18].y" 637.14288330078125;
	setAttr ".tgi[1].ni[18].nvs" 18304;
	setAttr ".tgi[1].ni[19].x" 872.85711669921875;
	setAttr ".tgi[1].ni[19].y" -1350;
	setAttr ".tgi[1].ni[19].nvs" 18304;
	setAttr ".tgi[1].ni[20].x" 1907.142822265625;
	setAttr ".tgi[1].ni[20].y" 894.28570556640625;
	setAttr ".tgi[1].ni[20].nvs" 18304;
	setAttr ".tgi[1].ni[21].x" -1604.6827392578125;
	setAttr ".tgi[1].ni[21].y" 1643.203369140625;
	setAttr ".tgi[1].ni[21].nvs" 18304;
	setAttr ".tgi[1].ni[22].x" 258.57144165039062;
	setAttr ".tgi[1].ni[22].y" -990;
	setAttr ".tgi[1].ni[22].nvs" 18304;
	setAttr ".tgi[1].ni[23].x" 872.85711669921875;
	setAttr ".tgi[1].ni[23].y" -1248.5714111328125;
	setAttr ".tgi[1].ni[23].nvs" 18304;
	setAttr ".tgi[1].ni[24].x" -1290;
	setAttr ".tgi[1].ni[24].y" 1250;
	setAttr ".tgi[1].ni[24].nvs" 18304;
	setAttr ".tgi[1].ni[25].x" -665.71429443359375;
	setAttr ".tgi[1].ni[25].y" 840;
	setAttr ".tgi[1].ni[25].nvs" 18304;
	setAttr ".tgi[1].ni[26].x" 1907.142822265625;
	setAttr ".tgi[1].ni[26].y" 792.85711669921875;
	setAttr ".tgi[1].ni[26].nvs" 18304;
	setAttr ".tgi[1].ni[27].x" 1180;
	setAttr ".tgi[1].ni[27].y" -1227.142822265625;
	setAttr ".tgi[1].ni[27].nvs" 18304;
	setAttr ".tgi[1].ni[28].x" 1907.142822265625;
	setAttr ".tgi[1].ni[28].y" 691.4285888671875;
	setAttr ".tgi[1].ni[28].nvs" 18304;
	setAttr ".tgi[1].ni[29].x" 1907.142822265625;
	setAttr ".tgi[1].ni[29].y" 590;
	setAttr ".tgi[1].ni[29].nvs" 18304;
	setAttr ".tgi[1].ni[30].x" 1907.142822265625;
	setAttr ".tgi[1].ni[30].y" 488.57144165039062;
	setAttr ".tgi[1].ni[30].nvs" 18304;
	setAttr ".tgi[1].ni[31].x" -1904.2857666015625;
	setAttr ".tgi[1].ni[31].y" 1130;
	setAttr ".tgi[1].ni[31].nvs" 18304;
	setAttr ".tgi[1].ni[32].x" 1487.142822265625;
	setAttr ".tgi[1].ni[32].y" -791.4285888671875;
	setAttr ".tgi[1].ni[32].nvs" 18304;
	setAttr ".tgi[1].ni[33].x" -355.71429443359375;
	setAttr ".tgi[1].ni[33].y" -334.28570556640625;
	setAttr ".tgi[1].ni[33].nvs" 18304;
	setAttr ".tgi[1].ni[34].x" 258.57144165039062;
	setAttr ".tgi[1].ni[34].y" -470;
	setAttr ".tgi[1].ni[34].nvs" 18304;
	setAttr ".tgi[1].ni[35].x" 872.85711669921875;
	setAttr ".tgi[1].ni[35].y" -392.85714721679688;
	setAttr ".tgi[1].ni[35].nvs" 18304;
	setAttr ".tgi[1].ni[36].x" 872.85711669921875;
	setAttr ".tgi[1].ni[36].y" -1508.5714111328125;
	setAttr ".tgi[1].ni[36].nvs" 18304;
	setAttr ".tgi[1].ni[37].x" 1907.142822265625;
	setAttr ".tgi[1].ni[37].y" 387.14285278320312;
	setAttr ".tgi[1].ni[37].nvs" 18304;
	setAttr ".tgi[1].ni[38].x" 1487.142822265625;
	setAttr ".tgi[1].ni[38].y" 1125.7142333984375;
	setAttr ".tgi[1].ni[38].nvs" 18304;
	setAttr ".tgi[1].ni[39].x" 258.57144165039062;
	setAttr ".tgi[1].ni[39].y" -197.14285278320312;
	setAttr ".tgi[1].ni[39].nvs" 18304;
	setAttr ".tgi[1].ni[40].x" -1947.85400390625;
	setAttr ".tgi[1].ni[40].y" 1677.3824462890625;
	setAttr ".tgi[1].ni[40].nvs" 18304;
	setAttr ".tgi[1].ni[41].x" -1597.142822265625;
	setAttr ".tgi[1].ni[41].y" 1007.1428833007812;
	setAttr ".tgi[1].ni[41].nvs" 18304;
	setAttr ".tgi[1].ni[42].x" 1180;
	setAttr ".tgi[1].ni[42].y" -681.4285888671875;
	setAttr ".tgi[1].ni[42].nvs" 18304;
	setAttr ".tgi[1].ni[43].x" 1487.142822265625;
	setAttr ".tgi[1].ni[43].y" 577.14288330078125;
	setAttr ".tgi[1].ni[43].nvs" 18304;
	setAttr ".tgi[1].ni[44].x" 1180;
	setAttr ".tgi[1].ni[44].y" 1368.5714111328125;
	setAttr ".tgi[1].ni[44].nvs" 18304;
	setAttr ".tgi[1].ni[45].x" -2047.5050048828125;
	setAttr ".tgi[1].ni[45].y" 1895.4708251953125;
	setAttr ".tgi[1].ni[45].nvs" 18304;
	setAttr ".tgi[1].ni[46].x" 1907.142822265625;
	setAttr ".tgi[1].ni[46].y" 184.28572082519531;
	setAttr ".tgi[1].ni[46].nvs" 18304;
	setAttr ".tgi[1].ni[47].x" -1604.6827392578125;
	setAttr ".tgi[1].ni[47].y" 1801.7747802734375;
	setAttr ".tgi[1].ni[47].nvs" 18304;
	setAttr ".tgi[1].ni[48].x" 1907.142822265625;
	setAttr ".tgi[1].ni[48].y" 82.857139587402344;
	setAttr ".tgi[1].ni[48].nvs" 18304;
	setAttr ".tgi[1].ni[49].x" -2013.1236572265625;
	setAttr ".tgi[1].ni[49].y" 1785.257080078125;
	setAttr ".tgi[1].ni[49].nvs" 18304;
	setAttr ".tgi[1].ni[50].x" -1604.6827392578125;
	setAttr ".tgi[1].ni[50].y" 2004.6319580078125;
	setAttr ".tgi[1].ni[50].nvs" 18304;
	setAttr ".tgi[1].ni[51].x" 872.85711669921875;
	setAttr ".tgi[1].ni[51].y" -715.71429443359375;
	setAttr ".tgi[1].ni[51].nvs" 18304;
	setAttr ".tgi[1].ni[52].x" 1907.142822265625;
	setAttr ".tgi[1].ni[52].y" -18.571428298950195;
	setAttr ".tgi[1].ni[52].nvs" 18304;
	setAttr ".tgi[1].ni[53].x" 1907.142822265625;
	setAttr ".tgi[1].ni[53].y" -120;
	setAttr ".tgi[1].ni[53].nvs" 18304;
	setAttr ".tgi[1].ni[54].x" -1604.6827392578125;
	setAttr ".tgi[1].ni[54].y" 1903.203369140625;
	setAttr ".tgi[1].ni[54].nvs" 18304;
	setAttr ".tgi[1].ni[55].x" -2023.490966796875;
	setAttr ".tgi[1].ni[55].y" 2060.935302734375;
	setAttr ".tgi[1].ni[55].nvs" 18304;
	setAttr ".tgi[1].ni[56].x" 1487.142822265625;
	setAttr ".tgi[1].ni[56].y" 140;
	setAttr ".tgi[1].ni[56].nvs" 18304;
	setAttr ".tgi[1].ni[57].x" -2142.869140625;
	setAttr ".tgi[1].ni[57].y" 1671.275146484375;
	setAttr ".tgi[1].ni[57].nvs" 18304;
	setAttr ".tgi[1].ni[58].x" -982.85711669921875;
	setAttr ".tgi[1].ni[58].y" 52.857143402099609;
	setAttr ".tgi[1].ni[58].nvs" 18304;
	setAttr ".tgi[1].ni[59].x" 1907.142822265625;
	setAttr ".tgi[1].ni[59].y" -221.42857360839844;
	setAttr ".tgi[1].ni[59].nvs" 18304;
	setAttr ".tgi[1].ni[60].x" 565.71429443359375;
	setAttr ".tgi[1].ni[60].y" -1004.2857055664062;
	setAttr ".tgi[1].ni[60].nvs" 18304;
	setAttr ".tgi[1].ni[61].x" 1907.142822265625;
	setAttr ".tgi[1].ni[61].y" -322.85714721679688;
	setAttr ".tgi[1].ni[61].nvs" 18304;
	setAttr ".tgi[1].ni[62].x" 1487.142822265625;
	setAttr ".tgi[1].ni[62].y" -1278.5714111328125;
	setAttr ".tgi[1].ni[62].nvs" 18304;
	setAttr ".tgi[1].ni[63].x" -48.571430206298828;
	setAttr ".tgi[1].ni[63].y" -595.71429443359375;
	setAttr ".tgi[1].ni[63].nvs" 18304;
	setAttr ".tgi[1].ni[64].x" 1907.142822265625;
	setAttr ".tgi[1].ni[64].y" -424.28570556640625;
	setAttr ".tgi[1].ni[64].nvs" 18304;
	setAttr ".tgi[1].ni[65].x" -355.71429443359375;
	setAttr ".tgi[1].ni[65].y" 925.71429443359375;
	setAttr ".tgi[1].ni[65].nvs" 18304;
	setAttr ".tgi[1].ni[66].x" 1907.142822265625;
	setAttr ".tgi[1].ni[66].y" -525.71429443359375;
	setAttr ".tgi[1].ni[66].nvs" 18304;
	setAttr ".tgi[1].ni[67].x" -355.71429443359375;
	setAttr ".tgi[1].ni[67].y" -435.71429443359375;
	setAttr ".tgi[1].ni[67].nvs" 18304;
	setAttr ".tgi[1].ni[68].x" 565.71429443359375;
	setAttr ".tgi[1].ni[68].y" -1105.7142333984375;
	setAttr ".tgi[1].ni[68].nvs" 18304;
	setAttr ".tgi[1].ni[69].x" 1907.142822265625;
	setAttr ".tgi[1].ni[69].y" -627.14288330078125;
	setAttr ".tgi[1].ni[69].nvs" 18304;
	setAttr ".tgi[1].ni[70].x" 1180;
	setAttr ".tgi[1].ni[70].y" -575.71429443359375;
	setAttr ".tgi[1].ni[70].nvs" 18304;
	setAttr ".tgi[1].ni[71].x" 1907.142822265625;
	setAttr ".tgi[1].ni[71].y" -728.5714111328125;
	setAttr ".tgi[1].ni[71].nvs" 18304;
	setAttr ".tgi[1].ni[72].x" 872.85711669921875;
	setAttr ".tgi[1].ni[72].y" 444.28570556640625;
	setAttr ".tgi[1].ni[72].nvs" 18304;
	setAttr ".tgi[1].ni[73].x" 1907.142822265625;
	setAttr ".tgi[1].ni[73].y" -830;
	setAttr ".tgi[1].ni[73].nvs" 18304;
	setAttr ".tgi[1].ni[74].x" 1907.142822265625;
	setAttr ".tgi[1].ni[74].y" -931.4285888671875;
	setAttr ".tgi[1].ni[74].nvs" 18304;
	setAttr ".tgi[1].ni[75].x" 1907.142822265625;
	setAttr ".tgi[1].ni[75].y" -1090;
	setAttr ".tgi[1].ni[75].nvs" 18304;
	setAttr ".tgi[1].ni[76].x" 1180;
	setAttr ".tgi[1].ni[76].y" 325.71429443359375;
	setAttr ".tgi[1].ni[76].nvs" 18304;
	setAttr ".tgi[1].ni[77].x" -48.571430206298828;
	setAttr ".tgi[1].ni[77].y" 925.71429443359375;
	setAttr ".tgi[1].ni[77].nvs" 18304;
	setAttr ".tgi[1].ni[78].x" 1907.142822265625;
	setAttr ".tgi[1].ni[78].y" -1191.4285888671875;
	setAttr ".tgi[1].ni[78].nvs" 18304;
	setAttr ".tgi[1].ni[79].x" 872.85711669921875;
	setAttr ".tgi[1].ni[79].y" -817.14288330078125;
	setAttr ".tgi[1].ni[79].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "Untitled_5";
	setAttr ".tgi[2].vl" -type "double2" -2420.0573201909019 -1429.2640905722812 ;
	setAttr ".tgi[2].vh" -type "double2" 162.86623829698621 509.28610644280496 ;
	setAttr -s 110 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" -4662.85693359375;
	setAttr ".tgi[2].ni[0].y" 1218.5714111328125;
	setAttr ".tgi[2].ni[0].nvs" 18304;
	setAttr ".tgi[2].ni[1].x" -360;
	setAttr ".tgi[2].ni[1].y" 21.428571701049805;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" 1800;
	setAttr ".tgi[2].ni[2].y" 1127.142822265625;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" 1800;
	setAttr ".tgi[2].ni[3].y" 760;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" -1268.8555908203125;
	setAttr ".tgi[2].ni[4].y" -920.18975830078125;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" 2220;
	setAttr ".tgi[2].ni[5].y" 1911.4285888671875;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" 1492.857177734375;
	setAttr ".tgi[2].ni[6].y" 1015.7142944335938;
	setAttr ".tgi[2].ni[6].nvs" 18304;
	setAttr ".tgi[2].ni[7].x" 1800;
	setAttr ".tgi[2].ni[7].y" 105.71428680419922;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[2].ni[8].x" -1898.5714111328125;
	setAttr ".tgi[2].ni[8].y" 330;
	setAttr ".tgi[2].ni[8].nvs" 18304;
	setAttr ".tgi[2].ni[9].x" 1492.857177734375;
	setAttr ".tgi[2].ni[9].y" -1358.5714111328125;
	setAttr ".tgi[2].ni[9].nvs" 18304;
	setAttr ".tgi[2].ni[10].x" -1281.4285888671875;
	setAttr ".tgi[2].ni[10].y" 78.571426391601562;
	setAttr ".tgi[2].ni[10].nvs" 18304;
	setAttr ".tgi[2].ni[11].x" 2220;
	setAttr ".tgi[2].ni[11].y" 1810;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[2].ni[12].x" 868.5714111328125;
	setAttr ".tgi[2].ni[12].y" -825.71429443359375;
	setAttr ".tgi[2].ni[12].nvs" 18304;
	setAttr ".tgi[2].ni[13].x" 1800;
	setAttr ".tgi[2].ni[13].y" 207.14285278320312;
	setAttr ".tgi[2].ni[13].nvs" 18304;
	setAttr ".tgi[2].ni[14].x" -1555.693359375;
	setAttr ".tgi[2].ni[14].y" -1063.301025390625;
	setAttr ".tgi[2].ni[14].nvs" 18304;
	setAttr ".tgi[2].ni[15].x" -667.14288330078125;
	setAttr ".tgi[2].ni[15].y" 280;
	setAttr ".tgi[2].ni[15].nvs" 18304;
	setAttr ".tgi[2].ni[16].x" -974.28570556640625;
	setAttr ".tgi[2].ni[16].y" -1960;
	setAttr ".tgi[2].ni[16].nvs" 18304;
	setAttr ".tgi[2].ni[17].x" 2220;
	setAttr ".tgi[2].ni[17].y" 1708.5714111328125;
	setAttr ".tgi[2].ni[17].nvs" 18304;
	setAttr ".tgi[2].ni[18].x" -4048.571533203125;
	setAttr ".tgi[2].ni[18].y" 1140;
	setAttr ".tgi[2].ni[18].nvs" 18304;
	setAttr ".tgi[2].ni[19].x" 561.4285888671875;
	setAttr ".tgi[2].ni[19].y" -1561.4285888671875;
	setAttr ".tgi[2].ni[19].nvs" 18304;
	setAttr ".tgi[2].ni[20].x" 254.28572082519531;
	setAttr ".tgi[2].ni[20].y" 608.5714111328125;
	setAttr ".tgi[2].ni[20].nvs" 18304;
	setAttr ".tgi[2].ni[21].x" -2205.71435546875;
	setAttr ".tgi[2].ni[21].y" 400;
	setAttr ".tgi[2].ni[21].nvs" 18304;
	setAttr ".tgi[2].ni[22].x" 1492.857177734375;
	setAttr ".tgi[2].ni[22].y" -1618.5714111328125;
	setAttr ".tgi[2].ni[22].nvs" 18304;
	setAttr ".tgi[2].ni[23].x" 1175.7142333984375;
	setAttr ".tgi[2].ni[23].y" -1898.5714111328125;
	setAttr ".tgi[2].ni[23].nvs" 18304;
	setAttr ".tgi[2].ni[24].x" -667.14288330078125;
	setAttr ".tgi[2].ni[24].y" 178.57142639160156;
	setAttr ".tgi[2].ni[24].nvs" 18304;
	setAttr ".tgi[2].ni[25].x" -667.14288330078125;
	setAttr ".tgi[2].ni[25].y" -1102.857177734375;
	setAttr ".tgi[2].ni[25].nvs" 18304;
	setAttr ".tgi[2].ni[26].x" 1800;
	setAttr ".tgi[2].ni[26].y" 918.5714111328125;
	setAttr ".tgi[2].ni[26].nvs" 18304;
	setAttr ".tgi[2].ni[27].x" 868.5714111328125;
	setAttr ".tgi[2].ni[27].y" -1644.2857666015625;
	setAttr ".tgi[2].ni[27].nvs" 18304;
	setAttr ".tgi[2].ni[28].x" 1175.7142333984375;
	setAttr ".tgi[2].ni[28].y" 121.42857360839844;
	setAttr ".tgi[2].ni[28].nvs" 18304;
	setAttr ".tgi[2].ni[29].x" -2512.857177734375;
	setAttr ".tgi[2].ni[29].y" 850;
	setAttr ".tgi[2].ni[29].nvs" 18304;
	setAttr ".tgi[2].ni[30].x" 868.5714111328125;
	setAttr ".tgi[2].ni[30].y" 778.5714111328125;
	setAttr ".tgi[2].ni[30].nvs" 18304;
	setAttr ".tgi[2].ni[31].x" -1588.5714111328125;
	setAttr ".tgi[2].ni[31].y" 291.42855834960938;
	setAttr ".tgi[2].ni[31].nvs" 18304;
	setAttr ".tgi[2].ni[32].x" -52.857143402099609;
	setAttr ".tgi[2].ni[32].y" 891.4285888671875;
	setAttr ".tgi[2].ni[32].nvs" 18304;
	setAttr ".tgi[2].ni[33].x" -974.28570556640625;
	setAttr ".tgi[2].ni[33].y" -1497.142822265625;
	setAttr ".tgi[2].ni[33].nvs" 18304;
	setAttr ".tgi[2].ni[34].x" -974.28570556640625;
	setAttr ".tgi[2].ni[34].y" -1858.5714111328125;
	setAttr ".tgi[2].ni[34].nvs" 18304;
	setAttr ".tgi[2].ni[35].x" 2220;
	setAttr ".tgi[2].ni[35].y" 1607.142822265625;
	setAttr ".tgi[2].ni[35].nvs" 18304;
	setAttr ".tgi[2].ni[36].x" 1492.857177734375;
	setAttr ".tgi[2].ni[36].y" -282.85714721679688;
	setAttr ".tgi[2].ni[36].nvs" 18304;
	setAttr ".tgi[2].ni[37].x" 1800;
	setAttr ".tgi[2].ni[37].y" -652.85711669921875;
	setAttr ".tgi[2].ni[37].nvs" 18304;
	setAttr ".tgi[2].ni[38].x" 1492.857177734375;
	setAttr ".tgi[2].ni[38].y" -555.71429443359375;
	setAttr ".tgi[2].ni[38].nvs" 18304;
	setAttr ".tgi[2].ni[39].x" 1800;
	setAttr ".tgi[2].ni[39].y" 658.5714111328125;
	setAttr ".tgi[2].ni[39].nvs" 18304;
	setAttr ".tgi[2].ni[40].x" 2220;
	setAttr ".tgi[2].ni[40].y" 1505.7142333984375;
	setAttr ".tgi[2].ni[40].nvs" 18304;
	setAttr ".tgi[2].ni[41].x" -3434.28564453125;
	setAttr ".tgi[2].ni[41].y" 975.71429443359375;
	setAttr ".tgi[2].ni[41].nvs" 18304;
	setAttr ".tgi[2].ni[42].x" -667.14288330078125;
	setAttr ".tgi[2].ni[42].y" -24.285715103149414;
	setAttr ".tgi[2].ni[42].nvs" 18304;
	setAttr ".tgi[2].ni[43].x" -3434.28564453125;
	setAttr ".tgi[2].ni[43].y" 1238.5714111328125;
	setAttr ".tgi[2].ni[43].nvs" 18304;
	setAttr ".tgi[2].ni[44].x" 1800;
	setAttr ".tgi[2].ni[44].y" -1051.4285888671875;
	setAttr ".tgi[2].ni[44].nvs" 18304;
	setAttr ".tgi[2].ni[45].x" -1588.5714111328125;
	setAttr ".tgi[2].ni[45].y" 31.428571701049805;
	setAttr ".tgi[2].ni[45].nvs" 18304;
	setAttr ".tgi[2].ni[46].x" -3127.142822265625;
	setAttr ".tgi[2].ni[46].y" 1145.7142333984375;
	setAttr ".tgi[2].ni[46].nvs" 18304;
	setAttr ".tgi[2].ni[47].x" -974.28570556640625;
	setAttr ".tgi[2].ni[47].y" -1294.2857666015625;
	setAttr ".tgi[2].ni[47].nvs" 18304;
	setAttr ".tgi[2].ni[48].x" 1175.7142333984375;
	setAttr ".tgi[2].ni[48].y" -1625.7142333984375;
	setAttr ".tgi[2].ni[48].nvs" 18304;
	setAttr ".tgi[2].ni[49].x" -52.857143402099609;
	setAttr ".tgi[2].ni[49].y" -408.57144165039062;
	setAttr ".tgi[2].ni[49].nvs" 18304;
	setAttr ".tgi[2].ni[50].x" 2220;
	setAttr ".tgi[2].ni[50].y" 1404.2857666015625;
	setAttr ".tgi[2].ni[50].nvs" 18304;
	setAttr ".tgi[2].ni[51].x" -1281.4285888671875;
	setAttr ".tgi[2].ni[51].y" -22.857143402099609;
	setAttr ".tgi[2].ni[51].nvs" 18304;
	setAttr ".tgi[2].ni[52].x" -4048.571533203125;
	setAttr ".tgi[2].ni[52].y" 978.5714111328125;
	setAttr ".tgi[2].ni[52].nvs" 18304;
	setAttr ".tgi[2].ni[53].x" 1492.857177734375;
	setAttr ".tgi[2].ni[53].y" 114.28571319580078;
	setAttr ".tgi[2].ni[53].nvs" 18304;
	setAttr ".tgi[2].ni[54].x" 1800;
	setAttr ".tgi[2].ni[54].y" -1341.4285888671875;
	setAttr ".tgi[2].ni[54].nvs" 18304;
	setAttr ".tgi[2].ni[55].x" -3127.142822265625;
	setAttr ".tgi[2].ni[55].y" 867.14288330078125;
	setAttr ".tgi[2].ni[55].nvs" 18304;
	setAttr ".tgi[2].ni[56].x" -974.28570556640625;
	setAttr ".tgi[2].ni[56].y" -1598.5714111328125;
	setAttr ".tgi[2].ni[56].nvs" 18304;
	setAttr ".tgi[2].ni[57].x" 2220;
	setAttr ".tgi[2].ni[57].y" 1302.857177734375;
	setAttr ".tgi[2].ni[57].nvs" 18304;
	setAttr ".tgi[2].ni[58].x" 1492.857177734375;
	setAttr ".tgi[2].ni[58].y" -2457.142822265625;
	setAttr ".tgi[2].ni[58].nvs" 18304;
	setAttr ".tgi[2].ni[59].x" -974.28570556640625;
	setAttr ".tgi[2].ni[59].y" -2162.857177734375;
	setAttr ".tgi[2].ni[59].nvs" 18304;
	setAttr ".tgi[2].ni[60].x" -52.857143402099609;
	setAttr ".tgi[2].ni[60].y" -967.14288330078125;
	setAttr ".tgi[2].ni[60].nvs" 18304;
	setAttr ".tgi[2].ni[61].x" -974.28570556640625;
	setAttr ".tgi[2].ni[61].y" 154.28572082519531;
	setAttr ".tgi[2].ni[61].nvs" 18304;
	setAttr ".tgi[2].ni[62].x" -974.28570556640625;
	setAttr ".tgi[2].ni[62].y" -2061.428466796875;
	setAttr ".tgi[2].ni[62].nvs" 18304;
	setAttr ".tgi[2].ni[63].x" 2220;
	setAttr ".tgi[2].ni[63].y" 1201.4285888671875;
	setAttr ".tgi[2].ni[63].nvs" 18304;
	setAttr ".tgi[2].ni[64].x" -3127.142822265625;
	setAttr ".tgi[2].ni[64].y" 1044.2857666015625;
	setAttr ".tgi[2].ni[64].nvs" 18305;
	setAttr ".tgi[2].ni[65].x" 2220;
	setAttr ".tgi[2].ni[65].y" 1100;
	setAttr ".tgi[2].ni[65].nvs" 18304;
	setAttr ".tgi[2].ni[66].x" 1800;
	setAttr ".tgi[2].ni[66].y" -1442.857177734375;
	setAttr ".tgi[2].ni[66].nvs" 18304;
	setAttr ".tgi[2].ni[67].x" -667.14288330078125;
	setAttr ".tgi[2].ni[67].y" 77.142860412597656;
	setAttr ".tgi[2].ni[67].nvs" 18304;
	setAttr ".tgi[2].ni[68].x" 2220;
	setAttr ".tgi[2].ni[68].y" 918.5714111328125;
	setAttr ".tgi[2].ni[68].nvs" 18304;
	setAttr ".tgi[2].ni[69].x" -974.28570556640625;
	setAttr ".tgi[2].ni[69].y" -1395.7142333984375;
	setAttr ".tgi[2].ni[69].nvs" 18304;
	setAttr ".tgi[2].ni[70].x" -1546.0186767578125;
	setAttr ".tgi[2].ni[70].y" -725.95703125;
	setAttr ".tgi[2].ni[70].nvs" 18305;
	setAttr ".tgi[2].ni[71].x" 1800;
	setAttr ".tgi[2].ni[71].y" 1228.5714111328125;
	setAttr ".tgi[2].ni[71].nvs" 18304;
	setAttr ".tgi[2].ni[72].x" 254.28572082519531;
	setAttr ".tgi[2].ni[72].y" -1242.857177734375;
	setAttr ".tgi[2].ni[72].nvs" 18304;
	setAttr ".tgi[2].ni[73].x" -974.28570556640625;
	setAttr ".tgi[2].ni[73].y" -1700;
	setAttr ".tgi[2].ni[73].nvs" 18304;
	setAttr ".tgi[2].ni[74].x" -52.857143402099609;
	setAttr ".tgi[2].ni[74].y" 790;
	setAttr ".tgi[2].ni[74].nvs" 18304;
	setAttr ".tgi[2].ni[75].x" 1800;
	setAttr ".tgi[2].ni[75].y" -2312.857177734375;
	setAttr ".tgi[2].ni[75].nvs" 18304;
	setAttr ".tgi[2].ni[76].x" -1588.5714111328125;
	setAttr ".tgi[2].ni[76].y" -70;
	setAttr ".tgi[2].ni[76].nvs" 18304;
	setAttr ".tgi[2].ni[77].x" 1492.857177734375;
	setAttr ".tgi[2].ni[77].y" -80;
	setAttr ".tgi[2].ni[77].nvs" 18304;
	setAttr ".tgi[2].ni[78].x" 2220;
	setAttr ".tgi[2].ni[78].y" 817.14288330078125;
	setAttr ".tgi[2].ni[78].nvs" 18304;
	setAttr ".tgi[2].ni[79].x" 561.4285888671875;
	setAttr ".tgi[2].ni[79].y" 690;
	setAttr ".tgi[2].ni[79].nvs" 18304;
	setAttr ".tgi[2].ni[80].x" 561.4285888671875;
	setAttr ".tgi[2].ni[80].y" -880;
	setAttr ".tgi[2].ni[80].nvs" 18304;
	setAttr ".tgi[2].ni[81].x" -4355.71435546875;
	setAttr ".tgi[2].ni[81].y" 1190;
	setAttr ".tgi[2].ni[81].nvs" 18304;
	setAttr ".tgi[2].ni[82].x" 1492.857177734375;
	setAttr ".tgi[2].ni[82].y" -181.42857360839844;
	setAttr ".tgi[2].ni[82].nvs" 18304;
	setAttr ".tgi[2].ni[83].x" 2220;
	setAttr ".tgi[2].ni[83].y" 580;
	setAttr ".tgi[2].ni[83].nvs" 18304;
	setAttr ".tgi[2].ni[84].x" -3741.428466796875;
	setAttr ".tgi[2].ni[84].y" 1160;
	setAttr ".tgi[2].ni[84].nvs" 18304;
	setAttr ".tgi[2].ni[85].x" 2220;
	setAttr ".tgi[2].ni[85].y" 478.57144165039062;
	setAttr ".tgi[2].ni[85].nvs" 18304;
	setAttr ".tgi[2].ni[86].x" -2820;
	setAttr ".tgi[2].ni[86].y" 1065.7142333984375;
	setAttr ".tgi[2].ni[86].nvs" 18305;
	setAttr ".tgi[2].ni[87].x" 2220;
	setAttr ".tgi[2].ni[87].y" 324.28570556640625;
	setAttr ".tgi[2].ni[87].nvs" 18304;
	setAttr ".tgi[2].ni[88].x" 1175.7142333984375;
	setAttr ".tgi[2].ni[88].y" -1524.2857666015625;
	setAttr ".tgi[2].ni[88].nvs" 18304;
	setAttr ".tgi[2].ni[89].x" -2127.611328125;
	setAttr ".tgi[2].ni[89].y" -796.71044921875;
	setAttr ".tgi[2].ni[89].nvs" 18305;
	setAttr ".tgi[2].ni[90].x" 1492.857177734375;
	setAttr ".tgi[2].ni[90].y" 914.28570556640625;
	setAttr ".tgi[2].ni[90].nvs" 18304;
	setAttr ".tgi[2].ni[91].x" 1800;
	setAttr ".tgi[2].ni[91].y" -2520;
	setAttr ".tgi[2].ni[91].nvs" 18304;
	setAttr ".tgi[2].ni[92].x" 1492.857177734375;
	setAttr ".tgi[2].ni[92].y" -1517.142822265625;
	setAttr ".tgi[2].ni[92].nvs" 18304;
	setAttr ".tgi[2].ni[93].x" -974.28570556640625;
	setAttr ".tgi[2].ni[93].y" 52.857143402099609;
	setAttr ".tgi[2].ni[93].nvs" 18304;
	setAttr ".tgi[2].ni[94].x" -1281.4285888671875;
	setAttr ".tgi[2].ni[94].y" 180;
	setAttr ".tgi[2].ni[94].nvs" 18304;
	setAttr ".tgi[2].ni[95].x" 2220;
	setAttr ".tgi[2].ni[95].y" 222.85714721679688;
	setAttr ".tgi[2].ni[95].nvs" 18304;
	setAttr ".tgi[2].ni[96].x" 2220;
	setAttr ".tgi[2].ni[96].y" 121.42857360839844;
	setAttr ".tgi[2].ni[96].nvs" 18304;
	setAttr ".tgi[2].ni[97].x" 1800;
	setAttr ".tgi[2].ni[97].y" -2621.428466796875;
	setAttr ".tgi[2].ni[97].nvs" 18304;
	setAttr ".tgi[2].ni[98].x" 1175.7142333984375;
	setAttr ".tgi[2].ni[98].y" 764.28570556640625;
	setAttr ".tgi[2].ni[98].nvs" 18304;
	setAttr ".tgi[2].ni[99].x" 1175.7142333984375;
	setAttr ".tgi[2].ni[99].y" 922.85711669921875;
	setAttr ".tgi[2].ni[99].nvs" 18304;
	setAttr ".tgi[2].ni[100].x" 2220;
	setAttr ".tgi[2].ni[100].y" 20;
	setAttr ".tgi[2].ni[100].nvs" 18304;
	setAttr ".tgi[2].ni[101].x" -2820;
	setAttr ".tgi[2].ni[101].y" 842.85711669921875;
	setAttr ".tgi[2].ni[101].nvs" 18304;
	setAttr ".tgi[2].ni[102].x" 1175.7142333984375;
	setAttr ".tgi[2].ni[102].y" -2101.428466796875;
	setAttr ".tgi[2].ni[102].nvs" 18304;
	setAttr ".tgi[2].ni[103].x" 2220;
	setAttr ".tgi[2].ni[103].y" -81.428573608398438;
	setAttr ".tgi[2].ni[103].nvs" 18304;
	setAttr ".tgi[2].ni[104].x" 1175.7142333984375;
	setAttr ".tgi[2].ni[104].y" -2000;
	setAttr ".tgi[2].ni[104].nvs" 18304;
	setAttr ".tgi[2].ni[105].x" 2220;
	setAttr ".tgi[2].ni[105].y" -182.85714721679688;
	setAttr ".tgi[2].ni[105].nvs" 18304;
	setAttr ".tgi[2].ni[106].x" -1588.5714111328125;
	setAttr ".tgi[2].ni[106].y" 132.85714721679688;
	setAttr ".tgi[2].ni[106].nvs" 18304;
	setAttr ".tgi[2].ni[107].x" 2220;
	setAttr ".tgi[2].ni[107].y" -284.28570556640625;
	setAttr ".tgi[2].ni[107].nvs" 18304;
	setAttr ".tgi[2].ni[108].x" 2220;
	setAttr ".tgi[2].ni[108].y" -385.71429443359375;
	setAttr ".tgi[2].ni[108].nvs" 18304;
	setAttr ".tgi[2].ni[109].x" 2220;
	setAttr ".tgi[2].ni[109].y" -487.14285278320312;
	setAttr ".tgi[2].ni[109].nvs" 18304;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 62 ".u";
select -ne :defaultRenderingList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.36129034 0.36129034 0.36129034 ;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "//svm-users/dev/rez_packages/external/ocio_config/2.1.0/.ocio-2.3.0/ocio-config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 - SDR Video (sRGB - Display)";
	setAttr ".vn" -type "string" "ACES 1.0 - SDR Video";
	setAttr ".dn" -type "string" "sRGB - Display";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 - SDR Video (sRGB - Display)";
	setAttr ".potn" -type "string" "ACES 1.0 - SDR Video (sRGB - Display)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "setup_CON.blendIKFK" "setup.legIKFK_blend";
connectAttr "setup_CON.footLogicCon" "setup.footLogicCon";
connectAttr "setup.guideVisibility" "guid_GRP.v";
connectAttr "UpVectorPlan_Matrix.result" "tibia_BUF.opm";
connectAttr "tibiaAnckleTorsion.transforms[2]" "tibiaAnckleTorsionCON_BUF.opm";
connectAttr "setup_CON.torsionTangentVIZ" "midTibAnckle_ikControllerTangent0_000_CON.v"
		 -l on;
connectAttr "setup_CON.torsionTangentVIZ" "tibiaMidTib_ikControllerTangent1_001_CON.v"
		 -l on;
connectAttr "fnk_space_switch_anckleTorsionTangent_PAR.transform" "anckleTorsionTangent_BUF.opm"
		;
connectAttr "setup_CON.torsionTangentVIZ" "midTibAnckle_ikControllerTangent1_001_CON.v"
		 -l on;
connectAttr "femurTibiaTorsion.transforms[2]" "femurTibiaTorsionCON_BUF.opm";
connectAttr "setup_CON.torsionTangentVIZ" "midFemTibia_ikControllerTangent0_000_CON.v"
		 -l on;
connectAttr "setup_CON.torsionTangentVIZ" "femurMidFem_ikControllerTangent1_001_CON.v"
		 -l on;
connectAttr "fnk_space_switch_femurTorsionTangent_PAR.transform" "femurTorsionTangent_BUF.opm"
		;
connectAttr "setup_CON.torsionTangentVIZ" "femurMidFem_ikControllerTangent0_000_CON.v"
		 -l on;
connectAttr "leg_IKFK_blend.transform[1]" "tibiaCompensate_BUF.opm";
connectAttr "setup_CON.torsionTangentVIZ" "tibiaMidTib_ikControllerTangent0_000_CON.v"
		 -l on;
connectAttr "setup_CON.torsionTangentVIZ" "midFemTibia_ikControllerTangent1_001_CON.v"
		 -l on;
connectAttr "fnk_float_rescale1.result" "setupController_mirror_BUF.sx";
connectAttr "fnk_space_switch_setup_PAR.transform" "setup_CON.opm";
connectAttr "invertVisibility.result" "IK_GRP.v";
connectAttr "legControllers_IK_BUF.wm" "legControllerTargetIN_BUF.opm";
connectAttr "toes_GUID.msg" "toes_IK_CON.rig_guid";
connectAttr "setup.footLogicCon" "anckleTorsion_IK_CON.v" -l on;
connectAttr "setup.footLogicCon" "footRoll_IK_CON.v";
connectAttr "setup.footLogicCon" "sideRoll_IK_CON.v";
connectAttr "rootTarget_IN_IK_PAR.transform" "rootTarget_IN_IK_BUF.opm";
connectAttr "upVectorTarget_IK_PAR.transform" "upVectorTarget_IK_BUF.opm";
connectAttr "setup.legIKFK_blend" "FK_GRP.v";
connectAttr "root_IN_BUF.wm" "legControllerTargetIN_FK_BUF.opm";
connectAttr "femur_JNT.msg" "femur_FK_CON.rig_guid";
connectAttr "tibia_JNT.msg" "tibia_FK_CON.rig_guid";
connectAttr "anckle_JNT.msg" "ankle_FK_CON.rig_guid";
connectAttr "midToe_JNT.msg" "toes_FK_CON.rig_guid";
connectAttr "tibiaAnckleTorsion.transforms[0]" "tibiaAnckleTorsion_000_GRP.opm";
connectAttr "tibiaAnckleTorsion.transforms[1]" "tibiaAnckleTorsion_001_GRP.opm";
connectAttr "fnk_space_switch_tibia_ankle_twist_002_PAR.transform" "tibia_ankle_twist_002_JNT.opm"
		;
connectAttr "midTibAnckle_fnk_rig_curve1.transformers[0]" "tibia_ankle_twist_003_JNT.opm"
		;
connectAttr "midTibAnckle_fnk_rig_curve1.transformers[1]" "tibia_ankle_twist_004_JNT.opm"
		;
connectAttr "tibiaMidTib_fnk_rig_curve1.transformers[0]" "tibia_ankle_twist_000_JNT.opm"
		;
connectAttr "tibiaMidTib_fnk_rig_curve1.transformers[1]" "tibia_ankle_twist_001_JNT.opm"
		;
connectAttr "femurTibiaTorsion.transforms[0]" "femurTibiaTorsion_000_GRP.opm";
connectAttr "femurTibiaTorsion.transforms[1]" "femurTibiaTorsion_001_GRP.opm";
connectAttr "fnk_space_switch_femur_tibia_twist_002_PAR.transform" "femur_tibia_twist_002_JNT.opm"
		;
connectAttr "midFemTibia_fnk_rig_curve1.transformers[0]" "femur_tibia_twist_003_JNT.opm"
		;
connectAttr "midFemTibia_fnk_rig_curve1.transformers[1]" "femur_tibia_twist_004_JNT.opm"
		;
connectAttr "femurMidFem_fnk_rig_curve1.transformers[0]" "femur_tibia_twist_000_JNT.opm"
		;
connectAttr "femurMidFem_fnk_rig_curve1.transformers[1]" "femur_tibia_twist_001_JNT.opm"
		;
connectAttr "leg_IKFK_blend.transform[0]" "femur_JNT.opm";
connectAttr "fnk_space_switch_tibia_PAR.transform" "tibia_JNT.opm";
connectAttr "leg_IKFK_blend.transform[2]" "anckle_JNT.opm";
connectAttr "leg_IKFK_blend.transform[3]" "midToe_JNT.opm";
connectAttr "mirror_bool_rescale.result" "mirrorCompensate_BUF.sx";
connectAttr "femur_GUID.msg" "root_IN_BUF.rig_guid";
connectAttr "anckle_GUID.msg" "legControllers_IK_BUF.rig_guid";
connectAttr "upVector_GUID.msg" "upVector_IK_BUF.rig_guid";
connectAttr "UpVector_normZ.result" "UpVectorPlan_Matrix.axisZ";
connectAttr "UpVector_normX.result" "UpVectorPlan_Matrix.axisX";
connectAttr "UpVector_normY.result" "UpVectorPlan_Matrix.axisY";
connectAttr "tibiaMatrixToVector.position" "UpVectorPlan_Matrix.pos";
connectAttr "anckle_GUID.wm" "anckleMatrixToVector.matrix";
connectAttr "femur_GUID.wm" "femurMatrixToVector.matrix";
connectAttr "tibia_GUID.wm" "tibiaMatrixToVector.matrix";
connectAttr "tibiaCompensate_CON.wm" "tibiaAnckleTorsion.matrixA";
connectAttr "leg_IKFK_blend.transform[2]" "tibiaAnckleTorsion.matrixB";
connectAttr "leg_logic.bone1" "leg_IKFK_blend.chains[0].chain1Bone";
connectAttr "femur_FK_CON.wm" "leg_IKFK_blend.chains[0].chain2Bone";
connectAttr "leg_logic.bone2" "leg_IKFK_blend.chains[1].chain1Bone";
connectAttr "tibia_FK_CON.wm" "leg_IKFK_blend.chains[1].chain2Bone";
connectAttr "recompose_Anckle_Transform.result" "leg_IKFK_blend.chains[2].chain1Bone"
		;
connectAttr "ankle_FK_CON.wm" "leg_IKFK_blend.chains[2].chain2Bone";
connectAttr "mult_by_toes_Con.result" "leg_IKFK_blend.chains[3].chain1Bone";
connectAttr "toes_FK_CON.wm" "leg_IKFK_blend.chains[3].chain2Bone";
connectAttr "setup.legIKFK_blend" "leg_IKFK_blend.blend";
connectAttr "femur_IK_CON.wm" "leg_logic.root";
connectAttr "upVector_IK_CON.wm" "leg_logic.upVector";
connectAttr "foot_logic.anckleTransform" "leg_logic.effector";
connectAttr "fnk_vector_length1.result" "leg_logic.bone1Length";
connectAttr "fnk_vector_length2.result" "leg_logic.bone2Length";
connectAttr "setup.mirrorX" "leg_logic.negativeScale";
connectAttr "setup_CON.stretch" "leg_logic.stretch";
connectAttr "setup_CON.softIk" "leg_logic.useSoftIK";
connectAttr "middleFoot_GUID.wm" "foot_logic.middleTwsitGuidTransform";
connectAttr "endFoot_GUID.wm" "foot_logic.endToesGuidTransform";
connectAttr "sideRollExteriorFoot_GUID.wm" "foot_logic.sideRollExternalGuidTransform"
		;
connectAttr "heel_GUID.wm" "foot_logic.heelGuidTransform";
connectAttr "sideRollInteriorFoot_GUID.wm" "foot_logic.sideRollInternalGuidTransform"
		;
connectAttr "anckle_GUID.wm" "foot_logic.footGuideTransform";
connectAttr "toes_GUID.wm" "foot_logic.toesGuidTransform";
connectAttr "ankle_IK_CON.wm" "foot_logic.footTransform";
connectAttr "unitConversion6.o" "foot_logic.footRoll";
connectAttr "unitConversion4.o" "foot_logic.sideRoll";
connectAttr "unitConversion8.o" "foot_logic.middleTwsit";
connectAttr "footRoll_IK_CON.rx" "unitConversion6.i";
connectAttr "sideRoll_IK_CON.rz" "unitConversion4.i";
connectAttr "anckleTorsion_IK_CON.ry" "unitConversion8.i";
connectAttr "fnk_vector_sub1.result" "fnk_vector_length1.vector";
connectAttr "fnk_matrix_to_vector1.position" "fnk_vector_sub1.vectorA";
connectAttr "fnk_matrix_to_vector2.position" "fnk_vector_sub1.vectorB";
connectAttr "femur_GUID.wm" "fnk_matrix_to_vector1.matrix";
connectAttr "tibia_GUID.wm" "fnk_matrix_to_vector2.matrix";
connectAttr "fnk_vector_sub2.result" "fnk_vector_length2.vector";
connectAttr "fnk_matrix_to_vector2.position" "fnk_vector_sub2.vectorA";
connectAttr "fnk_matrix_to_vector3.position" "fnk_vector_sub2.vectorB";
connectAttr "anckle_GUID.wm" "fnk_matrix_to_vector3.matrix";
connectAttr "anckle_to_vector.position" "recompose_Anckle_Transform.pos";
connectAttr "anckle_multiply_length_Y.result" "recompose_Anckle_Transform.axisY"
		;
connectAttr "anckle_multiply_length_X.result" "recompose_Anckle_Transform.axisX"
		;
connectAttr "anckle_multiply_length_Z.result" "recompose_Anckle_Transform.axisZ"
		;
connectAttr "leg_logic.bone3" "anckle_to_vector.matrix";
connectAttr "anckle_Y_length.result" "anckle_multiply_length_Y.float";
connectAttr "anckle_Y.result" "anckle_multiply_length_Y.vector";
connectAttr "anckle_to_vector.axisY" "anckle_Y_length.vector";
connectAttr "norm_ankcle_Z.result" "anckle_Y.vectorA";
connectAttr "norm_ankcle_X.result" "anckle_Y.vectorB";
connectAttr "anckle_Z.result" "norm_ankcle_Z.vector";
connectAttr "anckle_to_vector.position" "anckle_Z.vectorB";
connectAttr "toes_to_vector.position" "anckle_Z.vectorA";
connectAttr "foot_logic.toesTransform" "toes_to_vector.matrix";
connectAttr "anckle_X.result" "norm_ankcle_X.vector";
connectAttr "anckle_to_vector.axisY" "anckle_X.vectorA";
connectAttr "anckle_Z.result" "anckle_X.vectorB";
connectAttr "anckle_X_length.result" "anckle_multiply_length_X.float";
connectAttr "mirror_anckle_X.result" "anckle_multiply_length_X.vector";
connectAttr "anckle_to_vector.axisX" "anckle_X_length.vector";
connectAttr "norm_ankcle_X.result" "mirror_anckle_X.vector";
connectAttr "mirror_bool_rescale.result" "mirror_anckle_X.float";
connectAttr "setup.mirrorX" "mirror_bool_rescale.floatX";
connectAttr "anckle_Z_length.result" "anckle_multiply_length_Z.float";
connectAttr "norm_ankcle_Z.result" "anckle_multiply_length_Z.vector";
connectAttr "anckle_to_vector.axisZ" "anckle_Z_length.vector";
connectAttr "toes_IK_CON.m" "mult_by_toes_Con.matrixA";
connectAttr "recompose_Toes_Transform.result" "mult_by_toes_Con.matrixB";
connectAttr "toes_multiply_length_Y.result" "recompose_Toes_Transform.axisY";
connectAttr "toes_multiply_length_X.result" "recompose_Toes_Transform.axisX";
connectAttr "toes_multiply_length_Z.result" "recompose_Toes_Transform.axisZ";
connectAttr "fnk_vector_add1.result" "recompose_Toes_Transform.pos";
connectAttr "toes_Y_length.result" "toes_multiply_length_Y.float";
connectAttr "toes_Y.result" "toes_multiply_length_Y.vector";
connectAttr "toes_to_vector.axisY" "toes_Y_length.vector";
connectAttr "norm_toes_Z.result" "toes_Y.vectorA";
connectAttr "norm_toes_X.result" "toes_Y.vectorB";
connectAttr "toes_Z.result" "norm_toes_Z.vector";
connectAttr "endToe_to_vector.position" "toes_Z.vectorA";
connectAttr "fnk_vector_add1.result" "toes_Z.vectorB";
connectAttr "foot_logic.endToesTransform" "endToe_to_vector.matrix";
connectAttr "fnk_vector_multiply_by_float1.result" "fnk_vector_add1.vectorA";
connectAttr "anckle_to_vector.position" "fnk_vector_add1.vectorB";
connectAttr "fnk_float_multiply1.result" "fnk_vector_multiply_by_float1.float";
connectAttr "norm_ankcle_Z.result" "fnk_vector_multiply_by_float1.vector";
connectAttr "toes_Z_length.result" "fnk_float_multiply1.floatB";
connectAttr "anckleToes_length.result" "fnk_float_multiply1.floatA";
connectAttr "toes_to_vector.axisZ" "toes_Z_length.vector";
connectAttr "gudAnckle_to_gudToes.result" "anckleToes_length.vector";
connectAttr "gudToes_to_vector.position" "gudAnckle_to_gudToes.vectorA";
connectAttr "gudAnckle_to_vector.position" "gudAnckle_to_gudToes.vectorB";
connectAttr "toes_GUID.wm" "gudToes_to_vector.matrix";
connectAttr "anckle_GUID.wm" "gudAnckle_to_vector.matrix";
connectAttr "toes_X.result" "norm_toes_X.vector";
connectAttr "toes_preY.result" "toes_X.vectorA";
connectAttr "toes_Z.result" "toes_X.vectorB";
connectAttr "anckle_to_vector.position" "toes_preY.vectorA";
connectAttr "fnk_vector_add1.result" "toes_preY.vectorB";
connectAttr "toes_X_length.result" "toes_multiply_length_X.float";
connectAttr "mirror_toes_X.result" "toes_multiply_length_X.vector";
connectAttr "toes_to_vector.axisX" "toes_X_length.vector";
connectAttr "norm_toes_X.result" "mirror_toes_X.vector";
connectAttr "mirror_bool_rescale.result" "mirror_toes_X.float";
connectAttr "toes_Z_length.result" "toes_multiply_length_Z.float";
connectAttr "norm_toes_Z.result" "toes_multiply_length_Z.vector";
connectAttr "tibiaAnckleTorsionCON_BUF.wm" "fnk_space_switch_anckleTorsionTangent_PAR.parentMatrix"
		;
connectAttr "tibiaAnckleTorsionCON_BUF.wim" "fnk_space_switch_anckleTorsionTangent_PAR.parentInverseMatrix"
		;
connectAttr "anckle_JNT.wm" "fnk_space_switch_anckleTorsionTangent_PAR.spaces[0].matrix"
		;
connectAttr "leg_IKFK_blend.transform[0]" "femurTibiaTorsion.matrixA";
connectAttr "tibiaCompensate_CON.wm" "femurTibiaTorsion.matrixB";
connectAttr "femurTibiaTorsionCON_BUF.wm" "fnk_space_switch_femurTorsionTangent_PAR.parentMatrix"
		;
connectAttr "femurTibiaTorsionCON_BUF.wim" "fnk_space_switch_femurTorsionTangent_PAR.parentInverseMatrix"
		;
connectAttr "femur_JNT.wm" "fnk_space_switch_femurTorsionTangent_PAR.spaces[0].matrix"
		;
connectAttr "setup.mirrorX" "fnk_float_rescale1.floatX";
connectAttr "setupController_mirror_BUF.wm" "fnk_space_switch_setup_PAR.parentMatrix"
		;
connectAttr "setupController_mirror_BUF.wim" "fnk_space_switch_setup_PAR.parentInverseMatrix"
		;
connectAttr "midToe_JNT.wm" "fnk_space_switch_setup_PAR.spaces[0].matrix";
connectAttr "setup.legIKFK_blend" "invertVisibility.floatB";
connectAttr "tibiaAnckleTorsion_deformer_GRP.wm" "fnk_space_switch_tibia_ankle_twist_002_PAR.parentMatrix"
		;
connectAttr "tibiaAnckleTorsion_deformer_GRP.wim" "fnk_space_switch_tibia_ankle_twist_002_PAR.parentInverseMatrix"
		;
connectAttr "tibiaAnckleTorsion_CON.wm" "fnk_space_switch_tibia_ankle_twist_002_PAR.spaces[0].matrix"
		;
connectAttr "tibiaAnckleTorsion_CON.wm" "midTibAnckle_fnk_rig_curve1.controllers[0].ikController"
		;
connectAttr "midTibAnckle_ikControllerTangent0_000_CON.wm" "midTibAnckle_fnk_rig_curve1.controllers[0].ikTangent0"
		;
connectAttr "midTibAnckle_ikControllerTangent1_001_CON.wm" "midTibAnckle_fnk_rig_curve1.controllers[0].ikTangent1"
		;
connectAttr "leg_IKFK_blend.transform[2]" "midTibAnckle_fnk_rig_curve1.controllers[1].ikController"
		;
connectAttr "tibiaCompensate_CON.wm" "tibiaMidTib_fnk_rig_curve1.controllers[0].ikController"
		;
connectAttr "tibiaMidTib_ikControllerTangent0_000_CON.wm" "tibiaMidTib_fnk_rig_curve1.controllers[0].ikTangent0"
		;
connectAttr "tibiaMidTib_ikControllerTangent1_001_CON.wm" "tibiaMidTib_fnk_rig_curve1.controllers[0].ikTangent1"
		;
connectAttr "tibiaAnckleTorsion_CON.wm" "tibiaMidTib_fnk_rig_curve1.controllers[1].ikController"
		;
connectAttr "femurTibiaTorsion_deformer_GRP.wm" "fnk_space_switch_femur_tibia_twist_002_PAR.parentMatrix"
		;
connectAttr "femurTibiaTorsion_deformer_GRP.wim" "fnk_space_switch_femur_tibia_twist_002_PAR.parentInverseMatrix"
		;
connectAttr "femurTibiaTorsion_CON.wm" "fnk_space_switch_femur_tibia_twist_002_PAR.spaces[0].matrix"
		;
connectAttr "femurTibiaTorsion_CON.wm" "midFemTibia_fnk_rig_curve1.controllers[0].ikController"
		;
connectAttr "midFemTibia_ikControllerTangent0_000_CON.wm" "midFemTibia_fnk_rig_curve1.controllers[0].ikTangent0"
		;
connectAttr "midFemTibia_ikControllerTangent1_001_CON.wm" "midFemTibia_fnk_rig_curve1.controllers[0].ikTangent1"
		;
connectAttr "tibiaCompensate_CON.wm" "midFemTibia_fnk_rig_curve1.controllers[1].ikController"
		;
connectAttr "leg_IKFK_blend.transform[0]" "femurMidFem_fnk_rig_curve1.controllers[0].ikController"
		;
connectAttr "femurMidFem_ikControllerTangent0_000_CON.wm" "femurMidFem_fnk_rig_curve1.controllers[0].ikTangent0"
		;
connectAttr "femurMidFem_ikControllerTangent1_001_CON.wm" "femurMidFem_fnk_rig_curve1.controllers[0].ikTangent1"
		;
connectAttr "femurTibiaTorsion_CON.wm" "femurMidFem_fnk_rig_curve1.controllers[1].ikController"
		;
connectAttr "bones_GRP.wm" "fnk_space_switch_tibia_PAR.parentMatrix";
connectAttr "bones_GRP.wim" "fnk_space_switch_tibia_PAR.parentInverseMatrix";
connectAttr "tibiaCompensate_CON.wm" "fnk_space_switch_tibia_PAR.spaces[0].matrix"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDenoiser.msg" ":defaultArnoldRenderOptions.imagers" -na
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "femurMatrixToVector.position" "UpVector_Y.vectorA";
connectAttr "anckleMatrixToVector.position" "UpVector_Y.vectorB";
connectAttr "UpVector_Y.result" "UpVector_normY.vector";
connectAttr "UpVector_normY.result" "UpVector_X.vectorB";
connectAttr "UpVector_preZ.result" "UpVector_X.vectorA";
connectAttr "femurMatrixToVector.position" "UpVector_preZ.vectorA";
connectAttr "tibiaMatrixToVector.position" "UpVector_preZ.vectorB";
connectAttr "UpVector_X.result" "UpVector_normX.vector";
connectAttr "UpVector_normY.result" "UpVector_Z.vectorB";
connectAttr "UpVector_normX.result" "UpVector_Z.vectorA";
connectAttr "UpVector_Z.result" "UpVector_normZ.vector";
connectAttr "IK_GRP.wm" "upVectorTarget_IK_PAR.parentMatrix";
connectAttr "IK_GRP.wim" "upVectorTarget_IK_PAR.parentInverseMatrix";
connectAttr "upVector_IK_BUF.wm" "upVectorTarget_IK_PAR.spaces[0].matrix";
connectAttr "IK_GRP.wm" "rootTarget_IN_IK_PAR.parentMatrix";
connectAttr "IK_GRP.wim" "rootTarget_IN_IK_PAR.parentInverseMatrix";
connectAttr "root_IN_BUF.wm" "rootTarget_IN_IK_PAR.spaces[0].matrix";
connectAttr "upVectorTarget_IK_PAR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "UpVector_Z.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "UpVector_normZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "UpVector_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "femur_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "UpVector_preZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "toes_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "tibia_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "ankle_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "UpVector_Y.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "UpVector_normY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "anckleMatrixToVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "UpVectorPlan_Matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "femurMatrixToVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "tibia_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "tibia_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "anckle_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "UpVector_normX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "femur_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "tibiaMatrixToVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "leg_logic.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn";
connectAttr "femurMidFem_ikControllerTangent1_001_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "fnk_vector_add1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn";
connectAttr "anckleTorsionTangent_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "setupController_mirror_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "mirror_anckle_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn";
connectAttr "footRoll_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn";
connectAttr "norm_ankcle_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn";
connectAttr "sideRoll_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn";
connectAttr "fnk_space_switch_anckleTorsionTangent_PAR.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "invertVisibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "tibiaAnckleTorsion_000_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "anckle_multiply_length_Y.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[12].dn"
		;
connectAttr "IK_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[13].dn";
connectAttr "norm_toes_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[14].dn";
connectAttr "anckle_Y_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[15].dn"
		;
connectAttr "fnk_space_switch_femurTorsionTangent_PAR.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[16].dn"
		;
connectAttr "tibiaAnckleTorsion.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[17].dn"
		;
connectAttr "norm_ankcle_Z.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[18].dn";
connectAttr "toes_multiply_length_Y.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[19].dn"
		;
connectAttr "tibia_ankle_twist_003_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[20].dn"
		;
connectAttr "toes_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[21].dn";
connectAttr "norm_toes_Z.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[22].dn";
connectAttr "toes_multiply_length_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[23].dn"
		;
connectAttr "leg_IKFK_blend.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[24].dn";
connectAttr "fnk_space_switch_setup_PAR.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[25].dn"
		;
connectAttr "legControllerTargetIN_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[26].dn"
		;
connectAttr "recompose_Toes_Transform.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[27].dn"
		;
connectAttr "guid_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[28].dn";
connectAttr "femur_tibia_twist_001_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[29].dn"
		;
connectAttr "femurTibiaTorsion_000_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[30].dn"
		;
connectAttr "anckle_to_vector.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[31].dn"
		;
connectAttr "recompose_Anckle_Transform.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[32].dn"
		;
connectAttr "toes_preY.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[33].dn";
connectAttr "mirror_bool_rescale.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[34].dn"
		;
connectAttr "anckle_Z_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[35].dn"
		;
connectAttr "toes_multiply_length_Z.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[36].dn"
		;
connectAttr "anckleTorsion_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[37].dn"
		;
connectAttr "fnk_float_rescale1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[38].dn"
		;
connectAttr "anckle_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[39].dn";
connectAttr "midToe_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[40].dn";
connectAttr "anckle_Z.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[41].dn";
connectAttr "anckle_multiply_length_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[42].dn"
		;
connectAttr "femurMidFem_fnk_rig_curve1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[43].dn"
		;
connectAttr "tibiaAnckleTorsionCON_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[44].dn"
		;
connectAttr "tibia_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[45].dn";
connectAttr "femur_tibia_twist_000_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[46].dn"
		;
connectAttr "femur_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[47].dn";
connectAttr "femurTorsionTangent_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[48].dn"
		;
connectAttr "femur_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[49].dn";
connectAttr "ankle_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[50].dn";
connectAttr "anckle_X_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[51].dn"
		;
connectAttr "tibiaMidTib_ikControllerTangent1_001_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[52].dn"
		;
connectAttr "midFemTibia_ikControllerTangent0_000_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[53].dn"
		;
connectAttr "tibia_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[54].dn";
connectAttr "anckle_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[55].dn";
connectAttr "midTibAnckle_fnk_rig_curve1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[56].dn"
		;
connectAttr "toes_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[57].dn";
connectAttr "fnk_vector_multiply_by_float1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[58].dn"
		;
connectAttr "midFemTibia_ikControllerTangent1_001_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[59].dn"
		;
connectAttr "mirror_toes_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[60].dn";
connectAttr "midTibAnckle_ikControllerTangent0_000_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[61].dn"
		;
connectAttr "mult_by_toes_Con.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[62].dn"
		;
connectAttr "toes_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[63].dn";
connectAttr "femurTibiaTorsion_001_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[64].dn"
		;
connectAttr "setup_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[65].dn";
connectAttr "femurMidFem_ikControllerTangent0_000_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[66].dn"
		;
connectAttr "toes_Z.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[67].dn";
connectAttr "toes_Y.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[68].dn";
connectAttr "tibiaCompensate_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[69].dn"
		;
connectAttr "anckle_multiply_length_Z.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[70].dn"
		;
connectAttr "FK_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[71].dn";
connectAttr "femurTibiaTorsion.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[72].dn"
		;
connectAttr "tibiaMidTib_ikControllerTangent0_000_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[73].dn"
		;
connectAttr "tibia_ankle_twist_004_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[74].dn"
		;
connectAttr "midTibAnckle_ikControllerTangent1_001_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[75].dn"
		;
connectAttr "femurTibiaTorsionCON_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[76].dn"
		;
connectAttr "setup.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[77].dn";
connectAttr "tibiaAnckleTorsion_001_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[78].dn"
		;
connectAttr "anckle_Y.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[79].dn";
connectAttr "toes_Z.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn";
connectAttr "leg_logic.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn";
connectAttr "toes_Y_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn";
connectAttr "toes_preY.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn";
connectAttr "mirrorCompensate_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "femurMidFem_ikControllerTangent1_001_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "fnk_vector_add1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn";
connectAttr "toes_multiply_length_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "fnk_space_switch_setup_PAR.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "anckle_multiply_length_Y.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "fnk_matrix_to_vector2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "tibia_ankle_twist_003_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "norm_ankcle_Z.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn";
connectAttr "fnk_space_switch_anckleTorsionTangent_PAR.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[13].dn"
		;
connectAttr "invertVisibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[14].dn"
		;
connectAttr "fnk_vector_length1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[15].dn"
		;
connectAttr "sideRollExteriorFoot_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "guid_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[17].dn";
connectAttr "norm_toes_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[18].dn";
connectAttr "anckle_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[19].dn";
connectAttr "gudAnckle_to_gudToes.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[20].dn"
		;
connectAttr "midToe_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[21].dn";
connectAttr "anckle_multiply_length_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[22].dn"
		;
connectAttr "anckle_Z_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[23].dn"
		;
connectAttr "upVector_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[24].dn"
		;
connectAttr "foot_logic.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[25].dn";
connectAttr "fnk_space_switch_femurTorsionTangent_PAR.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[26].dn"
		;
connectAttr "norm_ankcle_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[27].dn";
connectAttr "tibiaAnckleTorsion.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[28].dn"
		;
connectAttr "leg_IKFK_blend.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[29].dn";
connectAttr "fnk_float_multiply1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[30].dn"
		;
connectAttr "femur_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[31].dn";
connectAttr "gudAnckle_to_vector.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[32].dn"
		;
connectAttr "sideRoll_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[33].dn"
		;
connectAttr "footRoll_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[34].dn"
		;
connectAttr "midFemTibia_ikControllerTangent1_001_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[35].dn"
		;
connectAttr "femur_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[36].dn";
connectAttr "ankle_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[37].dn";
connectAttr "anckle_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[38].dn";
connectAttr "midTibAnckle_fnk_rig_curve1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[39].dn"
		;
connectAttr "tibiaAnckleTorsion_000_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[40].dn"
		;
connectAttr "toes_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[41].dn";
connectAttr "femur_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[42].dn";
connectAttr "toes_multiply_length_Y.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[43].dn"
		;
connectAttr "toes_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[44].dn";
connectAttr "anckle_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[45].dn";
connectAttr "recompose_Toes_Transform.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[46].dn"
		;
connectAttr "ankle_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[47].dn";
connectAttr "anckle_Y_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[48].dn"
		;
connectAttr "toes_to_vector.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[49].dn";
connectAttr "IK_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[50].dn";
connectAttr "fnk_matrix_to_vector3.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[51].dn"
		;
connectAttr "norm_toes_Z.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[52].dn";
connectAttr "tibiaAnckleTorsionCON_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[53].dn"
		;
connectAttr "recompose_Anckle_Transform.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[54].dn"
		;
connectAttr "tibia_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[55].dn";
connectAttr "endFoot_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[56].dn";
connectAttr "femurTibiaTorsion_000_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[57].dn"
		;
connectAttr "fnk_float_rescale1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[58].dn"
		;
connectAttr "sideRollInteriorFoot_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[59].dn"
		;
connectAttr "anckle_to_vector.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[60].dn"
		;
connectAttr "fnk_vector_sub1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[61].dn"
		;
connectAttr "anckleTorsion_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[62].dn"
		;
connectAttr "femur_tibia_twist_001_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[63].dn"
		;
connectAttr "toes_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[64].dn";
connectAttr "femur_tibia_twist_000_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[65].dn"
		;
connectAttr "femur_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[66].dn";
connectAttr "fnk_vector_length2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[67].dn"
		;
connectAttr "femurTorsionTangent_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[68].dn"
		;
connectAttr "middleFoot_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[69].dn"
		;
connectAttr "mirror_bool_rescale.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[70].dn"
		;
connectAttr "femurMidFem_fnk_rig_curve1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[71].dn"
		;
connectAttr "anckle_Z.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[72].dn";
connectAttr "heel_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[73].dn";
connectAttr "gudToes_to_vector.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[74].dn"
		;
connectAttr "toes_multiply_length_Z.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[75].dn"
		;
connectAttr "setup_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[76].dn";
connectAttr "toes_X_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[77].dn";
connectAttr "femurMidFem_ikControllerTangent0_000_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[78].dn"
		;
connectAttr "anckleToes_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[79].dn"
		;
connectAttr "toes_Z_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[80].dn";
connectAttr "toes_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[81].dn";
connectAttr "mirror_toes_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[82].dn";
connectAttr "midTibAnckle_ikControllerTangent0_000_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[83].dn"
		;
connectAttr "toes_Y.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[84].dn";
connectAttr "femurTibiaTorsion_001_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[85].dn"
		;
connectAttr "mult_by_toes_Con.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[86].dn"
		;
connectAttr "tibiaCompensate_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[87].dn"
		;
connectAttr "anckle_Y.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[88].dn";
connectAttr "setup.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[89].dn";
connectAttr "femurTibiaTorsionCON_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[90].dn"
		;
connectAttr "endToe_to_vector.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[91].dn"
		;
connectAttr "anckle_multiply_length_Z.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[92].dn"
		;
connectAttr "fnk_vector_sub2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[93].dn"
		;
connectAttr "fnk_matrix_to_vector1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[94].dn"
		;
connectAttr "anckleTorsionTangent_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[95].dn"
		;
connectAttr "midTibAnckle_ikControllerTangent1_001_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[96].dn"
		;
connectAttr "setupController_mirror_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[97].dn"
		;
connectAttr "femurTibiaTorsion.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[98].dn"
		;
connectAttr "fnk_vector_multiply_by_float1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[99].dn"
		;
connectAttr "tibiaMidTib_ikControllerTangent1_001_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[100].dn"
		;
connectAttr "tibia_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[101].dn";
connectAttr "anckle_X_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[102].dn"
		;
connectAttr "midFemTibia_ikControllerTangent0_000_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[103].dn"
		;
connectAttr "mirror_anckle_X.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[104].dn"
		;
connectAttr "FK_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[105].dn";
connectAttr "tibia_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[106].dn";
connectAttr "tibiaAnckleTorsion_001_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[107].dn"
		;
connectAttr "tibiaMidTib_ikControllerTangent0_000_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[108].dn"
		;
connectAttr "tibia_ankle_twist_004_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[109].dn"
		;
connectAttr "leg_logic.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnk_matrix_to_vector1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnk_matrix_to_vector2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnk_vector_sub1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnk_vector_length1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnk_matrix_to_vector3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnk_vector_sub2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnk_vector_length2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "foot_logic.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_IKFK_blend.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "invertVisibility.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnk_float_rescale1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mult_by_toes_Con.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "anckle_to_vector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toes_to_vector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "anckle_Z.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "anckle_X.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "anckle_Y.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "recompose_Anckle_Transform.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "endToe_to_vector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "gudToes_to_vector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "gudAnckle_to_vector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "gudAnckle_to_gudToes.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "anckleToes_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnk_vector_multiply_by_float1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fnk_vector_add1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toes_preY.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toes_Z.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toes_X.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toes_Y.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "recompose_Toes_Transform.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "norm_ankcle_X.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "norm_ankcle_Z.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "norm_toes_X.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "norm_toes_Z.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mirror_anckle_X.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mirror_bool_rescale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mirror_toes_X.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "anckle_Y_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "anckle_X_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "anckle_Z_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "anckle_multiply_length_X.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "anckle_multiply_length_Y.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "anckle_multiply_length_Z.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toes_Y_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toes_Z_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toes_X_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toes_multiply_length_Y.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toes_multiply_length_X.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toes_multiply_length_Z.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnk_float_multiply1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tibiaMatrixToVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "anckleMatrixToVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "femurMatrixToVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVectorPlan_Matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVector_Y.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVector_normY.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVector_X.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVector_preZ.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVector_normX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVector_Z.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVector_normZ.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of leg_v022.ma
