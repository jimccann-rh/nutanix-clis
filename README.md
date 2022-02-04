# nutanix-clis

To run Nutanix cli tools via podman/docker. No need to install java on your local system. Plus from what I can tell some toolsets are outdated (IE using python 2.7 I'm sure Nutanix will update at some point).


Needed files

nCLI (Nutanix CLI). Download the ncli.zip file from Prism.
aCLI (Acropolis CLI). (nutanix@<CVM_IP_ADDRESS>:/usr/local/nutanix/bin/acli). aCLI also requires the mincli. (nutanix@<CVM_IP_ADDRESS>:/usr/local/nutanix/bin/mincli)


### build

```
./buildit.sh
```

```
Update ssh key and creds and ip's
vi key.pem
vi env.list
```

### usage

```

./runit.sh acli vm.list
./runit.sh acli vm.shutdown test test2

./runit.sh ncli host list
./runit.sh ncli storagepool list

```

A jumping point started from https://github.com/pipoe2h/docker-nutanix-cli-tools But seemed a little dated. Thanks for sharing your code!
