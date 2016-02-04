#!/bin/sh

for i in `digitalocean droplet list | grep Name | awk '{print $2}'`
do
    if [ $i != "walter-server" ]; then
        echo "Destroying $i ..."
        digitalocean droplet destroy $i
    fi
done

