local IsValid = IsValid
local string_StartsWith = string.StartsWith
local net_Start = net.Start
local net_Send = net.Send

util.AddNetworkString( "Valen_UnbreakableLimitsNotif" )

hook.Add( "CanTool", "Valen_UnbreakableLimits", function( ply, tr, toolName )
    if toolName ~= "unbreakable" then return end
    if not IsValid( ply ) or not IsValid( tr.Entity ) then return end

    local entName = tr.Entity:GetClass()
    local isNotLVS = not string_StartsWith( entName, "lvs_" )
    local isNotSimfphys = entName ~= "gmod_sent_vehicle_fphysics_base" and not string_StartsWith( entName, "DIPRIP - ")
    if isNotLVS and isNotSimfphys then return end

    net_Start( "Valen_UnbreakableLimitsNotif" )
    net_Send( ply )

    return false
end )