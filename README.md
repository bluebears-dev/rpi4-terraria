# rpi4-terraria

* <https://terraria.fandom.com/wiki/Server#How_to_(Linux)>

## Sending commands

<https://serverfault.com/questions/885765/how-to-send-text-to-stdin-of-docker-container>  

```bash
echo "save" | socat EXEC:"docker attach 37db8473843ca23cf70875e70be8cef915da41e8c0655a8f284c445d957954b9",pty STDIN
```
