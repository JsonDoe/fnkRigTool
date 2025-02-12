//Maya ASCII 2025ff03 scene
//Name: spine_v016.ma
//Last modified: Mon, Feb 10, 2025 11:50:08 AM
//Codeset: 1252
requires maya "2025ff03";
requires "stereoCamera" "10.0";
requires "mtoa" "5.4.2.1";
requires -nodeType "fnk_float_substract" -nodeType "fnk_rig_shape" -nodeType "fnk_rig_curve"
		 "Frankenstein" "1.2.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202407121012-8ed02f4c99";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "A1A9E244-48AB-61E1-8087-6C87E963BBF6";
fileInfo "license" "education";
createNode transform -n "module";
	rename -uid "69BA7A0C-49F8-17EB-AB9A-96B6A0694573";
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
	rename -uid "05D61FD1-4DBD-9CB5-D37E-24B2E5EE405B";
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
	addAttr -ci true -sn "spine_ikfkblend" -ln "spine_ikfkblend" -nn "Blend IK <=> FK" 
		-min 0 -max 1 -at "double";
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
	setAttr -k on ".spine_ikfkblend";
	setAttr -k on ".guideVisibility" yes;
createNode transform -n "guid_GRP" -p "module";
	rename -uid "31F099B2-4BE8-DF34-7106-E997855094FF";
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
createNode transform -n "hips_GUID" -p "guid_GRP";
	rename -uid "42CA3D1C-4212-F1F7-D8C3-DB97E58B4EF5";
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
	setAttr ".t" -type "double3" 0 7.9944027121295171 -0.54192372746320006 ;
createNode fnk_rig_shape -n "hips_GUIDShape" -p "hips_GUID";
	rename -uid "4C1F3DC0-44FD-AEA2-DA6E-94B57F167A76";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "hipsDepth_GUID" -p "guid_GRP";
	rename -uid "FCE41700-4143-2F30-9E12-AF80AABE42D8";
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
	setAttr ".t" -type "double3" 0 9.4895724007421176 -0.24312115588069094 ;
createNode fnk_rig_shape -n "hipsDepth_GUIDShape" -p "hipsDepth_GUID";
	rename -uid "788BB60B-4D2A-8F11-3228-CCACFFADE4CB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "toraxDepth_GUID" -p "guid_GRP";
	rename -uid "1DC37B3A-4E5C-7A42-AFED-F581145F74DE";
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
	setAttr ".t" -type "double3" 0 10.764842486933214 -0.34379080446926086 ;
createNode fnk_rig_shape -n "toraxDepth_GUIDShape" -p "toraxDepth_GUID";
	rename -uid "7FF65FF5-4BA6-13C9-5089-B1B78B4D9006";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "torax_GUID" -p "guid_GRP";
	rename -uid "1469B3E6-4354-2A53-9456-0D9A26D59F52";
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
	setAttr ".t" -type "double3" 0 11.954529066434533 -0.48157208397463147 ;
createNode fnk_rig_shape -n "torax_GUIDShape" -p "torax_GUID";
	rename -uid "291CACB8-4D1B-B4C4-DE29-29973B685EE2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "leftBreast_GUID" -p "guid_GRP";
	rename -uid "9C7F5B48-4285-3F7A-9A1A-4CA7B4F9227A";
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
	setAttr ".t" -type "double3" 0.58867163671047962 10.857899743144529 0.54454947537721243 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode fnk_rig_shape -n "leftBreast_GUIDShape" -p "leftBreast_GUID";
	rename -uid "D2133EDC-41CB-00CB-0F76-7F9D0E2A59C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "rightBreast_GUID" -p "guid_GRP";
	rename -uid "E49FC3EE-4C43-D0C9-5F24-AB8B7BB6D736";
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
	setAttr ".t" -type "double3" -0.58867163671047962 10.857899743144529 0.54454947537721243 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode fnk_rig_shape -n "rightBreast_GUIDShape" -p "rightBreast_GUID";
	rename -uid "8E116139-4DA1-98D8-1869-46BFF0C2DEC6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "pelvis_GUID" -p "guid_GRP";
	rename -uid "6F0EEFA2-489E-4541-6BC2-87B867AB12C4";
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
	setAttr ".t" -type "double3" 0 7.9944027121295171 -0.54192372746320006 ;
createNode fnk_rig_shape -n "pelvis_GUIDShape" -p "pelvis_GUID";
	rename -uid "6646C65C-4890-668A-1770-61B7281D00C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "upperBody_GUID" -p "guid_GRP";
	rename -uid "AF225F4C-42D4-8309-B2C0-859B4B799DB6";
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
	setAttr ".t" -type "double3" 0 7.9944027121295171 -0.11776958968281992 ;
createNode fnk_rig_shape -n "upperBody_GUIDShape" -p "upperBody_GUID";
	rename -uid "859E6EEB-410B-0AA8-D36D-3FAD31E06F87";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "controllers_GRP" -p "module";
	rename -uid "F248366C-44EE-2462-1DF9-EF90975C9B5D";
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
createNode transform -n "spineControllerTarget_IN_BUF" -p "controllers_GRP";
	rename -uid "C696BF76-4C47-1355-FA66-D6AAF8AD0410";
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
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "upperBody_FK_CON" -p "spineControllerTarget_IN_BUF";
	rename -uid "F5229985-4C0C-2E1C-3348-C9A54AC03895";
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
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "upperBody_FK_CONShape" -p "upperBody_FK_CON";
	rename -uid "2F3CA5A0-40C6-5366-E834-2482A25005E4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr ".shapeType" 1;
	setAttr ".wireWidth" 4;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 1.8276148963828598 0 0 0 0 1.8276148963828598 0 0
		 0 0 1.8276148963828598 0 0 0 0 1;
createNode transform -n "pelvis_CON" -p "upperBody_FK_CON";
	rename -uid "8CC760F8-4910-7EEA-C107-B5979EFADC15";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -0.42415413778038014 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "pelvis_CONShape" -p "pelvis_CON";
	rename -uid "F60AE0EA-4D12-6EFA-842D-0CA8714E1030";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 33;
	setAttr ".wireWidth" 3;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 1.2 0 0 0 0 0.80000000000000004 0 0 0 0 1.2 0
		 0 0 0.39400000000000002 1;
createNode transform -n "IK_GRP" -p "upperBody_FK_CON";
	rename -uid "134D7B24-49E7-919B-5FE3-F697FEBDCF63";
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
	setAttr ".t" -type "double3" 0 -7.9944027121295171 0.11776958968281992 ;
	setAttr ".rig_objectType" 5;
createNode transform -n "hips_IK_CON" -p "IK_GRP";
	rename -uid "8B8B8478-4D2F-4D79-65DE-28891A2ECB5D";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 7.9944027121295171 -0.54192372746320006 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "hips_IK_CONShape" -p "hips_IK_CON";
	rename -uid "62B0FE1B-4EEC-A7AF-2967-7A9C8FD8E325";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".wireWidth" 3;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 1.2 0 0 0 0 1 0 0 0 0 1.2 0 0 0 0.39368645650172118 1;
createNode transform -n "hipsDepth_IK_CON" -p "hips_IK_CON";
	rename -uid "B3E12A7D-40A3-6C97-76F6-6282BB4FD042";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.4951696886126005 0.29880257158250911 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "hipsDepth_IK_CONShape" -p "hipsDepth_IK_CON";
	rename -uid "EAD42DFB-4B4C-A560-27A0-F083BBF9C340";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".wireWidth" 3;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.20816010120023865 1;
createNode transform -n "hipsIKOut_BUF" -p "hips_IK_CON";
	rename -uid "6DE941E9-4445-6065-D2EF-35B7DA34C632";
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
createNode transform -n "torax_IK_CON" -p "IK_GRP";
	rename -uid "56AD295A-4F7B-93C8-F8A2-8C82A8FFB47E";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 11.954529066434533 -0.48157208397463147 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "torax_IK_CONShape" -p "torax_IK_CON";
	rename -uid "C178DBFC-4FAC-4160-4672-C7A1C74433C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr ".shapeType" 22;
	setAttr ".wireWidth" 4;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 5.6747467391815576e-08 0.17364857316123319 0.98480768327580837 0
		 -1.2411928880518015e-08 2.4620192081895245 -0.43412143290308297 0 -0.89999999999999858 4.4682943969864853e-09 5.1072720652634022e-08 0
		 0 -0.20000000000000001 0.17499999999999999 1;
createNode transform -n "toraxDepth_IK_CON" -p "torax_IK_CON";
	rename -uid "6BE17E3E-4AC8-3219-FDF9-04AA340C485C";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -1.1896865795013198 0.13778127950537061 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "toraxDepth_IK_CONShape" -p "toraxDepth_IK_CON";
	rename -uid "8D758490-4C1D-A0AA-F72B-A7AEFFD2215F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".lp" -type "double3" 0 0 5.5511151231257827e-17 ;
	setAttr ".wireWidth" 3;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -1.7763568394002505e-15 0.29006611588179931 1;
createNode transform -n "FK_GRP" -p "upperBody_FK_CON";
	rename -uid "78DD5EFD-4B13-9890-593D-288849F0B5C6";
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
	setAttr ".t" -type "double3" 0 -7.9944027121295171 0.11776958968281992 ;
	setAttr ".rig_objectType" 5;
createNode transform -n "hips_FK_CON" -p "FK_GRP";
	rename -uid "8E8B443A-4728-C5ED-F3C6-86A60DED6C32";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 7.9944027121295171 -0.54192372746320006 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "hips_FK_CONShape" -p "hips_FK_CON";
	rename -uid "D2FFF6B6-427C-9394-DB97-F4B0030D2D7B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 1;
	setAttr ".wireWidth" 3;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 1.4116353706180931 0 0 0 0 1.4116353706180931 0 0
		 0 0 1.4116353706180931 0 0 0 0.37279084003354951 1;
createNode transform -n "hipsDepth_FK_CON" -p "hips_FK_CON";
	rename -uid "D8234082-482A-D633-476E-9FB51F32FD8B";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.4951696886126005 0.29880257158250911 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "hipsDepth_FK_CONShape" -p "hipsDepth_FK_CON";
	rename -uid "B66C2190-481A-FCCC-42D2-06B2F49E0163";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 1;
	setAttr ".wireWidth" 3;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 1.2278942329101543 0 0 0 0 1.2278942329101543 0 0
		 0 0 1.2278942329101543 0 0 0 0.17943510994408007 1;
createNode transform -n "toraxDepth_FK_CON" -p "hipsDepth_FK_CON";
	rename -uid "5ACCBB33-4D78-1026-425B-32A55EC7C19A";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.2752700861910959 -0.10066964858856992 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "toraxDepth_FK_CONShape" -p "toraxDepth_FK_CON";
	rename -uid "7D89A3FD-44B3-8A55-A2EC-BFAD6370125A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".lp" -type "double3" 0 0 5.5511151231257827e-17 ;
	setAttr ".shapeType" 1;
	setAttr ".wireWidth" 3;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 1.2316641928304033 0 0 0 0 1.2316641928304033 0 0
		 0 0 1.2316641928304033 0 0 -5.846194188372511e-15 0.27898375766157912 1;
createNode transform -n "torax_FK_CON" -p "toraxDepth_FK_CON";
	rename -uid "0A905183-476F-9A6E-76EA-938FC8C5CE34";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.1896865795013198 -0.13778127950537061 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "torax_FK_CONShape" -p "torax_FK_CON";
	rename -uid "C1E7170E-4D52-4382-5C50-0AB221C4F148";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".lp" -type "double3" 0 0 5.5511151231257827e-17 ;
	setAttr ".shapeType" 22;
	setAttr ".wireWidth" 3;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 5.6747467391815576e-08 0.17364857316123319 0.98480768327580837 0
		 -1.2411928880518015e-08 2.4620192081895245 -0.43412143290308297 0 -0.89999999999999858 4.4682943969864853e-09 5.1072720652634022e-08 0
		 0 -0.20000000000000001 0.17499999999999999 1;
createNode transform -n "hipsFKOut_BUF" -p "hips_FK_CON";
	rename -uid "A5892DDD-4C51-C2CD-2425-34A9CD87A7A6";
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
createNode transform -n "setup_CON" -p "upperBody_FK_CON";
	rename -uid "702BE9C9-4FA2-2F9F-31F3-019691A1A194";
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
	addAttr -ci true -sn "breastControllersVisibility" -ln "breastControllersVisibility" 
		-nn "Breast Controllers Visibility" -min 0 -max 1 -at "bool";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.2387508383872117 1.7330749457755701e-07 1.9926108431253842 1;
	setAttr ".rig_objectType" 3;
	setAttr -k on ".blendIKFK" 1;
	setAttr -k on ".breastControllersVisibility" yes;
createNode fnk_rig_shape -n "setup_CONShape" -p "setup_CON";
	rename -uid "DB7DAB14-4CD6-19CE-06BA-5690074E8036";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 1 ;
	setAttr ".shapeType" 13;
	setAttr ".globalScale" 0.20000000298023224;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "breasts_IN_BUF" -p "controllers_GRP";
	rename -uid "D243530E-46C2-412A-1B78-4482FE285B3C";
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
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "leftBreast_FK_CON" -p "breasts_IN_BUF";
	rename -uid "A8C8808E-41E8-6AEA-DD74-B4AF2DE88FE9";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 0.9939868575659051 0.10949943829196968 0
		 0 -0.10949943829196972 0.99398685756590544 0 0.58867163671048317 -1.2023948693399635 0.89987104934600781 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "leftBreast_FK_CONShape" -p "leftBreast_FK_CON";
	rename -uid "876C61EF-4EAE-76AA-198B-EEADE5171FD6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 32;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -0.67334669223433086 0 -2.3325416678339367e-07 0
		 -5.1512453500099767e-08 0.28514618022260502 0.14870362511198826 0 2.0681992048563652e-07 0.31135488571039688 -0.59703760609126777 0
		 0 0 0 1;
createNode transform -n "rightBreast_FK_CON" -p "breasts_IN_BUF";
	rename -uid "877C78AA-476F-1C3D-EA55-48B97A924283";
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
	setAttr ".opm" -type "matrix" -1 1.224646799147353e-16 -1.5407439555097887e-33 0
		 1.2172828235126215e-16 0.9939868575659051 0.10949943829196984 0 -1.3409813661269401e-17 -0.10949943829196986 0.99398685756590521 0
		 -0.58867163671047473 -1.2023948693399653 0.89987104934600959 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "rightBreast_FK_CONShape" -p "rightBreast_FK_CON";
	rename -uid "A457677E-4D78-50E6-8A2A-89A462F18A79";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".shapeType" 32;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -0.67334669223433086 0 -2.3325416678339367e-07 0
		 -5.1512453500099767e-08 0.28514618022260502 0.14870362511198826 0 2.0681992048563652e-07 0.31135488571039688 -0.59703760609126777 0
		 0 0 0 1;
createNode transform -n "bones_GRP" -p "module";
	rename -uid "3A69F3EE-493E-9A6D-68C3-40B6451548AF";
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
createNode transform -n "spine001_JNT_BUF" -p "bones_GRP";
	rename -uid "4C242F36-4C9E-62FC-97C3-A5AFE2D5A69C";
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
	setAttr ".t" -type "double3" 0 7.9944027121295171 -0.5419237274632005 ;
	setAttr ".rig_objectType" 1;
createNode joint -n "spine001_JNT" -p "spine001_JNT_BUF";
	rename -uid "FA8429BA-4C2C-931E-ABE3-879900F66590";
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
	setAttr ".t" -type "double3" 0 -15.566572269771246 3.807683281255736 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 0.985208195791063 0.17136163790685036 0 0 -0.17136163790685036 0.985208195791063 0
		 0 7.9944027121295171 -0.54192372746320006 1;
	setAttr ".jo" -type "double3" 1.5902773407317584e-15 0 0 ;
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "spine002_JNT" -p "bones_GRP";
	rename -uid "095ACEF4-49A4-BD9C-3A84-289B262000A2";
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
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 2.2204460492503131e-16 ;
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "spine003_JNT" -p "bones_GRP";
	rename -uid "A14CCF35-4BA7-D2BE-12F0-72B344F8FE42";
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
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".jo" -type "double3" 3.975693351829396e-16 0 0 ;
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "spine004_JNT" -p "bones_GRP";
	rename -uid "7D98C6BE-42CA-C5A2-90BE-5DA3020C79AF";
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
	setAttr ".t" -type "double3" 0 0 -2.7755575615628914e-17 ;
	setAttr ".jo" -type "double3" -3.975693351829396e-16 0 0 ;
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "spine005_JNT" -p "bones_GRP";
	rename -uid "93062DEF-408A-5F63-78B9-2282EDA0CC6C";
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
	setAttr ".t" -type "double3" 0 0 -3.3306690738754696e-16 ;
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "spine006_JNT" -p "bones_GRP";
	rename -uid "CA8ADACE-4967-5DDE-8874-39AA64B9D404";
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
	setAttr ".jo" -type "double3" 7.9513867036587939e-16 0 0 ;
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "spine007_JNT" -p "bones_GRP";
	rename -uid "01D29E3F-43B5-AA2D-7606-4EA43E473A8C";
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
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 1.1102230246251565e-16 ;
	setAttr ".jo" -type "double3" 7.9513867036587919e-16 0 0 ;
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "spine008_JNT" -p "bones_GRP";
	rename -uid "7E7E56A8-4EED-C6BF-ABB1-6A985265ADB6";
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
	setAttr ".t" -type "double3" 0 0 5.5511151231257827e-17 ;
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "spine009_JNT" -p "bones_GRP";
	rename -uid "5EBE62A2-4A1D-01D7-F2EF-6EB8FDDEEFDA";
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
createNode joint -n "spine010_JNT" -p "bones_GRP";
	rename -uid "55F6F9FB-4640-9CC4-41A0-979E959E8753";
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
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 2.2204460492503131e-16 ;
	setAttr ".jo" -type "double3" -7.9513867036587919e-16 0 0 ;
	setAttr ".radi" 0.2;
	setAttr ".rig_objectType" 8;
createNode joint -n "upperbody_JNT" -p "bones_GRP";
	rename -uid "73085386-4A32-588A-1E2C-47AFCD0ACF3F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.3;
createNode joint -n "leftBreast_JNT" -p "bones_GRP";
	rename -uid "7CBA7C0A-42F2-1353-68D5-D1992DE085D3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.2;
createNode joint -n "rightBreast_JNT" -p "bones_GRP";
	rename -uid "736A7C19-45BA-E1EE-FC23-ABADEA85B136";
	setAttr ".radi" 0.2;
createNode transform -n "algo_GRP" -p "module";
	rename -uid "6C0F630B-4AD4-8416-293C-E2814FE9F600";
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
createNode transform -n "hips_OUT_BUF" -p "algo_GRP";
	rename -uid "866A25DC-4309-14AB-E55E-13966CB432B2";
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
createNode transform -n "spineNeck_OUT_BUF" -p "algo_GRP";
	rename -uid "817CD4B8-4904-D0D5-6E5F-1A8703E5E556";
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
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999989 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "spineController_IN_BUF" -p "algo_GRP";
	rename -uid "AC2157C9-41E1-7DA0-DB58-F28E0009A783";
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
	setAttr ".t" -type "double3" 0 0 0.42415413778038014 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 7.9944027121295171 -0.54192372746320006 1;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode fnk_float_substract -n "fnk_float_substract4";
	rename -uid "BDB85F89-4396-FB80-A0D3-7E96227BB8D3";
	setAttr ".floatA" 1;
createNode fnk_rig_curve -n "spineLogic";
	rename -uid "C9116103-41BA-73B7-D890-58952FDC61A0";
	setAttr ".editMode" 1;
	setAttr ".restLength" 5.5865535736083984;
	setAttr ".restControllerDistance" 5.5590391159057617;
	setAttr ".subCurveResolution" 8;
	setAttr -s 2 ".distributionProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".twsitProfil[0:1]"  0 0 1 1 1 1;
	setAttr -s 4 ".rootTipAlignProfil[0:3]"  0 1 1 0.2 0 1 0.80000001
		 0 1 1 1 1;
	setAttr -s 2 ".scaleProfil[0:1]"  0 0 1 1 1 1;
	setAttr ".stretchable" 1;
	setAttr -s 3 ".stretchProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 3 ".squashProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 4 ".controllers";
	setAttr -s 2 ".proceduralWaveProfil[0:1]"  0 0 2 1 1 2;
	setAttr -s 9 ".transformers";
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
	setAttr -s 2 ".u";
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
connectAttr "setup_CON.blendIKFK" "setup.spine_ikfkblend";
connectAttr "setup.guideVisibility" "guid_GRP.v";
connectAttr "spineController_IN_BUF.wm" "spineControllerTarget_IN_BUF.opm";
connectAttr "upperBody_GUID.msg" "upperBody_FK_CON.rig_guid";
connectAttr "pelvis_GUID.msg" "pelvis_CON.rig_guid";
connectAttr "fnk_float_substract4.result" "IK_GRP.v";
connectAttr "hips_GUID.msg" "hips_IK_CON.rig_guid";
connectAttr "hipsDepth_GUID.msg" "hipsDepth_IK_CON.rig_guid";
connectAttr "torax_GUID.msg" "torax_IK_CON.rig_guid";
connectAttr "toraxDepth_GUID.msg" "toraxDepth_IK_CON.rig_guid";
connectAttr "setup.spine_ikfkblend" "FK_GRP.v";
connectAttr "hips_GUID.msg" "hips_FK_CON.rig_guid";
connectAttr "hipsDepth_GUID.msg" "hipsDepth_FK_CON.rig_guid";
connectAttr "toraxDepth_GUID.msg" "toraxDepth_FK_CON.rig_guid";
connectAttr "torax_GUID.msg" "torax_FK_CON.rig_guid";
connectAttr "spineNeck_OUT_BUF.wm" "breasts_IN_BUF.opm";
connectAttr "setup_CON.breastControllersVisibility" "breasts_IN_BUF.v";
connectAttr "pelvis_CON.wm" "spine001_JNT_BUF.opm";
connectAttr "spineLogic.transformers[1]" "spine002_JNT.opm";
connectAttr "spineLogic.transformers[2]" "spine003_JNT.opm";
connectAttr "spineLogic.transformers[3]" "spine004_JNT.opm";
connectAttr "spineLogic.transformers[4]" "spine005_JNT.opm";
connectAttr "spineLogic.transformers[5]" "spine006_JNT.opm";
connectAttr "spineLogic.transformers[6]" "spine007_JNT.opm";
connectAttr "spineLogic.transformers[7]" "spine008_JNT.opm";
connectAttr "spineLogic.transformers[8]" "spine009_JNT.opm";
connectAttr "spineLogic.transformers[9]" "spine010_JNT.opm";
connectAttr "upperBody_FK_CON.wm" "upperbody_JNT.opm";
connectAttr "leftBreast_FK_CON.wm" "leftBreast_JNT.opm";
connectAttr "rightBreast_FK_CON.wm" "rightBreast_JNT.opm";
connectAttr "spine001_JNT.wm" "hips_OUT_BUF.opm";
connectAttr "spineLogic.transformers[9]" "spineNeck_OUT_BUF.opm";
connectAttr "upperBody_GUID.msg" "spineController_IN_BUF.rig_guid";
connectAttr "setup.spine_ikfkblend" "fnk_float_substract4.floatB";
connectAttr "hips_IK_CON.wm" "spineLogic.controllers[0].ikController";
connectAttr "hips_FK_CON.wm" "spineLogic.controllers[0].fkController";
connectAttr "hipsDepth_IK_CON.wm" "spineLogic.controllers[1].ikController";
connectAttr "hipsDepth_FK_CON.wm" "spineLogic.controllers[1].fkController";
connectAttr "toraxDepth_IK_CON.wm" "spineLogic.controllers[2].ikController";
connectAttr "toraxDepth_FK_CON.wm" "spineLogic.controllers[2].fkController";
connectAttr "torax_IK_CON.wm" "spineLogic.controllers[3].ikController";
connectAttr "torax_FK_CON.wm" "spineLogic.controllers[3].fkController";
connectAttr "fnk_float_substract4.result" "spineLogic.fkIkBlend";
connectAttr "spineLogic.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fnk_float_substract4.msg" ":defaultRenderUtilityList1.u" -na;
// End of spine_v016.ma
