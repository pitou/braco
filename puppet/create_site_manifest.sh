#!/bin/bash

if [ -e manifests/provisioning_vagrant.pp ] then
  rm manifests/provisioning_vagrant.pp
fi

if [ -e manifests/site.pp ] then
  rm manifests/site.pp
fi

cat manifests/*.pp > manifests/site.pp

