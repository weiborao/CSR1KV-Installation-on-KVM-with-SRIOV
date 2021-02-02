echo cat ens1f0_sriov_pool.xml
cat ens1f0_sriov_pool.xml

sleep 5

echo " # Define SRIOV pools
virsh net-define ens1f0_sriov_pool.xml
virsh net-start ens1f0_sriov_pool
virsh net-autostart ens1f0_sriov_pool

virsh net-define ens1f1_sriov_pool.xml
virsh net-start ens1f1_sriov_pool
virsh net-autostart ens1f1_sriov_pool

# List network
virsh net-list
virsh net-dumpxml ens1f0_sriov_pool
"
sleep 2

virsh net-define ens1f0_sriov_pool.xml
sleep 1
virsh net-start ens1f0_sriov_pool
virsh net-autostart ens1f0_sriov_pool

virsh net-define ens1f1_sriov_pool.xml
sleep 1
virsh net-start ens1f1_sriov_pool
virsh net-autostart ens1f1_sriov_pool

# List network
virsh net-list
virsh net-dumpxml ens1f0_sriov_pool
