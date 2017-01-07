#Kali linux docker image with ssh enabled#Kali linux docker image with ssh enabled

This image works with ssh keys
So you need to generate one or use yours

For example:
```
$ ./genkey.sh
$ docker build -t yourtag .
```

This image comes with built-in insecure key
Use it **ONLY** for setting your own and then delete it from *authorized_keys* file