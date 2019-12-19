# Powershell
## Base64
### Encode
```
[System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes("MY_PLAIN_TEXT"))
```
### Decode
```
[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("MY_ENCODED_TEXT"))
```
## Firewall
### Enable ICMP
```
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow
```
### Enable Specific Port
```
netsh advfirewall firewall add rule name="Open Port 80" dir=in action=allow protocol=TCP localport=80
```
## TLS
### Bypass TLS validation on Web Client request
```
$AllProtocols = [System.Net.SecurityProtocolType]'Ssl3,Tls,Tls11,Tls12'
[System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true}

$wc = New-Object System.Net.WebClient
$wc.DownloadString("https://...")
```
