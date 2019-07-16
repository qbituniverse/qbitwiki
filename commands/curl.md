# curl
## loop
### for each
```
for ((i=1;i<=100;i++)); do curl -k "http://URL"; done;
```
### infinite (curl)
```
while true; do curl -k "http://URL"; done;
```
### infinite (busybox)
```
while true; do wget -q -O- http://URL; done
```
