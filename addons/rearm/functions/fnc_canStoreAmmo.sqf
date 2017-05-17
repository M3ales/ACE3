/*
 * Author: GitHawk
 * Check if a unit can store ammo in an ammo truck.
 *
 * Arguments:
 * 0: Target <OBJECT>
 * 1: Unit <OBJECT>
 *
 * Return Value:
 * Can Store Ammo <BOOL>
 *
 * Example:
 * [ammo_truck, player] call ace_rearm_fnc_canStoreAmmo
 *
 * Public: No
 */
#include "script_component.hpp"

params [
    ["_truck", objNull, [objNull]],
    ["_unit", objNull, [objNull]]
];

!(isNull _unit ||
    {!alive _target} || 
    {!(_unit isKindOf "CAManBase")} ||
    {!local _unit} ||
    {(_truck distance _unit) > REARM_ACTION_DISTANCE} ||
    {isNull (_unit getVariable [QGVAR(dummy), objNull])})
