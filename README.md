# Prerequisites
install KVM/libvirt
install vagrant
make sure libvirt service is 'Active'; sudo systemctl status libvirtd.service
vagrant plugin install vagrant-libvirt





# Remaining problems
```root@ubuntu1804:/home/vagrant# kubectl -n omec logs spgwc-0
+ mkdir -p /opt/cp/config
+ cd /opt/cp/config
+ cp /etc/cp/config/adc_rules.cfg /etc/cp/config/cp_config.cfg /etc/cp/config/interface.cfg /etc/cp/config/meter_profile.cfg /etc/cp/config/pcc_rules.cfg /etc/cp/config/sdf_rules.cfg /etc/cp/config/app_config.cfg .
+ sed -i s/CP_ADDR/192.168.84.9/g interface.cfg
+ . cp_config.cfg
++ '[' '!' -d /dev/hugepages ']'
++ MEMORY='--no-huge -m 14404'
+++ taskset -p 1
+++ awk '{print $NF}'
++ CORES='-c ff'
++ EAL_ARGS='-c ff --no-huge -m 14404 --no-pci'
++ MGMT_INFO='-s 192.168.84.9 -w 192.168.251.3'
++ APN_INFO='-i 10.250.0.0 -p 255.255.0.0 -a internet'
++ MISC='-l 2'
++ SPGW_CFG='-d 03'
++ CONFIG_UPDATE_FOLDER='-f /etc/cp/config/'
++ APP_ARGS='-s 192.168.84.9 -w 192.168.251.3 -i 10.250.0.0 -p 255.255.0.0 -a internet -l 2 -d 03 -f /etc/cp/config/'
+ ngic_controlplane -c ff --no-huge -m 14404 --no-pci -- -s 192.168.84.9 -w 192.168.251.3 -i 10.250.0.0 -p 255.255.0.0 -a internet -l 2 -d 03 -f /etc/cp/config/
rte_virtio_pmd_init(): IOPL call failed - cannot use virtio PMD
ERROR: This system does not support "F16C".
Please check that RTE_MACHINE is set correctly.
EAL: FATAL: unsupported cpu type.
EAL: unsupported cpu type.
PANIC in main():
Cannot init EAL
5: [ngic_controlplane(_start+0x2a) [0x556edc4e22ba]]
4: [/lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xe7) [0x7fce22e4bb97]]
3: [ngic_controlplane(main+0x4f9) [0x556edc4de6f9]]
2: [ngic_controlplane(__rte_panic+0xc5) [0x556edc4d89d2]]
1: [ngic_controlplane(rte_dump_stack+0x2e) [0x556edc53891e]]
/opt/cp/scripts/spgwc-run.sh: line 16:    13 Aborted                 (core dumped) ngic_controlplane $EAL_ARGS -- $APP_ARGS```
