# List the virtual machine.
virsh list

# Check the vCPU pinning.
virsh vcpuinfo csr1kv-1

# Check the NUMA of process qemu
sudo numastat -c qemu
sudo numastat -p pidof

