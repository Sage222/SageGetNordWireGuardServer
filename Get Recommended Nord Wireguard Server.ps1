# Get recommended WireGuard server
$server = Invoke-RestMethod -Uri "https://api.nordvpn.com/v1/servers/recommendations?&filters[servers_technologies][identifier]=wireguard_udp&limit=1"
$server | ForEach-Object {
    $wg = $_.technologies | Where-Object { $_.identifier -eq 'wireguard_udp' }
    [pscustomobject]@{
        Name      = $_.name
        IP        = $_.station
        PublicKey = ($wg.metadata | Where-Object { $_.name -eq 'public_key' }).value
        Load      = $_.load
    }
}