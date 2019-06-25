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
