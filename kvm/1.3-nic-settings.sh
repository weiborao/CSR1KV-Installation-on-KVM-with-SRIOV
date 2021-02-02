
echo cat /etc/netplan/00-installer-config.yaml
cat /etc/netplan/00-installer-config.yaml

# Edit the yaml file:
# Let NetworkManager manage all devices on this system
# network:
#  version: 2
#  renderer: NetworkManager

echo sudo netplan apply
echo "
# Set the NIC with nmcli

sudo nmcli connection modify netplan-eno1 ipv4.method manual ipv4.addresses 10.75.59.50/24 ipv4.gateway 10.75.59.1 ipv4.dns 64.104.123.245
sudo nmcli connection modify netplan-eno1 connection.id eno1
sudo nmcli connection up eno1
sudo nmcli connection
"
echo "
# Set the MTU and disable ipv4 for the NIC to enable SRIOV. 
sudo nmcli connection modify ens1f0 ethernet.mtu 9216
sudo nmcli connection modify ens1f0 ipv4.method disabled
sudo nmcli connection up ens1f0
sudo ip link show ens1f0

sudo nmcli connection modify ens1f1 ethernet.mtu 9216
sudo nmcli connection modify ens1f1 ipv4.method disabled
sudo nmcli connection up ens1f1
sudo ip link show ens1f1
"
