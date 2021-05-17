# Prerequisites
install KVM/libvirt
install vagrant
make sure libvirt service is 'Active'; sudo systemctl status libvirtd.service
vagrant plugin install vagrant-libvirt





# Remaining problems
```root@ubuntu1804:/home/vagrant# kubectl -n omec logs spgwu-0 bess-init
+ ip route replace 192.168.251.0/24 via 192.168.252.1
Error: Nexthop has invalid gateway.```
