# SSH

## key
### generate
```
ssh-keygen -t rsa -b 2048
```
### login
```
ssh -i [KEY] [USERNAME]@[MACHINE]
```
## file
### copy
```
scp -i [KEY] -r [USERNAME]@[MACHINE]:[FROM] [TO]
```
