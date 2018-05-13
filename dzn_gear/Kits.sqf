// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch"
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch", "ItemRadio", BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

kit_sov_pl = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD_LT","345th_RD_webbing","RD_54_69_345th_R148","345th_beret_VDV1",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",3],["rhs_mag_rdg2_black",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_sov_sl = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD_SZT","345th_RD_webbing","RD_54_69_345th_R148","ssh68_khaki",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",3],["rhs_mag_rdg2_black",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_sov_mg = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD","345th_RD_webbing","rhs_sidor","ssh68_khaki",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];
kit_sov_at = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD","345th_RD_webbing","rhs_rpg_empty","ssh68_khaki",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","",["","","rhs_acc_pgo7v2",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_PG7VL_mag",1],["rhs_rpg7_PG7V_mag",2],["PRIMARY MAG",3]]]
];
kit_sov_aat = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD","345th_RD_webbing","rhs_rpg_empty","ssh68_khaki",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_PG7VL_mag",1],["rhs_rpg7_PG7V_mag",2],["PRIMARY MAG",3]]]
];
kit_sov_ss = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD","345th_RD_webbing","RD_54_69_Shovel2_345th","ssh68_khaki",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74_gp25","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3],["rhs_VOG25",10],["rhs_VG40MD_White",6]]]
];
kit_sov_gr = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD","345th_RD_webbing","RD_54_69_Shovel2_345th","ssh68_khaki",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74_gp25","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4],["rhs_VOG25",10]]]
];
kit_sov_r = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD","345th_RD_webbing","RD_54_69_Shovel2_345th","ssh68_khaki",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_100Rnd_762x54mmR",2],["PRIMARY MAG",3]]]
];
kit_sov_mm = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD","345th_RD_webbing","RD_54_69_Shovel2_345th","ssh68_khaki",""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",13]]]
];
kit_sov_crew = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD","345th_RD_webbing","","rhs_tsh4",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK",["rhs_acc_pgs64_74u","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
cargo_kit_sov = [
	[["rhs_weap_rpg7",1],["rhs_weap_aks74",3]],
	[["rhs_mag_rgd5",10],["rhs_30Rnd_545x39_AK",10],["rhs_VOG25",10],["rhs_100Rnd_762x54mmR",5],["rhs_mag_9x18_8_57N181S",5],["CUP_10Rnd_762x54_SVD_M",10],["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_PG7V_mag",4]],
	[["ACE_fieldDressing",15],["ACE_packingBandage",5]],
	[]
];

//BUNDESWEHR
kit_bundes_random = [
	"kit_bundes_r"
	,"kit_bundes_ar"
	,"kit_bundes_r"
	,"kit_bundes_mm"
	,"kit_bundes_r"
	,"kit_bundes_rat"
];
kit_bundes_r = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_LBE_rm","","H_Beret_blk",""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_g3a3","hlc_20rnd_762x51_b_G3",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_bundes_ar = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_LBE_mg","","H_Beret_blk",""],
	["<PRIMARY WEAPON >>  ","hlc_lmg_MG3","hlc_100Rnd_762x51_M_MG3",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["PRIMARY MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_bundes_at = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_LBE_mg","CUP_B_AlicePack_Khaki","CUP_H_USArmy_Helmet_M1_Olive",""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_g3a3","hlc_20rnd_762x51_b_G3",["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_maaws","rhs_mag_maaws_HEAT",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",3]]]
];
kit_bundes_mm = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_LBE_mg","CUP_B_AlicePack_Khaki","CUP_H_USArmy_Helmet_M1_Olive",""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_g3a3","hlc_20rnd_762x51_b_G3",["","","HLC_Optic_ZFSG1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_bundes_rat = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_LBE_rm","","H_Beret_blk",""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_g3a3","hlc_20rnd_762x51_b_G3",["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","rhs_m72a7_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_bundes_crew = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_LBE_rm","","rhsusf_cvc_green_alt_helmet",""],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5A5","CUP_30Rnd_9x19_MP5",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];