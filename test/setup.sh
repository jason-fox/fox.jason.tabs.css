#!/bin/sh
# This file is part of the DITA-OT CSS Tabs Plug-in project.
set -e

apt-get update -q
export DEBIAN_FRONTEND=noninteractive
apt-get install -qy --no-install-recommends nodejs
nodejs -v