echo "# Check the system capabilities

virsh capabilities
"
virsh capabilities | more

echo "
# Check the NUMA info.

numactl --hardware
"
numactl --hardware | more

sleep 2

echo "
# Check the NUMA of NIC Card.
sudo lspci -vv | grep Ethernet -A 6
"
sudo lspci -vv | grep Ethernet -A 6 | more

sleep 2

echo "
# Check the memory info, hugepage

cat /proc/meminfo | grep Huge
"

cat /proc/meminfo | grep Huge

sleep 2

echo "
# Show teh xml file.

cat ~/kvm/csr1kv-1.xml | more
"
cat ~/kvm/csr1kv-1.xml | more

