//Maya ASCII 2025ff03 scene
//Name: base_FK_component_v001.ma
//Last modified: Mon, Mar 03, 2025 03:30:45 PM
//Codeset: 1252
requires maya "2025ff03";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.4.2.1";
requires -nodeType "fnk_rig_shape" "Frankenstein" "1.2.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202407121012-8ed02f4c99";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "820EA650-4335-9278-22FA-90862B686F74";
fileInfo "license" "education";
createNode transform -n "module";
	rename -uid "48EF412A-4BAB-7947-0294-33889DCF35D2";
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
	rename -uid "272EA3C7-4F65-ED5F-4C90-C6992B3947E3";
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
	addAttr -ci true -sn "guideVisibility" -ln "guideVisibility" -nn "Guide Visibility" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "jointVisibility" -ln "jointVisibility" -nn "Joint Visibility" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "controllerVisibility" -ln "controllerVisibility" -nn "Controller Visibility" 
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
	setAttr -k on ".guideVisibility" yes;
	setAttr -k on ".jointVisibility" yes;
	setAttr -k on ".controllerVisibility" yes;
createNode transform -n "guid_GRP" -p "module";
	rename -uid "7DD838E5-442E-BB55-BE3B-37B52A3651A2";
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
createNode transform -n "object_entry_GUID" -p "guid_GRP";
	rename -uid "C259F181-4CD6-9294-733F-F882AB533E7A";
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
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "object_entry_GUIDShape" -p "object_entry_GUID";
	rename -uid "754ED59B-4E8E-8710-80CC-019B2F1F8B37";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "object_mid_GUID" -p "guid_GRP";
	rename -uid "57636BC6-40A6-AF5E-8B05-E9899F086679";
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
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "object_mid_GUIDShape" -p "object_mid_GUID";
	rename -uid "6D860F80-4F31-A4C5-CCEF-A79FACF0DAAD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "object_end_GUID" -p "guid_GRP";
	rename -uid "CB25A705-4CBD-C263-F093-29BA71CA584A";
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
	setAttr ".rig_objectType" 3;
createNode fnk_rig_shape -n "object_end_GUIDShape" -p "object_end_GUID";
	rename -uid "F93711DA-4894-2A6E-B21C-D982ED87705E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 31;
	setAttr ".globalScale" 0.10000000149011612;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
createNode transform -n "controllers_GRP" -p "module";
	rename -uid "5422E795-465E-1F9C-5BF5-729D61F165DA";
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
	rename -uid "09EA1917-4CAC-82B6-7054-72947FAA5B26";
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
	rename -uid "D408BC7A-4CEB-0DEE-8D44-4283A173234B";
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
createNode transform -n "objectTarget_RT_IN_BUF" -p "FK_GRP";
	rename -uid "5A052F72-4D70-F6C0-24C3-C49093D47C91";
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
createNode transform -n "object_entry_RT_FK_BUF" -p "objectTarget_RT_IN_BUF";
	rename -uid "502E9CA1-40BC-56F2-C7F7-87861A2F8E93";
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
createNode transform -n "object_entry_mechanic_FK_BUF" -p "object_entry_RT_FK_BUF";
	rename -uid "221C6F50-4E26-0557-86F9-089C6BAF25CA";
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
	setAttr ".oclr" -type "float3" 0.83946317 0.1050958 1 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "object_entry_FK_CON" -p "object_entry_mechanic_FK_BUF";
	rename -uid "5C120217-496A-864F-CF1E-5F996C128753";
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
createNode fnk_rig_shape -n "object_entry_FK_CONShape" -p "object_entry_FK_CON";
	rename -uid "A0FBF1BF-4A58-3070-E77E-4EBA01272C1A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1.269279 0.21642466 1.5292768 ;
	setAttr ".shapeType" 33;
	setAttr ".globalScale" 1.1000000238418579;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 3.5 0 0 0 0 0.19999999999999996 0 0 0 0 3.5 0
		 0 0.10000000000000001 0 1;
createNode transform -n "object_mid_RT_FK_BUF" -p "object_entry_FK_CON";
	rename -uid "06BA1717-4D6A-AA8A-81E5-64BE990D9C92";
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
createNode transform -n "object_mid_mechanic_FK_BUF" -p "object_mid_RT_FK_BUF";
	rename -uid "3AD43154-426A-18CD-5AAF-4A8CAF7C91C6";
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
	setAttr ".oclr" -type "float3" 0.83946317 0.1050958 1 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "object_mid_FK_CON" -p "object_mid_mechanic_FK_BUF";
	rename -uid "1FAAC743-4B35-88A5-46C1-DBADE81D0048";
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
createNode fnk_rig_shape -n "object_mid_FK_CONShape" -p "object_mid_FK_CON";
	rename -uid "D9E72BAF-4B7C-9B5A-70EF-919ABF646E03";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".shapeType" 33;
	setAttr ".globalScale" 1.1000000238418579;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 3.1000000000000001 0 0 0 0 0.34999999999999998 0 0
		 0 0 3.1000000000000001 0 0 0.17499999999999999 0 1;
createNode transform -n "object_end_RT_FK_BUF" -p "object_mid_FK_CON";
	rename -uid "038729A3-4EE4-4825-D15A-6E9D1EECCD95";
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
createNode transform -n "object_end_mechanic_FK_BUF" -p "object_end_RT_FK_BUF";
	rename -uid "D8CAE094-4F68-2C00-E10B-23A17F261261";
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
	setAttr ".oclr" -type "float3" 0.83946317 0.1050958 1 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "object_end_FK_CON" -p "object_end_mechanic_FK_BUF";
	rename -uid "D60F4F94-4626-63B9-457F-D5901F31A556";
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
createNode fnk_rig_shape -n "object_end_FK_CONShape" -p "object_end_FK_CON";
	rename -uid "E1B3F979-4161-09C1-AAD1-FBBAD394ACF0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.25333565 0.046742763 0.30521753 ;
	setAttr ".shapeType" 33;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 3.1000000000000001 0 0 0 0 0.34999999999999998 0 0
		 0 0 3.1000000000000001 0 0 0.17499999999999999 0 1;
createNode transform -n "bones_GRP" -p "module";
	rename -uid "FC66B03D-45CD-A681-12C6-17B5603045BA";
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
createNode joint -n "object_entry_JNT" -p "bones_GRP";
	rename -uid "3172C5C4-4B3A-132E-EAEC-C2BBE2E83673";
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
createNode joint -n "object_mid_JNT" -p "bones_GRP";
	rename -uid "610A4A7D-43DE-243E-B335-058DB3393AF6";
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
createNode joint -n "object_end_JNT" -p "bones_GRP";
	rename -uid "F71D0447-4192-454F-D598-43BB14CB47F2";
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
createNode transform -n "algo_GRP" -p "module";
	rename -uid "8144FA47-402B-EAD7-2D98-B58D6243DAC6";
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
createNode transform -n "object_entry_OUT_BUF" -p "algo_GRP";
	rename -uid "FD055CEB-4B0B-AE0F-0313-EAB05232C780";
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
createNode transform -n "object_mid_OUT_BUF" -p "algo_GRP";
	rename -uid "2C70AC87-4AE8-57B2-3AF5-D5A2F258B2F1";
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
createNode transform -n "object_end_OUT_BUF" -p "algo_GRP";
	rename -uid "BFD08014-4401-BABE-2C5D-ECA38DBA1C03";
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
createNode transform -n "object_RT_IN_BUF" -p "algo_GRP";
	rename -uid "365ABF98-41C8-C867-E065-F5BA72BC92C2";
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
createNode transform -s -n "persp";
	rename -uid "F5DFB60F-4DD8-1ECA-76DD-FC8C4B177145";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.60766184503151 16.862869187566027 15.228637617712057 ;
	setAttr ".r" -type "double3" -42.338352729602938 2.2000000000001898 -8.9519083463518625e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "361C24BC-4FBD-648E-02E4-75B0C65D5C6F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 22.548507692241905;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E8ADB472-40DF-5134-1849-3EBF89DFB548";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "69D71A75-49FC-3F22-99AF-3F8EE4A5D785";
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
	rename -uid "7AB84044-4134-E290-086E-D69416A46DAD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2A686ED2-4B8B-DE8D-0288-719427791F29";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "DEAE57D9-47D3-05BB-6500-DBBBDB6D2506";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9934F0B1-4C27-0A84-BD9B-EC9005A719BC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "ref_logic";
	rename -uid "5B828EFA-4F8D-BE62-4961-24BF3266ECA9";
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
	setAttr ".oclr" -type "float3" 0.83946317 0.1050958 1 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "ref_buffer";
	rename -uid "8A57530A-45FA-F605-457E-B6BF3A3E0CF6";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "70EFFAA4-4D05-EBEC-1FA0-F0AA208B151D";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1790BD64-4692-140D-6F47-0D80206E487E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "AD1AF528-4DF9-36CB-D048-B69F11346AA2";
createNode displayLayerManager -n "layerManager";
	rename -uid "9B9ECEC0-483B-A573-1A2A-0582139A3C7C";
createNode displayLayer -n "defaultLayer";
	rename -uid "95F46D60-47A1-2747-9E05-DA9656A43AD2";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E2022B7B-40D4-73A6-CD76-6C9FAD82C8A7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BDF81E01-4236-D996-DFE1-14B5301F5C45";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "316EEC90-4908-8269-02D0-9E80F5452171";
	setAttr ".version" -type "string" "5.4.2.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "993B4C05-491E-9321-A514-0D94A74AA3C1";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A043D1B4-4E66-3AFA-88DE-B4BE4D737F39";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "474EAB3A-4DBC-FB54-DE66-8CA5A985FA93";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "207459B5-4A65-0153-4CA2-DC8957FD0E2E";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C566185A-46FE-2D47-D036-B5BE9A97DE32";
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
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1135\n            -height 1092\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1135\\n    -height 1092\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1135\\n    -height 1092\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 20 -size 40 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "61A5A241-497A-E85F-C3E4-8193CD5CA118";
	setAttr ".b" -type "string" "playbackOptions -min 3 -max 16 -ast 1 -aet 24 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "C11E5430-47A4-654B-F9EE-648641BFA7D8";
	setAttr -s 5 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1362.316795683244 -357.14284295127561 ;
	setAttr ".tgi[0].vh" -type "double2" 1327.7929875312875 371.42855666932667 ;
	setAttr -s 7 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -395.95236206054688;
	setAttr ".tgi[0].ni[0].y" 203.33332824707031;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 511.42855834960938;
	setAttr ".tgi[0].ni[1].y" -22.857143402099609;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -627.14288330078125;
	setAttr ".tgi[0].ni[2].y" -142.85714721679688;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -111.42857360839844;
	setAttr ".tgi[0].ni[3].y" -88.571426391601562;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 104.047607421875;
	setAttr ".tgi[0].ni[4].y" 172.61904907226562;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 511.42855834960938;
	setAttr ".tgi[0].ni[5].y" 107.14286041259766;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -627.14288330078125;
	setAttr ".tgi[0].ni[6].y" -12.857142448425293;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" -1256.1812687651593 -267.85713221345679 ;
	setAttr ".tgi[1].vh" -type "double2" 809.7527150760659 291.66665507687503 ;
	setAttr -s 8 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" -865.71429443359375;
	setAttr ".tgi[1].ni[0].y" -18.571428298950195;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" -865.71429443359375;
	setAttr ".tgi[1].ni[1].y" 111.42857360839844;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" -274.28570556640625;
	setAttr ".tgi[1].ni[2].y" -18.571428298950195;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" -601.7752685546875;
	setAttr ".tgi[1].ni[3].y" 63.696327209472656;
	setAttr ".tgi[1].ni[3].nvs" 18306;
	setAttr ".tgi[1].ni[4].x" 54.144783020019531;
	setAttr ".tgi[1].ni[4].y" 205.53399658203125;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 66.018318176269531;
	setAttr ".tgi[1].ni[5].y" -175.63694763183594;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" -274.28570556640625;
	setAttr ".tgi[1].ni[6].y" 111.42857360839844;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" 49.578037261962891;
	setAttr ".tgi[1].ni[7].y" 49.046901702880859;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "Untitled_3";
	setAttr ".tgi[2].vl" -type "double2" -1505.9523211112125 -396.42855567591596 ;
	setAttr ".tgi[2].vh" -type "double2" 1522.618987115605 423.80950696884713 ;
	setAttr -s 8 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" -242.85714721679688;
	setAttr ".tgi[2].ni[0].y" 235.71427917480469;
	setAttr ".tgi[2].ni[0].nvs" 18304;
	setAttr ".tgi[2].ni[1].x" 64.285713195800781;
	setAttr ".tgi[2].ni[1].y" -284.28570556640625;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" 64.285713195800781;
	setAttr ".tgi[2].ni[2].y" -154.28572082519531;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" 64.285713195800781;
	setAttr ".tgi[2].ni[3].y" 105.71428680419922;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 64.285713195800781;
	setAttr ".tgi[2].ni[4].y" 235.71427917480469;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" 64.285713195800781;
	setAttr ".tgi[2].ni[5].y" -24.285715103149414;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" 64.285713195800781;
	setAttr ".tgi[2].ni[6].y" 365.71429443359375;
	setAttr ".tgi[2].ni[6].nvs" 18304;
	setAttr ".tgi[2].ni[7].x" -242.85714721679688;
	setAttr ".tgi[2].ni[7].y" 365.71429443359375;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[3].tn" -type "string" "Untitled_4";
	setAttr ".tgi[3].vl" -type "double2" -656.22167571956572 -251.19046620906389 ;
	setAttr ".tgi[3].vh" -type "double2" 665.74548486493302 263.09522764077303 ;
	setAttr -s 3 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" -92.857139587402344;
	setAttr ".tgi[3].ni[0].y" 32.857143402099609;
	setAttr ".tgi[3].ni[0].nvs" 18304;
	setAttr ".tgi[3].ni[1].x" 218.90754699707031;
	setAttr ".tgi[3].ni[1].y" 127.22688293457031;
	setAttr ".tgi[3].ni[1].nvs" 18304;
	setAttr ".tgi[3].ni[2].x" -106.30252075195312;
	setAttr ".tgi[3].ni[2].y" 164.53781127929688;
	setAttr ".tgi[3].ni[2].nvs" 18304;
	setAttr ".tgi[4].tn" -type "string" "Untitled_5";
	setAttr ".tgi[4].vl" -type "double2" -716.84372839122375 -73.444466260400858 ;
	setAttr ".tgi[4].vh" -type "double2" 833.10156521074066 529.53170025566953 ;
	setAttr -s 6 ".tgi[4].ni";
	setAttr ".tgi[4].ni[0].x" 310.4449462890625;
	setAttr ".tgi[4].ni[0].y" 302.65707397460938;
	setAttr ".tgi[4].ni[0].nvs" 18304;
	setAttr ".tgi[4].ni[1].x" 305.50253295898438;
	setAttr ".tgi[4].ni[1].y" 183.5587158203125;
	setAttr ".tgi[4].ni[1].nvs" 18304;
	setAttr ".tgi[4].ni[2].x" -112.62685394287109;
	setAttr ".tgi[4].ni[2].y" 207.81907653808594;
	setAttr ".tgi[4].ni[2].nvs" 1923;
	setAttr ".tgi[4].ni[3].x" -182.809326171875;
	setAttr ".tgi[4].ni[3].y" 21.503713607788086;
	setAttr ".tgi[4].ni[3].nvs" 18304;
	setAttr ".tgi[4].ni[4].x" -142.28141784667969;
	setAttr ".tgi[4].ni[4].y" 377.86688232421875;
	setAttr ".tgi[4].ni[4].nvs" 1923;
	setAttr ".tgi[4].ni[5].x" 298.56314086914062;
	setAttr ".tgi[4].ni[5].y" 59.387985229492188;
	setAttr ".tgi[4].ni[5].nvs" 18304;
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
connectAttr "setup.guideVisibility" "guid_GRP.v";
connectAttr "setup.controllerVisibility" "controllers_GRP.v";
connectAttr "object_entry_GUID.msg" "objectTarget_RT_IN_BUF.rig_guid";
connectAttr "object_entry_GUID.msg" "object_entry_RT_FK_BUF.rig_guid";
connectAttr "object_mid_GUID.msg" "object_mid_RT_FK_BUF.rig_guid";
connectAttr "object_end_GUID.msg" "object_end_RT_FK_BUF.rig_guid";
connectAttr "setup.jointVisibility" "bones_GRP.v";
connectAttr "object_entry_FK_CON.wm" "object_entry_JNT.opm";
connectAttr "object_mid_FK_CON.wm" "object_mid_JNT.opm";
connectAttr "object_end_FK_CON.wm" "object_end_JNT.opm";
connectAttr "object_entry_FK_CON.wm" "object_entry_OUT_BUF.opm";
connectAttr "object_mid_FK_CON.wm" "object_mid_OUT_BUF.opm";
connectAttr "object_end_FK_CON.wm" "object_end_OUT_BUF.opm";
connectAttr "object_entry_GUID.msg" "object_RT_IN_BUF.rig_guid";
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
connectAttr "object_entry_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "object_entry_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "object_end_GUIDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "object_entry_FK_CONShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "object_entry_OUT_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "object_entry_GUIDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "object_end_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "object_mid_GUIDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "object_mid_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn";
connectAttr "object_mid_FK_CONShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "setup.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn";
connectAttr "controllers_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn";
connectAttr "bones_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn";
connectAttr "object_mid_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "guid_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn";
connectAttr "object_mid_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn";
connectAttr "object_entry_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "object_mid_FK_CONShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "object_end_FK_CONShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "object_mid_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "object_entry_FK_CONShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "object_end_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "object_end_GUID.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn";
connectAttr "object_mid_FK_CONShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "object_mid_OUT_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[1].dn"
		;
connectAttr "object_mid_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "object_entry_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[0].dn"
		;
connectAttr "object_mid_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[1].dn";
connectAttr "object_mid_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[2].dn"
		;
connectAttr "object_end_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[3].dn"
		;
connectAttr "object_entry_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[4].dn"
		;
connectAttr "object_end_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[5].dn";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of base_FK_component_v001.ma
