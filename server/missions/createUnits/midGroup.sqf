//	@file Version: 1.1
//	@file Name: midGroup.sqf
//	@file Author: DaEMON
//	@file Created: 08/12/2012 21:58
//	@file Args:

private ["_group","_pos","_leader","_man2","_man3","_man4","_man5","_man6","_man7"];

_group = _this select 0;
_pos = _this select 1;

//Anti Vehicle
_leader = _group createunit ["INS_Commander", [(_pos select 0) + 10, _pos select 1, 0], [], 0.5, "Form"];

//Support
_man2 = _group createunit ["INS_Soldier_AR", [(_pos select 0) - 30, _pos select 1, 0], [], 0.5, "Form"];

//Rifle_man
_man3 = _group createunit ["INS_Soldier_1", [_pos select 0, (_pos select 1) + 30, 0], [], 0.5, "Form"];

//Rifle_man
_man4 = _group createunit ["INS_Soldier_2", [_pos select 0, (_pos select 1) + 40, 0], [], 0.5, "Form"];

//Rifle_man
_man5 = _group createunit ["INS_Soldier_Medic", [_pos select 0, (_pos select 1) + 40, 0], [], 0.5, "Form"];

//Sniper
_man6 = _group createunit ["INS_Soldier_Sniper", [_pos select 0, (_pos select 1) - 30, 0], [], 0.5, "Form"];

//Grenadier
_man7 = _group createunit ["INS_Soldier_GL", [_pos select 0, (_pos select 1) - 40, 0], [], 0.5, "Form"];

_leader = leader _group;
_man1 setVehicleInit "null = [group this,(getPos this)] execVM 'server\functions\defendArea.sqf'";
processInitCommands;
