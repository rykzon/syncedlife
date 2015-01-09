#include <macro.h>
/*
	File: fn_seizeCfg.sqf
	Author: Tabakhase
	Slightly adapted by Daniel Larusso (Keep Calm and Roleplay)
	
	Description:
	Master configuration file for seize player everything.
	
	Parameters:
	0 = All
	1 = Weapons
	2 = Uniform
	3 = Backpack
	4 = Vest
	5 = Items
	
	ToDo:
	Adding list 0,2,3,4&5
*/
private["_mode"];
_mode = [_this,0,objNull,[""]] call BIS_fnc_param;

switch(_mode) do
{
	case 1: {
		[
			// Weapons
			"srifle_EBR_F",
			"srifle_GM6_F",
			"srifle_LRR_F",
			"LMG_Mk200_F",
			"hgun_P07_F",
			"hgun_Rook40_F",
			"hgun_ACPC2_F",
			"hgun_Pistol_heavy_01_F",
			"hgun_Pistol_heavy_01_snds_F",
			"hgun_Pistol_heavy_02_F",
			"hgun_PDW2000_F",
			"hgun_Pistol_Signal_F",
			"arifle_Katiba_F",
			"arifle_Katiba_C_F",
			"arifle_Katiba_GL_F",
			"arifle_MXC_F",
			"arifle_MXC_Black_F",
			"arifle_MX_F",
			"arifle_MX_Black_F",
			"arifle_MX_GL_F",
			"arifle_MX_GL_Black_F",
			"arifle_MX_SW_F",
			"arifle_MX_SW_Black_F",
			"arifle_MXM_F",
			"arifle_MXM_Black_F",
			"arifle_SDAR_F",
			"arifle_TRG21_F",
			"arifle_TRG20_F",
			"arifle_TRG21_GL_F",
			"arifle_Mk20_F",
			"arifle_Mk20_plain_F",
			"arifle_Mk20C_F",
			"arifle_Mk20C_plain_F",
			"arifle_Mk20_GL_F",
			"arifle_Mk20_GL_plain_F",
			"launch_B_Titan_F",
			"launch_I_Titan_F",
			"launch_O_Titan_F",
			"launch_B_Titan_short_F",
			"launch_I_Titan_short_F",
			"launch_O_Titan_short_F",
			"LMG_Zafir_F",
			"SMG_01_F",
			"SMG_02_F",
			"srifle_DMR_01_F",
			
			
			//HK
			"arifle_mas_hk416", "arifle_mas_hk416_t", "arifle_mas_hk416_h", "arifle_mas_hk416_a", "arifle_mas_hk416_e", "arifle_mas_hk416_sd", "arifle_mas_hk416_gl", "arifle_mas_hk416_gl_t", "arifle_mas_hk416_gl_h", "arifle_mas_hk416_gl_a", "arifle_mas_hk416_gl_e", "arifle_mas_hk416_gl_sd", "arifle_mas_hk416_m203", "arifle_mas_hk416_m203_t", "arifle_mas_hk416_m203_h", "arifle_mas_hk416_m203_a", "arifle_mas_hk416_m203_e", "arifle_mas_hk416_m203_sd", "arifle_mas_hk416_v", "arifle_mas_hk416_v_t", "arifle_mas_hk416_v_h", "arifle_mas_hk416_v_a", "arifle_mas_hk416_v_e", "arifle_mas_hk416_v_sd", "arifle_mas_hk416_gl_v", "arifle_mas_hk416_gl_v_t", "arifle_mas_hk416_gl_v_h", "arifle_mas_hk416_gl_v_a", "arifle_mas_hk416_gl_v_e", "arifle_mas_hk416_gl_v_sd", "arifle_mas_hk416_m203_v", "arifle_mas_hk416_m203_v_t", "arifle_mas_hk416_m203_v_h", "arifle_mas_hk416_m203_v_a", "arifle_mas_hk416_m203_v_e", "arifle_mas_hk416_m203_v_sd", "arifle_mas_hk416_d", "arifle_mas_hk416_d_t", "arifle_mas_hk416_d_h", "arifle_mas_hk416_d_a", "arifle_mas_hk416_d_e", "arifle_mas_hk416_d_sd", "arifle_mas_hk416_gl_d", "arifle_mas_hk416_gl_d_t", "arifle_mas_hk416_gl_d_h", "arifle_mas_hk416_gl_d_a", "arifle_mas_hk416_gl_d_e", "arifle_mas_hk416_gl_d_sd", "arifle_mas_hk416_m203_d", "arifle_mas_hk416_m203_d_t", "arifle_mas_hk416_m203_d_h", "arifle_mas_hk416_m203_d_a", "arifle_mas_hk416_m203_d_e", "arifle_mas_hk416_m203_d_sd", "arifle_mas_hk416c", "arifle_mas_hk416c_h", "arifle_mas_hk416c_e", "arifle_mas_hk416c_sd", "arifle_mas_hk416_m203c",  "arifle_mas_hk416_m203c_h",  "arifle_mas_hk416_m203c_e", "arifle_mas_hk416_m203c_sd", "arifle_mas_hk416c_v",  "arifle_mas_hk416c_v_h",  "arifle_mas_hk416c_v_e", "arifle_mas_hk416c_v_sd", "arifle_mas_hk416_m203c_v",  "arifle_mas_hk416_m203c_v_h",  "arifle_mas_hk416_m203c_v_e", "arifle_mas_hk416_m203c_v_sd", "arifle_mas_hk416c_d",  "arifle_mas_hk416c_d_h",  "arifle_mas_hk416c_d_e", "arifle_mas_hk416c_d_sd", "arifle_mas_hk416_m203c_d",  "arifle_mas_hk416_m203c_d_h", "arifle_mas_hk416_m203c_d_e", "arifle_mas_hk416_m203c_d_sd",
			//HK
			"arifle_mas_hk417c", "arifle_mas_hk417c_h", "arifle_mas_hk417c_e", "arifle_mas_hk417c_sd", "arifle_mas_hk417_m203c",  "arifle_mas_hk417_m203c_h",  "arifle_mas_hk417_m203c_e", "arifle_mas_hk417_m203c_sd", "arifle_mas_hk417c_v",  "arifle_mas_hk417c_v_h",  "arifle_mas_hk417c_v_e", "arifle_mas_hk417c_v_sd", "arifle_mas_hk417_m203c_v",  "arifle_mas_hk417_m203c_v_h",  "arifle_mas_hk417_m203c_v_e", "arifle_mas_hk417_m203c_v_sd", "arifle_mas_hk417c_d",  "arifle_mas_hk417c_d_h",  "arifle_mas_hk417c_d_e", "arifle_mas_hk417c_d_sd", "arifle_mas_hk417_m203c_d",  "arifle_mas_hk417_m203c_d_h", "arifle_mas_hk417_m203c_d_e", "arifle_mas_hk417_m203c_d_sd",
			//M4
			"arifle_mas_m4", "arifle_mas_m4_t", "arifle_mas_m4_ti", "arifle_mas_m4_h", "arifle_mas_m4_a", "arifle_mas_m4_e", "arifle_mas_m4_sd", "arifle_mas_m4_gl", "arifle_mas_m4_gl_t", "arifle_mas_m4_gl_ti", "arifle_mas_m4_gl_h", "arifle_mas_m4_gl_a", "arifle_mas_m4_gl_e", "arifle_mas_m4_gl_sd", "arifle_mas_m4_m203", "arifle_mas_m4_m203_t", "arifle_mas_m4_m203_ti", "arifle_mas_m4_m203_h", "arifle_mas_m4_m203_a", "arifle_mas_m4_m203_e", "arifle_mas_m4_m203_sd", "arifle_mas_m4_v", "arifle_mas_m4_v_t", "arifle_mas_m4_v_ti", "arifle_mas_m4_v_h", "arifle_mas_m4_v_a", "arifle_mas_m4_v_e", "arifle_mas_m4_v_sd", "arifle_mas_m4_gl_v", "arifle_mas_m4_gl_v_t", "arifle_mas_m4_gl_v_ti", "arifle_mas_m4_gl_v_h", "arifle_mas_m4_gl_v_a", "arifle_mas_m4_gl_v_e", "arifle_mas_m4_gl_v_sd", "arifle_mas_m4_m203_v", "arifle_mas_m4_m203_v_t", "arifle_mas_m4_m203_v_ti", "arifle_mas_m4_m203_v_h", "arifle_mas_m4_m203_v_a", "arifle_mas_m4_m203_v_e", "arifle_mas_m4_m203_v_sd", "arifle_mas_m4_d", "arifle_mas_m4_d_t", "arifle_mas_m4_d_ti", "arifle_mas_m4_d_h", "arifle_mas_m4_d_a", "arifle_mas_m4_d_e", "arifle_mas_m4_d_sd", "arifle_mas_m4_gl_d", "arifle_mas_m4_gl_d_t", "arifle_mas_m4_gl_d_ti", "arifle_mas_m4_gl_d_h", "arifle_mas_m4_gl_d_a", "arifle_mas_m4_gl_d_e", "arifle_mas_m4_gl_d_sd", "arifle_mas_m4_m203_d", "arifle_mas_m4_m203_d_t", "arifle_mas_m4_m203_d_ti", "arifle_mas_m4_m203_d_h", "arifle_mas_m4_m203_d_a", "arifle_mas_m4_m203_d_e", "arifle_mas_m4_m203_d_sd", "arifle_mas_m4c", "arifle_mas_m4c_h", "arifle_mas_m4c_e", "arifle_mas_m4c_sd", "arifle_mas_m4_m203c",  "arifle_mas_m4_m203c_h",  "arifle_mas_m4_m203c_e", "arifle_mas_m4_m203c_sd", "arifle_mas_m4c_v",  "arifle_mas_m4c_v_h",  "arifle_mas_m4c_v_e", "arifle_mas_m4c_v_sd", "arifle_mas_m4_m203c_v",  "arifle_mas_m4_m203c_v_h",  "arifle_mas_m4_m203c_v_e", "arifle_mas_m4_m203c_v_sd", "arifle_mas_m4c_d",  "arifle_mas_m4c_d_h",  "arifle_mas_m4c_d_e", "arifle_mas_m4c_d_sd", "arifle_mas_m4_m203c_d",  "arifle_mas_m4_m203c_d_h", "arifle_mas_m4_m203c_d_e", "arifle_mas_m4_m203c_d_sd", "arifle_mas_m16", "arifle_mas_m16_t", "arifle_mas_m16_a", "arifle_mas_m16_e", "arifle_mas_m16_sd", "arifle_mas_m16_gl", "arifle_mas_m16_gl_t", "arifle_mas_m16_gl_a", "arifle_mas_m16_gl_e", "arifle_mas_m16_gl_sd",
			//G36C
			"arifle_mas_g36c", "arifle_mas_g36c_h", "arifle_mas_g36c_a", "arifle_mas_g36c_e", "arifle_mas_g36c_sd",
			//SCAR
			"arifle_mas_mk16", "arifle_mas_mk16_h", "arifle_mas_mk16_e", "arifle_mas_mk16_sd", "arifle_mas_mk16_gl", "arifle_mas_mk16_gl_h", "arifle_mas_mk16_gl_e", "arifle_mas_mk16_gl_sd", "arifle_mas_mk16_l", "arifle_mas_mk16_l_h", "arifle_mas_mk16_l_e", "arifle_mas_mk16_l_sd", "arifle_mas_mk16_l_gl", "arifle_mas_mk16_l_gl_h", "arifle_mas_mk16_l_gl_e", "arifle_mas_mk16_l_gl_sd",
			//SCARH
			"arifle_mas_mk17", "arifle_mas_mk17_h", "arifle_mas_mk17_e", "arifle_mas_mk17_sd", "arifle_mas_mk17_gl", "arifle_mas_mk17_gl_h", "arifle_mas_mk17_gl_e", "arifle_mas_mk17_gl_sd",
			//G3
			"arifle_mas_g3", "arifle_mas_g3_h", "arifle_mas_g3_a", "arifle_mas_g3_m203", "arifle_mas_g3_m203_h", "arifle_mas_g3_m203_a", "arifle_mas_g3s", "arifle_mas_g3s_h", "arifle_mas_g3s_a", "arifle_mas_g3s_m203", "arifle_mas_g3s_m203_h", "arifle_mas_g3s_m203_a",
			//FN FAL
			"arifle_mas_fal", "arifle_mas_fal_h", "arifle_mas_fal_a", "arifle_mas_fal_m203", "arifle_mas_fal_m203_h", "arifle_mas_fal_m203_a",
			//m14
			"arifle_mas_m14", "arifle_mas_m14_h", "arifle_mas_m14_a", "arifle_mas_m14_l",
			//HK417
			"srifle_mas_hk417", "srifle_mas_hk417_h", "srifle_mas_hk417_sd", "srifle_mas_hk417_v", "srifle_mas_hk417_v_h", "srifle_mas_hk417_v_sd", "srifle_mas_hk417_d", "srifle_mas_hk417_d_h", "srifle_mas_hk417_d_sd", "srifle_mas_sr25", "srifle_mas_sr25_h", "srifle_mas_sr25_sd", "srifle_mas_sr25_v", "srifle_mas_sr25_v_h", "srifle_mas_sr25_v_sd", "srifle_mas_sr25_d", "srifle_mas_sr25_d_h", "srifle_mas_sr25_d_sd", "srifle_mas_ebr", "srifle_mas_ebr_a", "srifle_mas_ebr_t", "srifle_mas_ebr_h", "srifle_mas_ebr_sd", "srifle_mas_mk17s", "srifle_mas_mk17s_h", "srifle_mas_mk17s_sd", "srifle_mas_m110", "srifle_mas_m110_h", "srifle_mas_m110_sd",
			//MP5
			"arifle_mas_mp5", "arifle_mas_mp5_a", "arifle_mas_mp5_e", "arifle_mas_mp5_sd", "arifle_mas_mp5_v", "arifle_mas_mp5_v_a", "arifle_mas_mp5_v_e", "arifle_mas_mp5_v_sd", "arifle_mas_mp5_d", "arifle_mas_mp5_d_a", "arifle_mas_mp5_d_e", "arifle_mas_mp5_d_sd", "arifle_mas_mp5sd", "arifle_mas_mp5sd_a", "arifle_mas_mp5sd_e", "arifle_mas_mp5sd_ds",
			//M249
			"LMG_mas_Mk200_F", "LMG_mas_Mk200_F_t", "LMG_mas_Mk200_F_h", "LMG_mas_Mk200_F_a", "LMG_mas_Mk200_F_sd", "LMG_mas_M249_F", "LMG_mas_M249_F_t", "LMG_mas_M249_F_h", "LMG_mas_M249_F_a", "LMG_mas_M249_F_sd", "LMG_mas_M249_F_v", "LMG_mas_M249_F_v_t", "LMG_mas_M249_F_v_h", "LMG_mas_M249_F_v_a", "LMG_mas_M249_F_v_sd", "LMG_mas_M249_F_d", "LMG_mas_M249_F_d_t", "LMG_mas_M249_F_d_h", "LMG_mas_M249_F_d_a", "LMG_mas_M249_F_d_sd", "LMG_mas_M249a_F", "LMG_mas_M249a_F_t", "LMG_mas_M249a_F_a",
			//AK74
			"arifle_mas_ak_74m", "arifle_mas_ak_74m_h", "arifle_mas_ak_74m_ti", "arifle_mas_ak_74m_a", "arifle_mas_ak_74m_sd", "arifle_mas_ak_74m_gl", "arifle_mas_ak_74m_gl_h", "arifle_mas_ak_74m_gl_ti", "arifle_mas_ak_74m_gl_a", "arifle_mas_ak_74m_gl_sd", "arifle_mas_ak_74m_c", "arifle_mas_ak_74m_c_h", "arifle_mas_ak_74m_c_ti", "arifle_mas_ak_74m_c_a", "arifle_mas_ak_74m_c_sd", "arifle_mas_ak_74m_gl_c", "arifle_mas_ak_74m_gl_c_h", "arifle_mas_ak_74m_gl_c_ti", "arifle_mas_ak_74m_gl_c_a", "arifle_mas_ak_74m_gl_c_sd", "arifle_mas_aks74", "arifle_mas_aks74_h", "arifle_mas_aks74_a", "arifle_mas_aks74_gl", "arifle_mas_aks74_gl_h", "arifle_mas_aks74_gl_a", "arifle_mas_ak74", "arifle_mas_ak74_h", "arifle_mas_ak74_a", "arifle_mas_ak74_l", "arifle_mas_ak74_gl", "arifle_mas_ak74_gl_h", "arifle_mas_ak74_gl_a", "arifle_mas_ak74_gl_l",
			//AK74m
			"arifle_mas_ak_74m_sf", "arifle_mas_ak_74m_sf_h", "arifle_mas_ak_74m_sf_a", "arifle_mas_ak_74m_sf_e", "arifle_mas_ak_74m_sf_sd", "arifle_mas_ak_74m_sf_gl", "arifle_mas_ak_74m_sf_gl_h", "arifle_mas_ak_74m_sf_gl_a", "arifle_mas_ak_74m_sf_gl_e", "arifle_mas_ak_74m_sf_gl_sd", "arifle_mas_ak_74m_sf_c", "arifle_mas_ak_74m_sf_c_h", "arifle_mas_ak_74m_sf_c_a", "arifle_mas_ak_74m_sf_c_e", "arifle_mas_ak_74m_sf_c_sd", "arifle_mas_ak_74m_sf_gl_c", "arifle_mas_ak_74m_sf_gl_c_h", "arifle_mas_ak_74m_sf_gl_c_a", "arifle_mas_ak_74m_sf_gl_c_e", "arifle_mas_ak_74m_sf_gl_c_sd", "arifle_mas_aks_74_sf", "arifle_mas_aks_74_sf_h", "arifle_mas_aks_74_sf_a", "arifle_mas_aks_74_sf_e", "arifle_mas_aks_74_sf_sd", "arifle_mas_aks_74_sf_gl", "arifle_mas_aks_74_sf_gl_h", "arifle_mas_aks_74_sf_gl_a", "arifle_mas_aks_74_sf_gl_e", "arifle_mas_aks_74_sf_gl_sd",
			//AKMS
			"arifle_mas_akms", "arifle_mas_akms_h", "arifle_mas_akms_a", "arifle_mas_akms_sd", "arifle_mas_akms_gl", "arifle_mas_akms_gl_h", "arifle_mas_akms_gl_a", "arifle_mas_akms_gl_sd", "arifle_mas_akms_c", "arifle_mas_akms_c_h", "arifle_mas_akms_c_a", "arifle_mas_akms_c_sd", "arifle_mas_akms_gl_c", "arifle_mas_akms_gl_c_h", "arifle_mas_akms_gl_c_a", "arifle_mas_akms_gl_c_sd", "arifle_mas_akm", "arifle_mas_akm_h", "arifle_mas_akm_a", "arifle_mas_akm_gl", "arifle_mas_akm_gl_h", "arifle_mas_akm_gl_a",
			//Zastava
			"arifle_mas_m70", "arifle_mas_m70_gl", "arifle_mas_m70ab", "arifle_mas_m70ab_gl",
			"srifle_mas_m91", "srifle_mas_m91_l",
			//SVD
			"srifle_mas_svd", "srifle_mas_svd_h", "srifle_mas_svd_sd", "srifle_mas_svd_l",
			//ASVAL
			"arifle_mas_asval", "arifle_mas_asval_h", "arifle_mas_asval_a", "arifle_mas_asval_ds",
			//AK74U
			"arifle_mas_aks74u", "arifle_mas_aks74u_h", "arifle_mas_aks74u_a", "arifle_mas_aks74u_sd", "arifle_mas_aks74u_c", "arifle_mas_aks74u_c_h", "arifle_mas_aks74u_c_a", "arifle_mas_aks74u_c_sd",
			"hgun_mas_uzi_F", "hgun_mas_uzi_F_sd","hgun_mas_sa61_F", "hgun_mas_sa61_F_sd",
			//KLEINE
			//MAGAZINES
			"mas_PG7V", "mas_PG7L", "mas_PG7VR", "mas_OG7", "mas_TBG7V", "mas_PG18", "mas_Metis", "mas_Metis_HE", "mas_LAW", "mas_M136", "mas_M136_HE", "mas_MAAWS", "mas_MAAWS_HE", "mas_SMAW", "mas_SMAW_HE", "mas_SMAW_NE", "mas_NLAW", "mas_NLAW_HE", "mas_TitanS", "mas_TitanS_HE", "mas_Stinger", "mas_Strela", "Sting_mas_AA_F", "RPG32_mas_AA_F", "30Rnd_mas_556x45_Stanag", "30Rnd_mas_556x45_T_Stanag", "200Rnd_mas_556x45_Stanag", "200Rnd_mas_556x45_T_Stanag", "100Rnd_mas_762x51_Stanag", "100Rnd_mas_762x51_T_Stanag", "100Rnd_mas_762x54_mag", "100Rnd_mas_762x54_T_mag", "100Rnd_mas_762x39_mag", "100Rnd_mas_762x39_T_mag", "30Rnd_mas_545x39_mag", "30Rnd_mas_545x39_T_mag", "100Rnd_mas_545x39_mag", "100Rnd_mas_545x39_T_mag", "20Rnd_mas_762x51_Stanag", "20Rnd_mas_762x51_T_Stanag", "5Rnd_mas_762x51_Stanag", "5Rnd_mas_762x51_T_Stanag", "10Rnd_mas_338_Stanag", "10Rnd_mas_338_T_Stanag", "30Rnd_mas_762x39_mag", "30Rnd_mas_762x39_T_mag", "10Rnd_mas_762x54_mag", "10Rnd_mas_762x54_T_mag", "5Rnd_mas_127x99_Stanag", "5Rnd_mas_127x99_dem_Stanag", "5Rnd_mas_127x99_T_Stanag", "5Rnd_mas_127x108_mag", "5Rnd_mas_127x108_dem_mag", "5Rnd_mas_127x108_T_mag", "30Rnd_mas_9x21_Stanag", "30Rnd_mas_9x21d_Stanag", "12Rnd_mas_45acp_Mag", "10Rnd_mas_45acp_Mag", "8Rnd_mas_45acp_Mag", "15Rnd_mas_9x21_Mag", "17Rnd_mas_9x21_Mag", "13Rnd_mas_9x21_Mag", "8Rnd_mas_9x18_mag", "7Rnd_mas_12Gauge_Slug", "7Rnd_mas_12Gauge_Pellets", "10Rnd_mas_12Gauge_Slug", "10Rnd_mas_12Gauge_Pellets", "64Rnd_mas_9x18_mag", "20Rnd_mas_765x17_Mag", "25Rnd_mas_9x19_Mag", "40Rnd_mas_46x30_Mag", "2Rnd_mas_Missile_AA_03_F", "4Rnd_mas_Missile_AGM_01_F", "2Rnd_mas_r_Missile_AA_03_F", "4Rnd_mas_r_Missile_AGM_01_F", "20Rnd_mas_Rocket_03_HE_F", "20Rnd_mas_Rocket_03_AP_F", "2Rnd_mas_Bomb_03_F", "2Rnd_mas_r_Bomb_03_F", "24Rnd_mas_PG_missiles", "12Rnd_mas_PG_HE_missiles","12Rnd_mas_PG_missiles",
			//OPTICS
			"acc_mas_pointer_IR", "muzzle_mas_snds_L", "muzzle_mas_snds_LM", "muzzle_mas_snds_C", "muzzle_mas_snds_MP5SD6", "muzzle_mas_snds_M", "muzzle_mas_snds_Mc", "muzzle_mas_snds_MP7", "muzzle_mas_snds_AK", "muzzle_mas_snds_SM", "muzzle_mas_snds_SMc", "muzzle_mas_snds_SH", "muzzle_mas_snds_SHc", "muzzle_mas_snds_SV", "muzzle_mas_snds_SVc", "muzzle_mas_snds_SVD", "muzzle_mas_snds_KSVK", "optic_mas_DMS", "optic_mas_DMS_c", "optic_mas_Holosight_blk", "optic_mas_Holosight_camo", "optic_mas_Arco_blk", "optic_mas_Arco_camo", "optic_mas_Hamr_camo", "optic_mas_Aco_camo", "optic_mas_ACO_grn_camo", "optic_mas_MRCO_camo", "optic_mas_zeiss", "optic_mas_zeiss_c", "optic_mas_zeiss_eo", "optic_mas_zeiss_eo_c", "optic_mas_acog", "optic_mas_acog_c", "optic_mas_acog_eo", "optic_mas_acog_eo_c", "optic_mas_acog_rd", "optic_mas_acog_rd_c", "optic_mas_handle", "optic_mas_aim", "optic_mas_aim_c", "optic_mas_PSO", "optic_mas_PSO_c", "optic_mas_PSO_eo", "optic_mas_PSO_eo_c", "optic_mas_PSO_nv", "optic_mas_PSO_nv_c", "optic_mas_PSO_nv_eo", "optic_mas_PSO_nv_eo_c", "optic_mas_PSO_day", "optic_mas_PSO_nv_day", "optic_mas_term", "optic_mas_MRD", "optic_mas_LRPS",
			
			
			
			
			
			
			
			// Mags
			"30Rnd_556x45_Stanag",
			"20Rnd_556x45_UW_mag",
			"30Rnd_65x39_caseless_mag",
			"30Rnd_65x39_caseless_green",
			"20Rnd_762x51_Mag",
			"7Rnd_408_Mag",
			"5Rnd_127x108_Mag",
			"100Rnd_65x39_caseless_mag",
			"200Rnd_65x39_cased_Box",
			"30Rnd_9x21_Mag",
			"16Rnd_9x21_Mag",
			"RPG32_F",
			"RPG32_HE_F",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_SmokeGreen_Grenade_shell",
			"3Rnd_SmokeGreen_Grenade_shell",
			"HandGrenade_Stone",
			"SmokeShell",
			"SmokeShellGreen",
			"200Rnd_65x39_Belt",
			"ATMine_Range_Mag",
			"APERSMine_Range_Mag",
			"APERSBoundingMine_Range_Mag",
			"SLAMDirectionalMine_Wire_Mag",
			"APERSTripMine_Wire_Mag",
			"ClaymoreDirectionalMine_Remote_Mag",
			"SatchelCharge_Remote_Mag",
			"DemoCharge_Remote_Mag",
			"30Rnd_45ACP_Mag_SMG_01",
			"9Rnd_45ACP_Mag",
			"150Rnd_762x51_Box",
			"11Rnd_45ACP_Mag",
			"6Rnd_45ACP_Cylinder",
			"10Rnd_762x51_Mag",
			"5Rnd_127x108_APDS_Mag",
			"6Rnd_GreenSignal_F",
			"6Rnd_RedSignal_F"
		];
	};
};