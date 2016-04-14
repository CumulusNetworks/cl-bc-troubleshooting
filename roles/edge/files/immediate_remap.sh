#!/bin/bash

#This Script is only relavent for Debian-based VMs that are doing
# interface remapping this script is designed to fix interface
# remapping if it has failed during boot time.

# This script is VERY DISRUPTIVE to network traffic

echo "#################################"
echo "   Performing Immediate Remap"
echo "#################################"

pre_links=$(ip link show | cut -d ":" -f2 | grep "^ " | grep -v "\.")

for link in $pre_links; do
    echo "Downing Link: $link"
    ifdown $link
done
echo -e"\n########## Pre Remap Interface Status ##########"
ip link show | grep -e "^[0-9]"

echo -e "\n>>>>>>> REMAPPING INTERFACES <<<<<<<"

/etc/init.d/rename_eth_swp

post_links=$(ip link show | cut -d ":" -f2 | grep "^ " | grep -v "\.")

for link in $post_links; do
    echo "Bringing Up Link: $link"
    ifup $link
done
echo -e "\n########## Post Remap Interface Status ##########"
ip link show | grep -e "^[0-9]"


echo "#################################"
echo "   Finished"
echo "#################################"

