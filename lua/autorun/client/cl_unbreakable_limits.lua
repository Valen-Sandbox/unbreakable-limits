local net_Receive = net.Receive
local surface_PlaySound = surface.PlaySound
local notification_AddLegacy = notification.AddLegacy

net_Receive( "Valen_UnbreakableLimitsNotif", function()
    surface_PlaySound( "buttons/button10.wav" )
    notification_AddLegacy( "Can't use the Unbreakable tool on this entity!", NOTIFY_ERROR, 2 )
end )