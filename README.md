# Description
The ONF's opencord project provides a demonstration environment called 'COMAC in a Box' (CiaB). At the time of writing, this script is not functional anymore due to multiple API changes of underlying software (K8S, helm, Multus etc.) since it was last maintained. This repository provides a set of code changes to make the setup deployable on the current versions of kubespray and helm. This is not planned to be maintained but since the chart and Docker image versions are hardcoded, it should be fairly robust regarding updates.
Since nested virtualuzation is required, this setup only runs with libvirt/KVM.

# Prerequisites
install KVM/libvirt
install vagrant
make sure libvirt service is 'Active'; sudo systemctl status libvirtd.service
vagrant plugin install vagrant-libvirt
vagrant up

# Work and credits
This work consists of a variety of fixes and changes for the sub repositories. The helm charts 'omec-control-plane' 0.1.31 and 'omec-user-plane' in version 0.1.6 have been downloaded, extracted and modified, the original charts are available at https://charts.opencord.org. All credits to the original authors, the original licenses apply, check https://github.com/opencord for up-to-date information.
Members of the CORD projects are welcome to incorporate any of my fixes.
