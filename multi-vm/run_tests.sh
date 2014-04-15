#!/bin/sh

for vm in foo bar
do
    echo "Waking up $vm ..."
    vagrant up $vm
    rake spec:$vm
    vagrant destroy -f $vm
done
