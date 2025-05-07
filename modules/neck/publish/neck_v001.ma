//Maya ASCII 2025ff03 scene
//Name: neck_v001.ma
//Last modified: Tue, May 06, 2025 12:50:46 PM
//Codeset: 1252
requires maya "2025ff03";
requires "stereoCamera" "10.0";
requires -nodeType "fnk_rig_shape" "Frankenstein" "1.2.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202407121012-8ed02f4c99";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "E052532D-43C3-B6EC-F4F4-839C12A8E735";
fileInfo "license" "education";
createNode transform -n "module";
	rename -uid "38F95FB5-4098-DDD3-7DD0-E3BEB903210D";
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
	rename -uid "143E50E6-4C4C-6AC4-BC5A-0EAD810653B7";
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
	addAttr -ci true -k true -sn "Guides_Visibility" -ln "Guides_Visibility" -nn "Guides Visibility" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "Joints_Visibility" -ln "Joints_Visibility" -nn "Joints Visibility" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "Controllers_Visibility" -ln "Controllers_Visibility" 
		-nn "Controllers Visibility" -min 0 -max 1 -at "bool";
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
	setAttr -k on ".Guides_Visibility";
	setAttr -k on ".Joints_Visibility" yes;
	setAttr -k on ".Controllers_Visibility" yes;
createNode transform -n "guid_GRP" -p "module";
	rename -uid "8A484FE5-45CE-937F-D48A-D793D06AF7F7";
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
createNode transform -n "baseNeck_GUID" -p "guid_GRP";
	rename -uid "8AD9A977-45AA-D88F-C97B-769ED20A187B";
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
	setAttr ".t" -type "double3" -0.00041354240966027936 13.094085205685012 -0.47011370454476081 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode fnk_rig_shape -n "baseNeck_GUIDShape" -p "baseNeck_GUID";
	rename -uid "832FADBB-4892-39E3-8B06-58ABC380E43F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 0 ;
	setAttr ".shapeType" 31;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.19999999999999996 0 0 0 0 0.19999999999999996 0 0
		 0 0 0.19999999999999996 0 0 0 0 1;
createNode transform -n "neck_GUID" -p "guid_GRP";
	rename -uid "2E3C1195-4B35-6E14-DA54-3E9386AC1FF9";
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
	setAttr ".t" -type "double3" 9.9268353672890371e-05 13.437299901788888 -0.42180878122813825 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode fnk_rig_shape -n "neck_GUIDShape" -p "neck_GUID";
	rename -uid "3DE1CB84-4B3E-8F1B-0FB5-0D9AC000564F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 0 ;
	setAttr ".shapeType" 31;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.19999999999999996 0 0 0 0 0.19999999999999996 0 0
		 0 0 0.19999999999999996 0 0 0 0 1;
createNode transform -n "topNeck_GUID" -p "guid_GRP";
	rename -uid "C3EDC157-4EB9-0C10-22AA-EF9B621F34F9";
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
	setAttr ".t" -type "double3" 2.6670084723337448e-06 13.816285523501312 -0.3488079734420742 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode fnk_rig_shape -n "topNeck_GUIDShape" -p "topNeck_GUID";
	rename -uid "ADED3604-4B1B-AB21-AF08-2ABFCA7265CB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 0 ;
	setAttr ".shapeType" 31;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.19999999999999996 0 0 0 0 0.19999999999999996 0 0
		 0 0 0.19999999999999996 0 0 0 0 1;
createNode transform -n "controllers_GRP" -p "module";
	rename -uid "15DB789E-48C4-1831-4169-2EB77995FE7E";
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
createNode transform -n "IK_GRP" -p "controllers_GRP";
	rename -uid "4B1CE6FC-4728-55FB-9C82-D7A52C2CF2AC";
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
createNode transform -n "FK_GRP" -p "controllers_GRP";
	rename -uid "DAA4DA76-4C1D-C5E5-9153-C3B1DE946F26";
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
createNode transform -n "baseNeck_target_BUF" -p "FK_GRP";
	rename -uid "B55C56B1-4594-67D1-CA53-93B85CEC404B";
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
	setAttr ".t" -type "double3" -1.0842021724855044e-19 -3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "baseNeck_CON" -p "baseNeck_target_BUF";
	rename -uid "C5CEFABA-4080-61D0-20A8-439DAF87DD59";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1.0000000000000002 0 0 0 0 1 0 -2.6562953225894859e-18 3.5527136788005009e-15 -5.5511151231257827e-17 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "baseNeck_CONShape" -p "baseNeck_CON";
	rename -uid "E8FF9DC2-442D-D302-38FE-5F93A36BB797";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 0 ;
	setAttr ".shapeType" 25;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
createNode transform -n "neck_CON" -p "baseNeck_CON";
	rename -uid "1B98A96F-4735-D5B4-209E-68B9A16AA864";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00051281076333316972 0.34321469610387645 0.048304923316622561 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "neck_CONShape" -p "neck_CON";
	rename -uid "999A395B-420D-1210-74AE-B7AD9BE2D5D2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 0 ;
	setAttr ".shapeType" 25;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
createNode transform -n "topNeck_CON" -p "neck_CON";
	rename -uid "67F8CAA8-4D34-7643-C62E-2BA740B9ACB9";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -9.6601345200556622e-05 0.37898562171242389 0.073000807786064048 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "topNeck_CONShape" -p "topNeck_CON";
	rename -uid "3EE27226-4AD7-EA8E-6C1A-EAB86F1EB266";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 0 ;
	setAttr ".shapeType" 25;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
createNode transform -n "bones_GRP" -p "module";
	rename -uid "19A074CB-482D-FE02-A65C-62BE81D925A9";
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
createNode joint -n "baseNeck_JNT" -p "bones_GRP";
	rename -uid "1C9607DF-4E73-6832-7970-3AB8B4CDE201";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 -0.00041354240966027367 13.09408520568501 -0.47011370454476098 1;
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "neck_JNT" -p "bones_GRP";
	rename -uid "18B6042D-41A2-0CF0-57DA-72908119D44A";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 9.9268353672896036e-05 13.437299901788887 -0.42180878122813842 1;
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "topNeck_JNT" -p "bones_GRP";
	rename -uid "7F2A6DDC-4380-16B5-40FB-F8A2C827189B";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 2.6670084723394182e-06 13.81628552350131 -0.34880797344207437 1;
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode transform -n "algo_GRP" -p "module";
	rename -uid "3897270E-4CCE-E6E9-C59B-F2AE0B6567A7";
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
createNode transform -n "baseNeck_RT_IN_BUF" -p "algo_GRP";
	rename -uid "F6276151-438D-5B08-C929-9286123267A3";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1.0000000000000007 0 0 0 0 1 0 -0.00041354240966027936 13.094085205685012 -0.47011370454476081 1;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "topNeck_OUT_BUF" -p "algo_GRP";
	rename -uid "0A7F92D8-4CC8-7279-0287-BFB05460CD78";
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
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr ".rig_objectType" 1;
select -ne :time1;
	setAttr ".o" 3;
	setAttr ".unw" 3;
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
	setAttr -s 20 ".u";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "setup.Guides_Visibility" "guid_GRP.v";
connectAttr "setup.Controllers_Visibility" "controllers_GRP.v";
connectAttr "baseNeck_RT_IN_BUF.wm" "baseNeck_target_BUF.opm";
connectAttr "neck_GUID.msg" "neck_CON.rig_guid";
connectAttr "topNeck_GUID.msg" "topNeck_CON.rig_guid";
connectAttr "setup.Joints_Visibility" "bones_GRP.v";
connectAttr "baseNeck_CON.wm" "baseNeck_JNT.opm";
connectAttr "neck_CON.wm" "neck_JNT.opm";
connectAttr "topNeck_CON.wm" "topNeck_JNT.opm";
connectAttr "baseNeck_GUID.msg" "baseNeck_RT_IN_BUF.rig_guid";
connectAttr "topNeck_JNT.wm" "topNeck_OUT_BUF.opm";
// End of neck_v001.ma
