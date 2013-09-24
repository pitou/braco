#!/bin/bash

cd puppet
./create_site_manifest.sh

cd ..
puppet apply --verbose --no-daemonize --onetime --debug puppet/manifests/site.pp

