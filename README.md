#Kali linux docker image with ssh enabled


This image works with ssh keys
So you need to generate one or use yours

For example:
```
$ ./genkey.sh
$ docker build -t yourtag .
```

This image comes with built-in insecure key
Use it **ONLY** for setting your own and then delete it from *authorized_keys* file

##Run

```
$ docker run -t -i -d -p 2222:22 kabachook/kali-docker-ssh #Add additional ports if you like
```

##Connect to container

```
$ ssh -i key root@<ip> -p 2222
```