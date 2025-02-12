//Maya ASCII 2025ff03 scene
//Name: arm_FK_IK_v028.ma
//Last modified: Wed, Feb 12, 2025 12:31:18 PM
//Codeset: 1252
requires maya "2025ff03";
requires "stereoCamera" "10.0";
requires "mtoa" "5.4.2.1";
requires -nodeType "fnk_vector_sub" -nodeType "fnk_vector_crossProduct" -nodeType "fnk_vector_normalize"
		 -nodeType "fnk_vector_length" -nodeType "fnk_float_rescale" -nodeType "fnk_matrix_from_vector"
		 -nodeType "fnk_matrix_to_vector" -nodeType "fnk_rig_shape" -nodeType "fnk_rig_curve"
		 -nodeType "fnk_rig_2BonesIK" -nodeType "fnk_space_switch" -nodeType "fnk_twist_roll"
		 -nodeType "fnk_blend_two_chains" "Frankenstein" "1.2.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202407121012-8ed02f4c99";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "950AF29C-409B-1A7E-6E76-14AC64E645A8";
fileInfo "license" "education";
createNode transform -n "module";
	rename -uid "E4EB210C-4489-FDA3-C4C8-A3AC64743956";
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
	setAttr ".t" -type "double3" 2.809714165160921e-18 0 6.9388939039072284e-18 ;
	setAttr ".rig_objectType" 7;
createNode transform -n "setup" -p "module";
	rename -uid "705A6FDA-4521-A59B-EACE-F6ABD62A4006";
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
	addAttr -ci true -sn "blendIKFK" -ln "blendIKFK" -nn "Blend IK <===> FK" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "mirrorX" -ln "mirrorX" -nn "Mirror X" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "guideVisibility" -ln "guideVisibility" -nn "Guide Visibility" 
		-min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rig_objectType" 5;
	setAttr -k on ".blendIKFK";
	setAttr -k on ".mirrorX";
	setAttr -k on ".guideVisibility";
createNode transform -n "guid_GRP" -p "module";
	rename -uid "A0B46972-4FF1-79D3-FF48-F3A5B3F4BEF6";
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
createNode transform -n "humerus_GUID" -p "guid_GRP";
	rename -uid "F32DB6F2-4657-CB68-B8E4-FBB871A39C82";
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
	setAttr ".t" -type "double3" 1.2552152706517115 12.451671772532993 -0.3832383119281278 ;
createNode fnk_rig_shape -n "_humerus_GUIDShape" -p "humerus_GUID";
	rename -uid "A0E4F7B2-4B45-5CD1-9D5E-6486F8A04195";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.099999999999999978 0 0 0 0 0.099999999999999978 0 0
		 0 0 0.099999999999999978 0 0 0 0 1;
createNode transform -n "radius_GUID" -p "guid_GRP";
	rename -uid "844D1869-42F5-9B9C-F357-F1B14FDBA4EE";
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
	setAttr ".t" -type "double3" 3.2708003699779509 11.113436412811279 -0.48084586299955845 ;
createNode fnk_rig_shape -n "_radius_GUIDShape" -p "radius_GUID";
	rename -uid "E867BB67-4E5A-9481-5225-4889B963EC5F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.099999999999999978 0 0 0 0 0.099999999999999978 0 0
		 0 0 0.099999999999999978 0 0 0 0 1;
createNode transform -n "radius_BUF" -p "guid_GRP";
	rename -uid "BAD7F0FC-4182-A7DD-82F0-4F8FD29BF264";
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
createNode transform -n "upVector_GUID" -p "radius_BUF";
	rename -uid "AEB3CEC9-4870-AD54-9D76-039C511399BD";
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
	setAttr ".t" -type "double3" 0 7.7715611723760958e-16 3 ;
createNode fnk_rig_shape -n "_upVector_GUIDShape" -p "upVector_GUID";
	rename -uid "EB785986-416F-F533-51B9-2DA49F557332";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.099999999999999978 0 0 0 0 0.099999999999999978 0 0
		 0 0 0.099999999999999978 0 0 0 0 1;
createNode transform -n "wrist_GUID" -p "guid_GRP";
	rename -uid "7BAE3F35-45A8-0576-A809-869BBFA12B77";
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
	setAttr ".t" -type "double3" 4.835771136813694 9.627011484569973 0.37970115202996468 ;
createNode fnk_rig_shape -n "_wrist_GUIDShape" -p "wrist_GUID";
	rename -uid "7F42944E-46A9-17FE-1F98-078747B9544F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.099999999999999978 0 0 0 0 0.099999999999999978 0 0
		 0 0 0.099999999999999978 0 0 0 0 1;
createNode transform -n "controllers_GRP" -p "module";
	rename -uid "5B63409A-47AE-D41E-A307-96945ED8C558";
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
createNode transform -n "setupConMirror_BUF" -p "controllers_GRP";
	rename -uid "B37CD207-4B2C-5C49-68FB-CFB3A98D2379";
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
	setAttr ".t" -type "double3" -2.809714165160921e-18 0 -6.9388939039072284e-18 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "setup_CON" -p "setupConMirror_BUF";
	rename -uid "1CF5D2B9-4819-27D6-0A58-C6A84ACCE193";
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
	addAttr -ci true -sn "blendIKFK" -ln "blendIKFK" -nn "Blend IK <===> FK" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "IKUpVectorSpaceSwitch" -ln "IKUpVectorSpaceSwitch" -nn "IK UpVector Space Switch" 
		-min 0 -max 1 -en "world:wrist" -at "enum";
	addAttr -ci true -sn "IKWristControllerSpaceSwitch" -ln "IKWristControllerSpaceSwitch" 
		-nn "IK Wrist Controller Space Switch" -min 0 -max 2 -en "world:clavicle:head" -at "enum";
	addAttr -ci true -sn "torsionTangentVisibility" -ln "torsionTangentVisibility" -nn "Torsion Tangent Visibility" 
		-min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rig_objectType" 3;
	setAttr -k on ".blendIKFK";
	setAttr -k on ".IKUpVectorSpaceSwitch";
	setAttr -k on ".IKWristControllerSpaceSwitch";
	setAttr -k on ".torsionTangentVisibility" yes;
createNode fnk_rig_shape -n "_setup_CONShape" -p "setup_CON";
	rename -uid "74AEC88F-47ED-EB22-AB86-5EA1A6107090";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 1 ;
	setAttr ".shapeType" 13;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.19999999999999996 0 0 0 0 0 -0.19999999999999996 0
		 0 0.19999999999999996 0 0 0 0 0 1;
createNode transform -n "IK_GRP" -p "controllers_GRP";
	rename -uid "4A0CCE5C-4658-6031-1E1A-598E2BC4C48D";
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
createNode transform -n "armControllersTarget_IK_BUF" -p "IK_GRP";
	rename -uid "BEC4EFF5-46C4-FEF2-5C35-E1966DEFAB52";
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
createNode transform -n "wrist_IK_CON" -p "armControllersTarget_IK_BUF";
	rename -uid "35C76BFE-4BB1-AC8D-4EFA-C4883776A001";
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
	addAttr -ci true -sn "stretch" -ln "stretch" -nn "IK Stretch" -min 0 -max 1 -at "bool";
	setAttr ".opm" -type "matrix" 0.67321336456116265 -0.64013892930898664 0.37014310335244893 0
		 0.6401389293089863 0.75509528103468804 0.14160956091411997 0 -0.37014310335244943 0.14160956091411875 0.9181180835264755 0
		 5.0119748351562521e-09 -4.7657380264354288e-09 2.7556627535396676e-09 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
	setAttr -k on ".stretch";
createNode fnk_rig_shape -n "_wrist_IK_CONShape" -p "wrist_IK_CON";
	rename -uid "DFC9E5B5-44CF-8F6A-7604-0A878D691A75";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 33;
	setAttr ".wireWidth" 3;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0 -0.32327523518755896 0 0 0.22119988373262434 0 0 0
		 0 0 0.32327523518755896 0 0 0 0 1;
createNode transform -n "rootTarget_IN_IK_BUF" -p "IK_GRP";
	rename -uid "0B380EAF-40CF-F2E5-F83F-A1854773EAE3";
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
createNode transform -n "root_CON" -p "rootTarget_IN_IK_BUF";
	rename -uid "7DE712B2-4172-6832-EFFE-D99E7FDFE55E";
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
	setAttr ".opm" -type "matrix" 0.83270341570544604 -0.55226444761843496 -0.040112359307191689 0
		 0.52604691573330797 0.76639576443250446 0.36866268418079712 0 -0.17285735136221114 -0.3280876592568216 0.92869738016397052 0
		 -1.4876988529977098e-14 3.5527136788005009e-15 -1.7763568394002505e-15 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "_root_CONShape" -p "root_CON";
	rename -uid "68385C02-4A4E-61A2-D82B-608C5BFBCB4B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 25;
	setAttr ".wireWidth" 3;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 2 0 0 0 0 6.5358979295382369e-07 -1.9999999999998934 0
		 0 1.9999999999998934 6.5358979295382369e-07 0 0 0 0 1;
createNode transform -n "upVectorTarget_IK_BUF" -p "IK_GRP";
	rename -uid "B7B830DE-4488-BC34-E0E1-A2B980A8730E";
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
	rename -uid "887D171D-45EB-126C-3F0D-238D18249835";
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
	setAttr ".opm" -type "matrix" 0.99999999999999967 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "upVector_IK_CONShape" -p "upVector_IK_CON";
	rename -uid "41554911-462F-EC81-65E3-71AAA11A2442";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 39;
	setAttr ".wireWidth" 3;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.40000000000000002 0 0 0 0 0.40000000000000002 0 0
		 0 0 0.40000000000000002 0 0 0 0 1;
createNode transform -n "FK_GRP" -p "controllers_GRP";
	rename -uid "5C7CEBD3-447C-C5AA-ABDC-27B33348EE5C";
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
createNode transform -n "armControllersTarget_FK_BUF" -p "FK_GRP";
	rename -uid "E787F705-4CA8-0C52-20E9-9CA4C3D7F07B";
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
createNode transform -n "humerus_FK_CON" -p "armControllersTarget_FK_BUF";
	rename -uid "2ABB6F5A-4BCB-8CF2-5863-95AD69B1ADCA";
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
	setAttr ".opm" -type "matrix" 0.83241861338582357 -0.5526791662487851 -0.040311180624928479 0
		 0.52691079858244294 0.76688241136656865 0.36641012195872341 0 -0.17159330530658445 -0.32624700202629237 0.92957981434776027 0
		 -1.3322676295501935e-14 3.5655896618407535e-29 -8.2711615334574367e-15 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "humerus_FK_CONShape" -p "humerus_FK_CON";
	rename -uid "C0C862C5-40D9-A301-1C91-74828B04A671";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 32;
	setAttr ".wireWidth" 3;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 2.2875642753383828e-07 0.69999999999996265 0 0
		 -0.299999999999984 9.8038468943073551e-08 0 0 0 0 0.69999999999999996 0 0 0 0 1;
createNode transform -n "radius_FK_CON" -p "humerus_FK_CON";
	rename -uid "FD1B21F1-4C02-176F-290D-38A03AFD6FCC";
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
	setAttr ".opm" -type "matrix" 0.8992657243244907 4.538458597252944e-16 0.43740274010928054 0
		 -8.1965684239905553e-17 1.000000000000018 2.2204460492503515e-16 0 -0.43740274010928831 -1.4724432790068608e-16 0.89926572432450935 0
		 2.4213600158692419 9.4813046302988671e-14 4.7483030300169192e-14 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "_radius_FK_CONShape" -p "radius_FK_CON";
	rename -uid "7865623C-473E-2240-0C4B-F197D455D2C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 33;
	setAttr ".wireWidth" 3;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0 0.44999999999999996 0 0 -0.30000000000000004 0 0 0
		 0 0 0.44999999999999996 0 0 0 0 1;
createNode transform -n "wrist_FK_CON" -p "radius_FK_CON";
	rename -uid "89DE4C11-4D8A-27EB-8360-8A86604815EF";
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
	setAttr ".opm" -type "matrix" 0.99999984111258955 -0.00056371453926513254 -6.8183329630073868e-07 0
		 0.00054564770410282543 0.96825258086248067 -0.24997328241625266 0 0.00014157376057479906 0.24997324232661045 0.96825273460890404 0
		 2.3236036300666774 5.9326138550704567e-13 -1.6816233511207346e-13 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "_wrist_FK_CONShape" -p "wrist_FK_CON";
	rename -uid "44FF8563-43CF-B4D5-EEDF-49B069E1190F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 33;
	setAttr ".wireWidth" 3;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0 0.44999999999999996 0 0 -0.30000000000000004 0 0 0
		 0 0 0.44999999999999996 0 0 0 0 1;
createNode transform -n "radiusCompensate_BUF" -p "controllers_GRP";
	rename -uid "7DB1600F-4D78-1A63-AC3E-259B2C7E18F7";
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
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 1 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "radiusCompensate_CON" -p "radiusCompensate_BUF";
	rename -uid "BDD225EB-4563-4B8C-CB48-C6B44DB6DC1C";
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
	addAttr -ci true -sn "distTangentHumerus" -ln "distTangentHumerus" -nn "Distance Tangent Humerus" 
		-min 0 -max 1 -at "double";
	addAttr -ci true -sn "distTangentRadius" -ln "distTangentRadius" -nn "Distance Tangent Radius" 
		-min 0 -max 1 -at "double";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999978 1.0000000000000002 ;
	setAttr ".rig_objectType" 3;
	setAttr -k on ".distTangentHumerus" 0.1;
	setAttr -k on ".distTangentRadius" 0.1;
createNode fnk_rig_shape -n "radiusCompensate_CONShape" -p "radiusCompensate_CON";
	rename -uid "CA1A5579-4525-25FB-CD0E-3C8D4BCC4E28";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -2.2204460492503131e-16 -0.5 0 0 0.5 -2.2204460492503131e-16 0 0
		 0 0 0.5 0 0 0 0 1;
createNode transform -n "tangent_humerusLow_OUT_BUF" -p "radiusCompensate_CON";
	rename -uid "A8BAB4D3-4C9E-6B9E-CC6D-8A818FE11774";
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
	setAttr ".s" -type "double3" 1.0000000000000016 1.0000000000000009 1.0000000000000013 ;
	setAttr ".opm" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".rig_objectType" 1;
createNode transform -n "tangent_humerusLow_OUT_CON" -p "tangent_humerusLow_OUT_BUF";
	rename -uid "024EC087-477D-047A-2220-7B9B643AB8A5";
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
	setAttr ".opm" -type "matrix" 0.99999999999999634 0 0 0 0 1 0 0 0 0 0.99999999999999845 0
		 8.8817841970012523e-16 5.3290705182007514e-15 -8.8817841970012523e-16 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "tangent_humerusLow_OUT_CONShape" -p "tangent_humerusLow_OUT_CON";
	rename -uid "7C492DA8-4850-D16A-EF14-D98B0B29942B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".globalScale" 0.40000000596046448;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 3.2679489647691184e-07 0.99999999999994671 0 0
		 -0.99999999999994671 3.2679489647691184e-07 0 0 0 0 1 0 0 0 0 1;
createNode transform -n "tangent_radiusUp_IN_BUF" -p "radiusCompensate_CON";
	rename -uid "F670E09E-4AF2-DA8D-061D-F1858813D46C";
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
	setAttr ".s" -type "double3" 1.0000000000000016 1.0000000000000009 1.0000000000000013 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "tangent_radiusUp_IN_CON" -p "tangent_radiusUp_IN_BUF";
	rename -uid "4D9454D2-4DB6-10A4-0BFD-C6B906D62140";
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
	setAttr ".t" -type "double3" 8.8817841970012523e-16 3.5527136788005009e-15 -1.3322676295501878e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999623 0.99999999999999978 0.999999999999998 ;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "tangent_radiusUp_IN_CONShape" -p "tangent_radiusUp_IN_CON";
	rename -uid "A4E44B4F-4CEC-0E4D-DF9B-2EA9CFB06AAF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".globalScale" 0.40000000596046448;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 3.2679489647691184e-07 0.99999999999994671 0 0
		 -0.99999999999994671 3.2679489647691184e-07 0 0 0 0 1 0 0 0 0 1;
createNode transform -n "humerusRadiusTorsionMidCON_BUF" -p "controllers_GRP";
	rename -uid "7E5CE208-42FD-4082-F81A-D8A3BAA82425";
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
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 1 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "humerusRadiusTorsionMid_CON" -p "humerusRadiusTorsionMidCON_BUF";
	rename -uid "0A8C1C0F-4DCF-ABC2-6D2D-A6A2AD66EBA0";
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
	setAttr ".t" -type "double3" -1.2524703496552533e-15 0 9.4368957093138266e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999778 1.0000000000000002 0.99999999999999989 ;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "humerusRadiusTorsionMid_CONShape" -p "humerusRadiusTorsionMid_CON";
	rename -uid "CAF5DFDE-408C-EB23-44C6-1482965E8AEC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -2.2204460492503131e-16 -0.5 0 0 0.5 -2.2204460492503131e-16 0 0
		 0 0 0.5 0 0 0 0 1;
createNode transform -n "tangent_humerusUp_IN_CON" -p "humerusRadiusTorsionMid_CON";
	rename -uid "0781892F-4C14-39FE-838C-139C8F333911";
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
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 1.0000000000000002 ;
	setAttr ".opm" -type "matrix" -0.99999999999994005 0 3.4641020661939347e-07 0 0 1 0 0
		 3.4641020661939347e-07 0 0.99999999999994005 0 -0.29999999999999999 0 0 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "tangent_humerusUp_IN_CONShape" -p "tangent_humerusUp_IN_CON";
	rename -uid "7C3DD741-48D5-3C42-142B-E0A43DB93C0A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".globalScale" 0.40000000596046448;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 3.2679489647691184e-07 0.99999999999994671 0 0
		 -0.99999999999994671 3.2679489647691184e-07 0 0 0 0 1 0 0 0 0 1;
createNode transform -n "tangent_humerusLow_IN_CON" -p "humerusRadiusTorsionMid_CON";
	rename -uid "8CEDACF9-4709-186A-E2D5-D3BE054D0A1C";
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
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 1.0000000000000002 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.29999999999999999 0 0 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "tangent_humerusLow_IN_CONShape" -p "tangent_humerusLow_IN_CON";
	rename -uid "4A56786C-4DB6-7465-9C71-F38E6F44B8DB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".globalScale" 0.40000000596046448;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 3.2679489647691184e-07 0.99999999999994671 0 0
		 -0.99999999999994671 3.2679489647691184e-07 0 0 0 0 1 0 0 0 0 1;
createNode transform -n "humerusTorsionTangent_BUF" -p "humerusRadiusTorsionMidCON_BUF";
	rename -uid "06BEBB98-46BE-72F5-5F2F-4A9D5EB89F63";
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
createNode transform -n "tangent_humerusUp_OUT_CON" -p "humerusTorsionTangent_BUF";
	rename -uid "C217FD88-4252-053A-FFCD-8FB3C7139C3B";
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
	setAttr ".s" -type "double3" 0.99999999999999811 1.0000000000000007 1.0000000000000002 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.29999999999999999 0 0 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "tangent_humerusUp_OUT_CONShape" -p "tangent_humerusUp_OUT_CON";
	rename -uid "D1266CA5-429A-E1D2-7D31-6BA0C6EB7E50";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".globalScale" 0.40000000596046448;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 3.2679489647691184e-07 0.99999999999994671 0 0
		 -0.99999999999994671 3.2679489647691184e-07 0 0 0 0 1 0 0 0 0 1;
createNode transform -n "radiusWristTorsionMidCON_BUF" -p "controllers_GRP";
	rename -uid "96D4438B-49A0-1887-E05C-25B7195D2325";
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
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 1 ;
	setAttr ".rig_objectType" 5;
createNode transform -n "radiusWristTorsionMidMid_CON" -p "radiusWristTorsionMidCON_BUF";
	rename -uid "ED879794-4D8E-ED2D-9F8F-EAB994D53C8F";
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
	setAttr ".s" -type "double3" 0.99999999999999845 1.0000000000000011 1 ;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "radiusWristTorsionMidMid_CONShape" -p "radiusWristTorsionMidMid_CON";
	rename -uid "02653491-44F1-BA1D-AC50-EF8C9915CB68";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -2.2204460492503131e-16 -0.5 0 0 0.5 -2.2204460492503131e-16 0 0
		 0 0 0.5 0 0 0 0 1;
createNode transform -n "tangent_radiusLow_IN_CON" -p "radiusWristTorsionMidMid_CON";
	rename -uid "A1857503-4759-6771-4BDC-64BE9AE24BA6";
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
	setAttr ".opm" -type "matrix" 1.0000000000000011 0 0 0 0 1 0 0 0 0 1.0000000000000007 0
		 0.29999999999999999 1.7763568394002505e-15 0 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "tangent_radiusLow_IN_CONShape" -p "tangent_radiusLow_IN_CON";
	rename -uid "0290CCB3-4E7E-D02C-8089-3A9CC8D4A052";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".globalScale" 0.40000000596046448;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 3.2679489647691184e-07 0.99999999999994671 0 0
		 -0.99999999999994671 3.2679489647691184e-07 0 0 0 0 1 0 0 0 0 1;
createNode transform -n "tangent_radiusUp_OUT_CON" -p "radiusWristTorsionMidMid_CON";
	rename -uid "E78A47B9-4AEF-5422-F750-8288453BC4E3";
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
	setAttr ".opm" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 -0.29999999999999999 0 0 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "tangent_radiusUp_OUT_CONShape" -p "|module|controllers_GRP|radiusWristTorsionMidCON_BUF|radiusWristTorsionMidMid_CON|tangent_radiusUp_OUT_CON";
	rename -uid "DBB03894-44B5-818E-4507-A28BE0134525";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".globalScale" 0.40000000596046448;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 3.2679489647691184e-07 0.99999999999994671 0 0
		 -0.99999999999994671 3.2679489647691184e-07 0 0 0 0 1 0 0 0 0 1;
createNode transform -n "wristTorsionTangent_BUF" -p "radiusWristTorsionMidCON_BUF";
	rename -uid "DD44F155-41CD-5875-0FC0-37AACD94F3D7";
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
	setAttr ".rig_instance" 2;
	setAttr ".rig_objectType" 1;
createNode transform -n "tangent_radiusUp_OUT_CON" -p "wristTorsionTangent_BUF";
	rename -uid "99BCCE06-4A65-FF82-2509-DFBB696E586D";
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
	setAttr ".opm" -type "matrix" -1 0 0 0 0 1.0000000000000011 0 0 0 0 1.0000000000000009 0
		 -0.29999999999999999 -2.0452389781766583e-15 2.4286128663675339e-16 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "tangent_radiusUp_OUT_CONShape" -p "|module|controllers_GRP|radiusWristTorsionMidCON_BUF|wristTorsionTangent_BUF|tangent_radiusUp_OUT_CON";
	rename -uid "4D93F3D8-4BFA-9DBF-5159-42AFA6208210";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 1;
	setAttr ".globalScale" 0.40000000596046448;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 3.2679489647691184e-07 0.99999999999994671 0 0
		 -0.99999999999994671 3.2679489647691184e-07 0 0 0 0 1 0 0 0 0 1;
createNode transform -n "bones_GRP" -p "module";
	rename -uid "596BDC45-47F9-5F01-8486-1EA0355A48E1";
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
createNode transform -n "radiusWristTorsion_001_GRP" -p "bones_GRP";
	rename -uid "0D6919C8-4104-942A-8359-488D09ECA4B8";
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
	setAttr ".t" -type "double3" 0 0 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr ".rig_objectType" 5;
createNode transform -n "radiusWristTorsion_000_GRP" -p "bones_GRP";
	rename -uid "E099000F-4DC8-20A5-F9A1-94BDF4C01526";
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
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "humerusRadiusTorsion_001_GRP" -p "bones_GRP";
	rename -uid "D48AAC1C-4536-F58A-C99A-51A71F607A69";
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
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr ".rig_objectType" 5;
createNode transform -n "humerusRadiusTorsion_000_GRP" -p "bones_GRP";
	rename -uid "DB6DAEFD-45DF-6E95-A809-798E4D87E83E";
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
	setAttr ".t" -type "double3" -8.8817841970012523e-16 1.7763568394002505e-15 -8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".rig_objectType" 5;
createNode joint -n "humerus_JNT" -p "bones_GRP";
	rename -uid "349D34B2-4BA9-DDD5-1C62-7083CE79DED9";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 8.3266726846886741e-17 ;
	setAttr ".bps" -type "matrix" 0.83270341570544282 -0.55226444761843407 -0.040112359307192272 0
		 0.52604691573330897 0.76639576443250623 0.36866268418079795 0 -0.17285735136221056 -0.3280876592568221 0.92869738016396863 0
		 2.7674213375518253 11.448748483795997 -0.45608315915458536 1;
	setAttr ".radi" 0.1;
	setAttr ".rig_objectType" 8;
createNode joint -n "humerus_radius_twist_000_JNT" -p "bones_GRP";
	rename -uid "BA2A91E5-4186-BD15-1109-759D56EF3D3A";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 8.3266726846886741e-17 ;
	setAttr ".bps" -type "matrix" 0.83270341570544282 -0.55226444761843407 -0.040112359307192272 0
		 0.52604691573330897 0.76639576443250623 0.36866268418079795 0 -0.17285735136221056 -0.3280876592568221 0.92869738016396863 0
		 2.7674213375518253 11.448748483795997 -0.45608315915458536 1;
	setAttr ".radi" 0.1;
	setAttr ".rig_objectType" 8;
createNode joint -n "humerus_radius_twist_001_JNT" -p "bones_GRP";
	rename -uid "9F734763-4921-23D8-A322-679679AABE47";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 8.3266726846886741e-17 ;
	setAttr ".bps" -type "matrix" 0.83270341570544282 -0.55226444761843407 -0.040112359307192272 0
		 0.52604691573330897 0.76639576443250623 0.36866268418079795 0 -0.17285735136221056 -0.3280876592568221 0.92869738016396863 0
		 2.7674213375518253 11.448748483795997 -0.45608315915458536 1;
	setAttr ".radi" 0.1;
	setAttr ".rig_objectType" 8;
createNode joint -n "humerus_radius_twist_002_JNT" -p "bones_GRP";
	rename -uid "CD5BAE7B-4A45-9F53-2A6B-FCBC262C32B1";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 8.3266726846886741e-17 ;
	setAttr ".bps" -type "matrix" 0.83270341570544282 -0.55226444761843407 -0.040112359307192272 0
		 0.52604691573330897 0.76639576443250623 0.36866268418079795 0 -0.17285735136221056 -0.3280876592568221 0.92869738016396863 0
		 2.7674213375518253 11.448748483795997 -0.45608315915458536 1;
	setAttr ".radi" 0.1;
	setAttr ".rig_objectType" 8;
createNode joint -n "humerus_radius_twist_003_JNT" -p "bones_GRP";
	rename -uid "531CE37C-47B8-7C44-D870-2A84DF480A54";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 8.3266726846886741e-17 ;
	setAttr ".bps" -type "matrix" 0.83270341570544282 -0.55226444761843407 -0.040112359307192272 0
		 0.52604691573330897 0.76639576443250623 0.36866268418079795 0 -0.17285735136221056 -0.3280876592568221 0.92869738016396863 0
		 2.7674213375518253 11.448748483795997 -0.45608315915458536 1;
	setAttr ".radi" 0.1;
	setAttr ".rig_objectType" 8;
createNode joint -n "humerus_radius_twist_004_JNT" -p "bones_GRP";
	rename -uid "A3B96282-42F4-70B7-E3B6-1B93C673E258";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 8.3266726846886741e-17 ;
	setAttr ".bps" -type "matrix" 0.83270341570544282 -0.55226444761843407 -0.040112359307192272 0
		 0.52604691573330897 0.76639576443250623 0.36866268418079795 0 -0.17285735136221056 -0.3280876592568221 0.92869738016396863 0
		 2.7674213375518253 11.448748483795997 -0.45608315915458536 1;
	setAttr ".radi" 0.1;
	setAttr ".rig_objectType" 8;
createNode joint -n "radius_JNT" -p "bones_GRP";
	rename -uid "E4B98B8B-41ED-12DA-EBD1-FB9B1AEACC79";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 8.3266726846886741e-17 ;
	setAttr ".bps" -type "matrix" 0.83270341570544282 -0.55226444761843407 -0.040112359307192272 0
		 0.52604691573330897 0.76639576443250623 0.36866268418079795 0 -0.17285735136221056 -0.3280876592568221 0.92869738016396863 0
		 2.7674213375518253 11.448748483795997 -0.45608315915458536 1;
	setAttr ".radi" 0.1;
	setAttr ".rig_objectType" 8;
createNode joint -n "radius_wrist_twist_000_JNT" -p "bones_GRP";
	rename -uid "3F554DA3-4D7B-C21B-E036-F486BF007037";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 8.3266726846886741e-17 ;
	setAttr ".bps" -type "matrix" 0.83270341570544282 -0.55226444761843407 -0.040112359307192272 0
		 0.52604691573330897 0.76639576443250623 0.36866268418079795 0 -0.17285735136221056 -0.3280876592568221 0.92869738016396863 0
		 2.7674213375518253 11.448748483795997 -0.45608315915458536 1;
	setAttr ".radi" 0.1;
	setAttr ".rig_objectType" 8;
createNode joint -n "radius_wrist_twist_001_JNT" -p "bones_GRP";
	rename -uid "5F0A69E2-4849-B1AD-69BB-EDA34972957B";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 8.3266726846886741e-17 ;
	setAttr ".bps" -type "matrix" 0.83270341570544282 -0.55226444761843407 -0.040112359307192272 0
		 0.52604691573330897 0.76639576443250623 0.36866268418079795 0 -0.17285735136221056 -0.3280876592568221 0.92869738016396863 0
		 2.7674213375518253 11.448748483795997 -0.45608315915458536 1;
	setAttr ".radi" 0.1;
	setAttr ".rig_objectType" 8;
createNode joint -n "radius_wrist_twist_002_JNT" -p "bones_GRP";
	rename -uid "45FB129C-42B8-D9CD-421A-25A3049D9D73";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 8.3266726846886741e-17 ;
	setAttr ".bps" -type "matrix" 0.83270341570544282 -0.55226444761843407 -0.040112359307192272 0
		 0.52604691573330897 0.76639576443250623 0.36866268418079795 0 -0.17285735136221056 -0.3280876592568221 0.92869738016396863 0
		 2.7674213375518253 11.448748483795997 -0.45608315915458536 1;
	setAttr ".radi" 0.1;
	setAttr ".rig_objectType" 8;
createNode joint -n "radius_wrist_twist_003_JNT" -p "bones_GRP";
	rename -uid "8934A121-4088-CE9E-AB50-46BCF4EDB30B";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 8.3266726846886741e-17 ;
	setAttr ".bps" -type "matrix" 0.83270341570544282 -0.55226444761843407 -0.040112359307192272 0
		 0.52604691573330897 0.76639576443250623 0.36866268418079795 0 -0.17285735136221056 -0.3280876592568221 0.92869738016396863 0
		 2.7674213375518253 11.448748483795997 -0.45608315915458536 1;
	setAttr ".radi" 0.1;
	setAttr ".rig_objectType" 8;
createNode joint -n "radius_wrist_twist_004_JNT" -p "bones_GRP";
	rename -uid "CDF15A5B-428D-A316-3A80-3AAAC42DD4E4";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 8.3266726846886741e-17 ;
	setAttr ".bps" -type "matrix" 0.83270341570544282 -0.55226444761843407 -0.040112359307192272 0
		 0.52604691573330897 0.76639576443250623 0.36866268418079795 0 -0.17285735136221056 -0.3280876592568221 0.92869738016396863 0
		 2.7674213375518253 11.448748483795997 -0.45608315915458536 1;
	setAttr ".radi" 0.1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wrist_JNT" -p "bones_GRP";
	rename -uid "59B979FE-4502-4F1E-AF2F-69BC1FCB8041";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 8.3266726846886741e-17 ;
	setAttr ".bps" -type "matrix" 0.83270341570544282 -0.55226444761843407 -0.040112359307192272 0
		 0.52604691573330897 0.76639576443250623 0.36866268418079795 0 -0.17285735136221056 -0.3280876592568221 0.92869738016396863 0
		 2.7674213375518253 11.448748483795997 -0.45608315915458536 1;
	setAttr ".radi" 0.1;
	setAttr ".rig_objectType" 8;
createNode transform -n "algo_GRP" -p "module";
	rename -uid "8793A6A4-4C63-3F87-DC09-8A9C84C58B6D";
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
	rename -uid "B14AA4DF-4EFE-5324-2E8C-E1B4A95B0392";
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
	setAttr ".t" -type "double3" -2.809714165160921e-18 0 -6.9388939039072284e-18 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "root_IN_BUF" -p "mirrorCompensate_BUF";
	rename -uid "0A74A3E5-4833-E78B-BABA-FF9B9C651473";
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
	setAttr ".t" -type "double3" 1.2552152706516906 12.451671772533002 -0.38323831192812924 ;
	setAttr ".opm" -type "matrix" 1.0000000000000002 0 0 0 0 0.99999999999999978 0 0
		 0 0 1 0 2.1923489075987039e-16 1.7763568394002505e-15 -6.2450045135165055e-17 1;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "armControllers_IK_IN_BUF" -p "mirrorCompensate_BUF";
	rename -uid "2C4D24F9-401E-18FD-7B33-A6A2CCEEECF3";
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
	setAttr ".t" -type "double3" 4.835771036267638 9.6270115801762817 0.37970109674818858 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "upVector_IK_IN_BUF" -p "mirrorCompensate_BUF";
	rename -uid "5AC4CAD9-4F9C-A1D2-D507-31B1BFAE2C7A";
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
	setAttr ".t" -type "double3" 4.3218884267851703 11.703805406361266 -3.2279676928957119 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "armWrist_OUT_BUF" -p "algo_GRP";
	rename -uid "D246D4FD-489B-53BD-A21E-A9A3B675FF5F";
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
createNode fnk_matrix_from_vector -n "UpVectorPlan_Matrix";
	rename -uid "4CE96E38-4E94-9E82-D2C2-D9B60B564050";
createNode fnk_vector_normalize -n "UpVector_normY";
	rename -uid "FF2F7A42-48E4-6C28-9B4C-E49E851ACFAA";
createNode fnk_vector_crossProduct -n "UpVector_Y";
	rename -uid "BED8D50F-4858-C1A4-A7B4-B09377300EE4";
createNode fnk_vector_sub -n "UpVector_preY";
	rename -uid "C9810464-41BA-A289-9741-40BD145BD15A";
createNode fnk_matrix_to_vector -n "humerusMatrixToVector";
	rename -uid "C9120521-4D2C-885F-34C3-4CAAB19236F0";
createNode fnk_matrix_to_vector -n "radiusMatrixToVector";
	rename -uid "7D5A0819-4356-8A3C-E0BA-8781D6579582";
createNode fnk_vector_normalize -n "UpVector_normX";
	rename -uid "8E1B55AD-44E8-3050-E972-0A91D51E26AC";
createNode fnk_vector_sub -n "UpVector_X";
	rename -uid "0694B05E-4AE5-2116-9ADC-F88C4D35FB07";
createNode fnk_matrix_to_vector -n "wristMatrixToVector";
	rename -uid "A7D82A50-4F57-D963-E3CB-24B38782EBE2";
createNode fnk_vector_normalize -n "UpVector_normZ";
	rename -uid "CE877205-45B6-4DE1-0F00-2F9EA2028560";
createNode fnk_vector_crossProduct -n "UpVector_Z";
	rename -uid "0403D913-4BF5-623D-68E1-C2A04999A33D";
createNode fnk_float_rescale -n "rescale_Mirror";
	rename -uid "BDCD4F4B-41D7-A4C1-4175-DE811A93D0A9";
	setAttr ".oldMin" 1;
	setAttr ".oldMax" 0;
	setAttr ".newMin" -1;
createNode fnk_space_switch -n "setup_PAR";
	rename -uid "B02F0331-49A6-BC1D-C7E5-B6952B9B6F28";
	setAttr ".spaces[0].offset" -type "matrix" 1.0000000000000002 -1.2490009027033011e-16 1.1102230246251565e-16 0
		 4.8572257327350599e-16 1.0000000000000007 -2.4980018054066022e-16 0 2.7755575615628914e-16 2.4980018054066022e-16 1.0000000000000004 0
		 2.2204460492503131e-15 0.88631172368099342 -6.2450045135165055e-16 1;
createNode fnk_float_rescale -n "fnk_float_rescale2";
	rename -uid "1915C96C-4913-FEA2-6D1F-D3910CA7B8C1";
	setAttr ".newMin" 1;
	setAttr ".newMax" 0;
createNode fnk_space_switch -n "armControllersTarget_IK_PAR";
	rename -uid "6F385883-4C52-7D5F-FDA1-61A2B3AF9197";
	setAttr ".spaces[0].offset" -type "matrix" 0.99999999999999989 -2.6720324786611793e-16 -1.0538822502131576e-17 0
		 0 1 0 0 0 0 1 0 0 0 0 1;
createNode fnk_space_switch -n "rootTarget_IN_IK_PAR";
	rename -uid "6A46C570-43A3-414D-94C7-609CB2E20549";
	setAttr ".spaces[0].offset" -type "matrix" 0.99999999999999967 1.3824132696941276e-15 1.2963151449149134e-17 0
		 1.387778780781446e-17 1.0000000000000007 0 0 0 0 1 0 1.7319479184152442e-14 -5.3290705182007514e-15 1.6653345369377348e-15 1;
createNode fnk_space_switch -n "upVectorTarget_IK_PAR";
	rename -uid "A4F2EE2F-4DCF-4A93-3238-E7B0B803DC0B";
	setAttr ".spaces[0].offset" -type "matrix" 1 3.2484585594686664e-16 -8.9594101384974156e-17 0
		 0 1 0 0 0 0 1 0 0 0 0 1;
createNode fnk_space_switch -n "armControllersTarget_FK_PAR";
	rename -uid "B1B90307-48D5-ECED-2B4E-A1A2C5CEE987";
	setAttr ".spaces[0].offset" -type "matrix" 0.99999999999999933 1.3824132696941272e-15 1.2963151449149131e-17 0
		 1.3877787807814455e-17 1.0000000000000002 0 0 0 0 1 0 -2.2204460492503131e-16 1.7763568394002505e-15 0 1;
createNode fnk_blend_two_chains -n "fnk_blend_two_chains1";
	rename -uid "AF6FF35E-48F8-BB88-653C-5B915455531C";
	setAttr -s 3 ".chains";
	setAttr -s 3 ".transform";
createNode fnk_rig_2BonesIK -n "arm_logic";
	rename -uid "3A75D5AD-40E6-69D3-31E2-24AFE43406B7";
createNode fnk_vector_length -n "bone1Length";
	rename -uid "FFDF9D2A-47D0-D629-606A-1D86C0B65BDD";
createNode fnk_vector_sub -n "radiusHumerus_vector_sub";
	rename -uid "7D57C111-4D5B-5613-86AA-41B2340B2C87";
createNode fnk_vector_length -n "bone2Length";
	rename -uid "F81F0D15-43E6-CCC5-0625-8186722D0D37";
createNode fnk_vector_sub -n "wristRadius_vector_sub";
	rename -uid "C6034944-474C-42B1-85D6-8D96975C3443";
createNode fnk_float_rescale -n "negate_IKscale";
	rename -uid "A682F1A4-4F0B-D41A-D365-7286E377B34E";
	setAttr ".newMax" 2;
createNode fnk_twist_roll -n "humerusRadiusTorsion";
	rename -uid "68BF0C26-4A7F-5D5B-ABC4-8CA15B906A8E";
	setAttr -s 2 ".positionProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".rotationProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".scaleProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 3 ".transforms";
createNode fnk_space_switch -n "humerusTorsionTangent_PAR";
	rename -uid "C2C71171-4D52-99E1-B19E-D2AF418801B0";
	setAttr ".spaces[0].type" 6;
	setAttr ".spaces[0].offset" -type "matrix" 1.0000000000000009 -1.0581813203458523e-15 5.7592819402429996e-16 0
		 1.6167622796103842e-15 0.99999999999999889 3.3306690738754696e-16 0 -7.9103390504542404e-16 -2.7755575615628914e-16 1.0000000000000007 0
		 -2.3092638912203256e-14 -8.8817841970012523e-15 4.4408920985006262e-15 1;
createNode fnk_twist_roll -n "radiusWristTorsion";
	rename -uid "069E97BB-4B07-8F93-C793-58BC9139702B";
	setAttr -s 2 ".positionProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".rotationProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".scaleProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 3 ".transforms";
createNode fnk_space_switch -n "wristTorsionTangent_PAR";
	rename -uid "EA8C55AA-4E9B-2F43-1E2E-0890C5446189";
	setAttr ".spaces[0].type" 6;
	setAttr ".spaces[0].offset" -type "matrix" 1.0000000000000016 -3.4694469519536142e-17 1.6653345369377348e-16 0
		 -2.7755575615628914e-16 0.99999999999999889 2.2204460492503131e-16 0 2.7755575615628914e-16 -2.7755575615628914e-17 1 0
		 7.4448354148159979e-09 -1.4210854715202004e-14 -3.8441472227646045e-15 1;
createNode fnk_rig_curve -n "humerusMidHum_fnk_rig_curve";
	rename -uid "5B01F3F6-4FC5-1D4B-6586-108F82EFFE1F";
	setAttr ".restLength" 1.2106800079345703;
	setAttr ".restControllerDistance" 1.2106800079345703;
	setAttr ".defomerCount" 2;
	setAttr ".curveType" 1;
	setAttr ".tangentMode" 1;
	setAttr ".alignAxis" 0;
	setAttr ".distributionStart" 0.33300000429153442;
	setAttr ".distributionEnd" 0.66600000858306885;
	setAttr -s 2 ".distributionProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".twsitProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 4 ".rootTipAlignProfil[0:3]"  0 1 1 1 1 1 0.2 0 
		1 0.80000001 0 1;
	setAttr -s 2 ".scaleProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 3 ".stretchProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 3 ".squashProfil[0:2]"  0 0 2 1 0 2 0.5 1 2;
	setAttr -s 2 ".controllers";
	setAttr -s 2 ".proceduralWaveProfil[0:1]"  0 0 2 1 1 2;
	setAttr -s 2 ".transformers";
createNode fnk_rig_curve -n "midHumRadius_fnk_rig_curve";
	rename -uid "01F0F625-454F-09EC-9DA1-108C2CE8995B";
	setAttr ".restLength" 1.2122964859008789;
	setAttr ".restControllerDistance" 1.2106800079345703;
	setAttr ".defomerCount" 2;
	setAttr ".curveType" 1;
	setAttr ".tangentMode" 1;
	setAttr ".alignAxis" 0;
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
createNode fnk_rig_curve -n "radiusMidRad_fnk_rig_curve";
	rename -uid "00982E79-4FFC-15B6-9947-1D901E296D97";
	setAttr ".restLength" 1.161801815032959;
	setAttr ".restControllerDistance" 1.161801815032959;
	setAttr ".defomerCount" 2;
	setAttr ".curveType" 1;
	setAttr ".tangentMode" 1;
	setAttr ".alignAxis" 0;
	setAttr ".distributionStart" 0.33300000429153442;
	setAttr ".distributionEnd" 0.66600000858306885;
	setAttr -s 2 ".distributionProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".twsitProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 4 ".rootTipAlignProfil[0:3]"  0 1 1 1 1 1 0.2 0 
		1 0.80000001 0 1;
	setAttr -s 2 ".scaleProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 3 ".stretchProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 3 ".squashProfil[0:2]"  0 0 2 1 0 2 0.5 1 2;
	setAttr -s 2 ".controllers";
	setAttr -s 2 ".proceduralWaveProfil[0:1]"  0 0 2 1 1 2;
	setAttr -s 2 ".transformers";
createNode fnk_rig_curve -n "fnk_rig_curve1";
	rename -uid "641E8D4C-40CB-62A9-606D-4D9B5AB47292";
	setAttr ".restLength" 1.161801815032959;
	setAttr ".restControllerDistance" 1.161801815032959;
	setAttr ".defomerCount" 2;
	setAttr ".curveType" 1;
	setAttr ".tangentMode" 1;
	setAttr ".alignAxis" 0;
	setAttr ".distributionStart" 0.33300000429153442;
	setAttr ".distributionEnd" 0.66600000858306885;
	setAttr -s 2 ".distributionProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".twsitProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 4 ".rootTipAlignProfil[0:3]"  0 1 1 1 1 1 0.2 0 
		1 0.80000001 0 1;
	setAttr -s 2 ".scaleProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 3 ".stretchProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 3 ".squashProfil[0:2]"  0 0 2 1 0 2 0.5 1 2;
	setAttr -s 2 ".controllers";
	setAttr -s 2 ".proceduralWaveProfil[0:1]"  0 0 2 1 1 2;
	setAttr -s 2 ".transformers";
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
	setAttr -s 26 ".u";
select -ne :defaultRenderingList1;
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
	setAttr ".cfp" -type "string" "//srv-sto-02/dev/rez_packages/external/ocio_config/2.1.0/.ocio-2.3.0/ocio-config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 - SDR Video (sRGB - Display)";
	setAttr ".vn" -type "string" "ACES 1.0 - SDR Video";
	setAttr ".dn" -type "string" "sRGB - Display";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 - SDR Video (sRGB - Display)";
	setAttr ".potn" -type "string" "ACES 1.0 - SDR Video (sRGB - Display)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "setup_CON.blendIKFK" "setup.blendIKFK";
connectAttr "setup.guideVisibility" "guid_GRP.v";
connectAttr "UpVectorPlan_Matrix.result" "radius_BUF.opm";
connectAttr "rescale_Mirror.result" "setupConMirror_BUF.sx";
connectAttr "setup_PAR.transform" "setup_CON.opm";
connectAttr "fnk_float_rescale2.result" "IK_GRP.v";
connectAttr "armControllersTarget_IK_PAR.transform" "armControllersTarget_IK_BUF.opm"
		;
connectAttr "rootTarget_IN_IK_PAR.transform" "rootTarget_IN_IK_BUF.opm";
connectAttr "upVectorTarget_IK_PAR.transform" "upVectorTarget_IK_BUF.opm";
connectAttr "setup.blendIKFK" "FK_GRP.v";
connectAttr "armControllersTarget_FK_PAR.transform" "armControllersTarget_FK_BUF.opm"
		;
connectAttr "humerus_JNT.msg" "humerus_FK_CON.rig_guid";
connectAttr "radius_JNT.msg" "radius_FK_CON.rig_guid";
connectAttr "wrist_JNT.msg" "wrist_FK_CON.rig_guid";
connectAttr "fnk_blend_two_chains1.transform[1]" "radiusCompensate_BUF.opm";
connectAttr "radiusCompensate_CON.distTangentHumerus" "tangent_humerusLow_OUT_BUF.tx"
		;
connectAttr "setup_CON.torsionTangentVisibility" "tangent_humerusLow_OUT_CON.v";
connectAttr "radiusCompensate_CON.distTangentRadius" "tangent_radiusUp_IN_BUF.tx"
		;
connectAttr "setup_CON.torsionTangentVisibility" "tangent_radiusUp_IN_CON.v";
connectAttr "humerusRadiusTorsion.transforms[2]" "humerusRadiusTorsionMidCON_BUF.opm"
		;
connectAttr "setup_CON.torsionTangentVisibility" "tangent_humerusUp_IN_CON.v";
connectAttr "setup_CON.torsionTangentVisibility" "tangent_humerusLow_IN_CON.v";
connectAttr "humerusTorsionTangent_PAR.transform" "humerusTorsionTangent_BUF.opm"
		;
connectAttr "setup_CON.torsionTangentVisibility" "tangent_humerusUp_OUT_CON.v";
connectAttr "radiusWristTorsion.transforms[2]" "radiusWristTorsionMidCON_BUF.opm"
		;
connectAttr "setup_CON.torsionTangentVisibility" "tangent_radiusLow_IN_CON.v";
connectAttr "setup_CON.torsionTangentVisibility" "|module|controllers_GRP|radiusWristTorsionMidCON_BUF|radiusWristTorsionMidMid_CON|tangent_radiusUp_OUT_CON.v"
		;
connectAttr "wristTorsionTangent_PAR.transform" "wristTorsionTangent_BUF.opm";
connectAttr "setup_CON.torsionTangentVisibility" "|module|controllers_GRP|radiusWristTorsionMidCON_BUF|wristTorsionTangent_BUF|tangent_radiusUp_OUT_CON.v"
		;
connectAttr "radiusWristTorsion.transforms[1]" "radiusWristTorsion_001_GRP.opm";
connectAttr "radiusWristTorsion.transforms[0]" "radiusWristTorsion_000_GRP.opm";
connectAttr "humerusRadiusTorsion.transforms[1]" "humerusRadiusTorsion_001_GRP.opm"
		;
connectAttr "humerusRadiusTorsion.transforms[0]" "humerusRadiusTorsion_000_GRP.opm"
		;
connectAttr "fnk_blend_two_chains1.transform[0]" "humerus_JNT.opm";
connectAttr "humerusMidHum_fnk_rig_curve.transformers[0]" "humerus_radius_twist_000_JNT.opm"
		;
connectAttr "humerusMidHum_fnk_rig_curve.transformers[1]" "humerus_radius_twist_001_JNT.opm"
		;
connectAttr "humerusRadiusTorsionMid_CON.wm" "humerus_radius_twist_002_JNT.opm";
connectAttr "midHumRadius_fnk_rig_curve.transformers[0]" "humerus_radius_twist_003_JNT.opm"
		;
connectAttr "midHumRadius_fnk_rig_curve.transformers[1]" "humerus_radius_twist_004_JNT.opm"
		;
connectAttr "radiusCompensate_CON.wm" "radius_JNT.opm";
connectAttr "radiusMidRad_fnk_rig_curve.transformers[0]" "radius_wrist_twist_000_JNT.opm"
		;
connectAttr "radiusMidRad_fnk_rig_curve.transformers[1]" "radius_wrist_twist_001_JNT.opm"
		;
connectAttr "radiusWristTorsionMidMid_CON.wm" "radius_wrist_twist_002_JNT.opm";
connectAttr "fnk_rig_curve1.transformers[0]" "radius_wrist_twist_003_JNT.opm";
connectAttr "fnk_rig_curve1.transformers[1]" "radius_wrist_twist_004_JNT.opm";
connectAttr "fnk_blend_two_chains1.transform[2]" "wrist_JNT.opm";
connectAttr "rescale_Mirror.result" "mirrorCompensate_BUF.sx";
connectAttr "humerus_GUID.msg" "root_IN_BUF.rig_guid";
connectAttr "wrist_GUID.msg" "armControllers_IK_IN_BUF.rig_guid";
connectAttr "upVector_GUID.msg" "upVector_IK_IN_BUF.rig_guid";
connectAttr "fnk_blend_two_chains1.transform[2]" "armWrist_OUT_BUF.opm";
connectAttr "UpVector_normY.result" "UpVectorPlan_Matrix.axisY";
connectAttr "UpVector_normX.result" "UpVectorPlan_Matrix.axisX";
connectAttr "UpVector_normZ.result" "UpVectorPlan_Matrix.axisZ";
connectAttr "radiusMatrixToVector.position" "UpVectorPlan_Matrix.pos";
connectAttr "UpVector_Y.result" "UpVector_normY.vector";
connectAttr "UpVector_preY.result" "UpVector_Y.vectorA";
connectAttr "UpVector_normX.result" "UpVector_Y.vectorB";
connectAttr "humerusMatrixToVector.position" "UpVector_preY.vectorA";
connectAttr "radiusMatrixToVector.position" "UpVector_preY.vectorB";
connectAttr "humerus_GUID.wm" "humerusMatrixToVector.matrix";
connectAttr "radius_GUID.wm" "radiusMatrixToVector.matrix";
connectAttr "UpVector_X.result" "UpVector_normX.vector";
connectAttr "wristMatrixToVector.position" "UpVector_X.vectorA";
connectAttr "humerusMatrixToVector.position" "UpVector_X.vectorB";
connectAttr "wrist_GUID.wm" "wristMatrixToVector.matrix";
connectAttr "UpVector_Z.result" "UpVector_normZ.vector";
connectAttr "UpVector_normX.result" "UpVector_Z.vectorB";
connectAttr "UpVector_normY.result" "UpVector_Z.vectorA";
connectAttr "setup.mirrorX" "rescale_Mirror.floatX";
connectAttr "setupConMirror_BUF.wm" "setup_PAR.parentMatrix";
connectAttr "setupConMirror_BUF.wim" "setup_PAR.parentInverseMatrix";
connectAttr "wrist_JNT.wm" "setup_PAR.spaces[0].matrix";
connectAttr "setup.blendIKFK" "fnk_float_rescale2.floatX";
connectAttr "IK_GRP.wm" "armControllersTarget_IK_PAR.parentMatrix";
connectAttr "IK_GRP.wim" "armControllersTarget_IK_PAR.parentInverseMatrix";
connectAttr "armControllers_IK_IN_BUF.wm" "armControllersTarget_IK_PAR.spaces[0].matrix"
		;
connectAttr "IK_GRP.wm" "rootTarget_IN_IK_PAR.parentMatrix";
connectAttr "IK_GRP.wim" "rootTarget_IN_IK_PAR.parentInverseMatrix";
connectAttr "root_IN_BUF.wm" "rootTarget_IN_IK_PAR.spaces[0].matrix";
connectAttr "IK_GRP.wm" "upVectorTarget_IK_PAR.parentMatrix";
connectAttr "IK_GRP.wim" "upVectorTarget_IK_PAR.parentInverseMatrix";
connectAttr "upVector_IK_IN_BUF.wm" "upVectorTarget_IK_PAR.spaces[0].matrix";
connectAttr "FK_GRP.wm" "armControllersTarget_FK_PAR.parentMatrix";
connectAttr "FK_GRP.wim" "armControllersTarget_FK_PAR.parentInverseMatrix";
connectAttr "root_IN_BUF.wm" "armControllersTarget_FK_PAR.spaces[0].matrix";
connectAttr "arm_logic.bone1" "fnk_blend_two_chains1.chains[0].chain1Bone";
connectAttr "humerus_FK_CON.wm" "fnk_blend_two_chains1.chains[0].chain2Bone";
connectAttr "arm_logic.bone2" "fnk_blend_two_chains1.chains[1].chain1Bone";
connectAttr "radius_FK_CON.wm" "fnk_blend_two_chains1.chains[1].chain2Bone";
connectAttr "arm_logic.bone3" "fnk_blend_two_chains1.chains[2].chain1Bone";
connectAttr "wrist_FK_CON.wm" "fnk_blend_two_chains1.chains[2].chain2Bone";
connectAttr "setup.blendIKFK" "fnk_blend_two_chains1.blend";
connectAttr "root_CON.wm" "arm_logic.root";
connectAttr "upVector_IK_CON.wm" "arm_logic.upVector";
connectAttr "wrist_IK_CON.wm" "arm_logic.effector";
connectAttr "bone1Length.result" "arm_logic.bone1Length";
connectAttr "bone2Length.result" "arm_logic.bone2Length";
connectAttr "wrist_IK_CON.stretch" "arm_logic.stretch";
connectAttr "negate_IKscale.result" "arm_logic.negativeScale";
connectAttr "radiusHumerus_vector_sub.result" "bone1Length.vector";
connectAttr "humerusMatrixToVector.position" "radiusHumerus_vector_sub.vectorB";
connectAttr "radiusMatrixToVector.position" "radiusHumerus_vector_sub.vectorA";
connectAttr "wristRadius_vector_sub.result" "bone2Length.vector";
connectAttr "wristMatrixToVector.position" "wristRadius_vector_sub.vectorA";
connectAttr "radiusMatrixToVector.position" "wristRadius_vector_sub.vectorB";
connectAttr "setup.mirrorX" "negate_IKscale.floatX";
connectAttr "fnk_blend_two_chains1.transform[0]" "humerusRadiusTorsion.matrixA";
connectAttr "radiusCompensate_CON.wm" "humerusRadiusTorsion.matrixB";
connectAttr "humerusRadiusTorsionMidCON_BUF.wm" "humerusTorsionTangent_PAR.parentMatrix"
		;
connectAttr "humerusRadiusTorsionMidCON_BUF.wim" "humerusTorsionTangent_PAR.parentInverseMatrix"
		;
connectAttr "humerus_JNT.wm" "humerusTorsionTangent_PAR.spaces[0].matrix";
connectAttr "radiusCompensate_CON.wm" "radiusWristTorsion.matrixA";
connectAttr "fnk_blend_two_chains1.transform[2]" "radiusWristTorsion.matrixB";
connectAttr "radiusWristTorsionMidCON_BUF.wm" "wristTorsionTangent_PAR.parentMatrix"
		;
connectAttr "radiusWristTorsionMidCON_BUF.wim" "wristTorsionTangent_PAR.parentInverseMatrix"
		;
connectAttr "wrist_JNT.wm" "wristTorsionTangent_PAR.spaces[0].matrix";
connectAttr "fnk_blend_two_chains1.transform[0]" "humerusMidHum_fnk_rig_curve.controllers[0].ikController"
		;
connectAttr "tangent_humerusUp_OUT_CON.wm" "humerusMidHum_fnk_rig_curve.controllers[0].ikTangent0"
		;
connectAttr "tangent_humerusUp_IN_CON.wm" "humerusMidHum_fnk_rig_curve.controllers[0].ikTangent1"
		;
connectAttr "humerusRadiusTorsionMid_CON.wm" "humerusMidHum_fnk_rig_curve.controllers[1].ikController"
		;
connectAttr "humerusRadiusTorsionMid_CON.wm" "midHumRadius_fnk_rig_curve.controllers[0].ikController"
		;
connectAttr "tangent_humerusLow_IN_CON.wm" "midHumRadius_fnk_rig_curve.controllers[0].ikTangent0"
		;
connectAttr "tangent_humerusLow_OUT_CON.wm" "midHumRadius_fnk_rig_curve.controllers[0].ikTangent1"
		;
connectAttr "radiusCompensate_CON.wm" "midHumRadius_fnk_rig_curve.controllers[1].ikController"
		;
connectAttr "radiusCompensate_CON.wm" "radiusMidRad_fnk_rig_curve.controllers[0].ikController"
		;
connectAttr "tangent_radiusUp_IN_CON.wm" "radiusMidRad_fnk_rig_curve.controllers[0].ikTangent0"
		;
connectAttr "|module|controllers_GRP|radiusWristTorsionMidCON_BUF|radiusWristTorsionMidMid_CON|tangent_radiusUp_OUT_CON.wm" "radiusMidRad_fnk_rig_curve.controllers[0].ikTangent1"
		;
connectAttr "radiusWristTorsionMidMid_CON.wm" "radiusMidRad_fnk_rig_curve.controllers[1].ikController"
		;
connectAttr "radiusWristTorsionMidMid_CON.wm" "fnk_rig_curve1.controllers[0].ikController"
		;
connectAttr "tangent_radiusLow_IN_CON.wm" "fnk_rig_curve1.controllers[0].ikTangent0"
		;
connectAttr "|module|controllers_GRP|radiusWristTorsionMidCON_BUF|wristTorsionTangent_BUF|tangent_radiusUp_OUT_CON.wm" "fnk_rig_curve1.controllers[0].ikTangent1"
		;
connectAttr "fnk_blend_two_chains1.transform[2]" "fnk_rig_curve1.controllers[1].ikController"
		;
connectAttr "arm_logic.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "humerusMatrixToVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "radiusMatrixToVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bone1Length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "radiusHumerus_vector_sub.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wristMatrixToVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wristRadius_vector_sub.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bone2Length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnk_blend_two_chains1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "humerusRadiusTorsion.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "radiusWristTorsion.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnk_rig_curve1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "radiusMidRad_fnk_rig_curve.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "humerusMidHum_fnk_rig_curve.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "midHumRadius_fnk_rig_curve.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rescale_Mirror.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnk_float_rescale2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "negate_IKscale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVector_X.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVector_preY.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVector_normX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVector_Y.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVector_normY.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVector_normZ.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVectorPlan_Matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UpVector_Z.msg" ":defaultRenderUtilityList1.u" -na;
// End of arm_FK_IK_v028.ma
