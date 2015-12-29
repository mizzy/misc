#!/bin/sh

for i in `digitalocean droplet list | grep Name | awk '{print $2}'`
do
    echo "Destroying $i ..."
    digitalocean droplet destroy $i
done

