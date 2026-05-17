# SageGetNordWireGuardServer
Returns the recommeneded NordVPN Wireguard Server for your location

If you want different countries change the ID:

Example:

Invoke-RestMethod -Uri "https://api.nordvpn.com/v1/servers/recommendations?filters[servers_technologies][identifier]=wireguard_udp&filters[country_id]=38&limit=1"

Country_id=38 

38 is Canada
228 is USA
195 is singapore

Run in ISE.
