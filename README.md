## Shared Libraries Experiments

testmachine for experiments:            \
Linux 5.14.11-arch1-1                       \
Docker version 20.10.9, build c2ea9bc90b    \
results in ./pictures                       \
container scheme also there                 \

### different images:

```
$ ./build.sh
$ docker run --name c1 -it cont-1; # ./shared/run.sh
$ docker run --name c2 -it cont-2; # ./shared/run.sh
$ ps -ef | grep shared/main
$ pmap -X <firstProcess>
$ bin/virt <firstProcess> <rxpLibAddress>
$ pmap -X <secondProcess>
$ bin/virt <secondProcess> <rxpLibAddress>
$ ./scripts/cleanup.sh
```
### same image: 

```
$ ./build.sh
$ docker run --name c1 -it cont-1; # ./shared/run.sh
$ docker run --name c2 -it cont-1; # ./shared/run.sh
$ ps -ef | grep shared/main
$ pmap -X <firstProcess>
$ bin/virt <firstProcess> <rxpLibAddress>
$ pmap -X <secondProcess>
$ bin/virt <secondProcess> <rxpLibAddress>
$ ./scripts/cleanup.sh
```

### extended image:

```
$ ./build.sh
$ docker run --name c1 -it cont-1; # ./shared/run.sh
$ docker run --name c2 -it cont-3; # ./shared/run.sh
$ ps -ef | grep shared/main
$ pmap -X <firstProcess>
$ bin/virt <firstProcess> <rxpLibAddress>
$ pmap -X <secondProcess>
$ bin/virt <secondProcess> <rxpLibAddress>
$ ./scripts/cleanup.sh
```

### results:

libs are shared when on same layer, and aren't when on different.
