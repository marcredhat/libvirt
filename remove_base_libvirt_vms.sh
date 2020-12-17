#!/bin/bash

for i in $( sudo virsh list --all | grep base  | awk '{print $2}' );
do
    virsh destroy  $i
    virsh undefine $i
done
