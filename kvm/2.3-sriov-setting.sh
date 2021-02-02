echo "# Set the VFs numbers:
sudo nmcli connection modify ens1f0 sriov.total-vfs 2
sudo nmcli connection modify ens1f1 sriov.total-vfs 2

# Set the mac address(optional) and trust=true.
sudo nmcli connection modify ens1f0 sriov.vfs '0 mac=b6:4f:02:37:5a:d8 trust=true, 1 mac=26:04:1d:1f:3d:a9 trust=true'
sudo nmcli connection modify ens1f0 sriov.vfs '0 mac=76:6c:4e:16:7f:e2 trust=true, 1 mac=6a:f2:bd:97:71:65 trust=true'

# Set the connection up
sudo nmcli connection up ens1f0
sudo nmcli connection up ens1f1

# Check the connection and the link
sudo nmcli connection show ens1f0
sudo nmcli connection show ens1f1
"
echo sudo ip link show dev ens1f0
sudo ip link show dev ens1f0

echo sudo ip link show dev ens1f1
sudo ip link show dev ens1f1

sleep 2

echo "# After reboot, check the dmesg
sudo dmesg | grep -i vf | more
"

sudo dmesg | grep -i vf | more
