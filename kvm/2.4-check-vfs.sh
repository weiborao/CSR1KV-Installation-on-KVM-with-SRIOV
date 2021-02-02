echo "# Check from the lspci
sudo lspci | grep -i Virtual
"
sudo lspci | grep -i Virtual

sleep 1

echo "
# Check from ip link
sudo ip link show | grep -B2 vf
"
sudo ip link show | grep -B2 vf

sleep 1

echo "
# Check the VFs' name
ip link show | grep -E ens1f[0,1]v[0,1] -A 1
"
ip link show | grep -E ens1f[0,1]v[0,1] -A 1

echo "
# Set the MTU of the VFs and disable ipv4.
sudo nmcli connection modify ens1f0v0 ethernet.mtu 9216 ipv4.method disabled
sudo nmcli connection modify ens1f0v1 ethernet.mtu 9216 ipv4.method disabled
sudo nmcli connection modify ens1f1v0 ethernet.mtu 9216 ipv4.method disabled
sudo nmcli connection modify ens1f1v1 ethernet.mtu 9216 ipv4.method disabled
sudo nmcli connection up ens1f0v0
sudo nmcli connection up ens1f0v1
sudo nmcli connection up ens1f1v0
sudo nmcli connection up ens1f1v1

# Check the connection
sudo nmcli connection show ens1f0v0
"
sleep 1
sudo nmcli connection show ens1f0v0
