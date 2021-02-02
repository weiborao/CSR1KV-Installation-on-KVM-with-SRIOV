echo "# Check the NIC hardware infor.
sudo lshw -c network -businfo
"
sudo lshw -c network -businfo
sleep 1

echo "
# Check the capabilities of NIC
sudo lspci -vv -s 5e:00.0 | grep -A 5 -i SR-IOV
"
sudo lspci -vv -s 5e:00.0 | grep -A 5 -i SR-IOV
