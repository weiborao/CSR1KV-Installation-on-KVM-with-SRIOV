echo " # Disable apparmor
sudo systemctl disable apparmor
"
sudo systemctl disable apparmor

sleep 1

echo " # You can find the vmx on Intel platform, or svm on AMD platform.
echo egrep -o '(vmx|svm)' /proc/cpuinfo | sort | uniq
"
egrep -o '(vmx|svm)' /proc/cpuinfo | sort | uniq

sleep 1

echo "# Disable firewall.
echo sudo systemctl stop ufw
"
sudo systemctl stop ufw

sleep 1

echo sudo systemctl disable ufw
sudo systemctl disable ufw

sleep 1
echo "# Config sysctl.conf
echo cat /etc/sysctl.conf
"
cat /etc/sysctl.conf

sleep 1
echo "# Install KVM on ubuntu 20.04
sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager numactl virt-top
"
sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager numactl virt-top

sleep 1

echo " # Check the version of KVM
echo libvirtd -V
"
libvirtd -V
echo qemu-system-x86_64 --version
qemu-system-x86_64 --version
echo virt-manager --version
virt-manager --version
