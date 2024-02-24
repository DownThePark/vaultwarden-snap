#!/bin/bash

# Create the data directory
mkdir $SNAP_DATA/data

# Create a directory for storing SSL files
mkdir $SNAP_DATA/ssl

# Copy the .env file to the data directory
cp $SNAP/etc/env.template $SNAP_DATA/.env

# Create symlink to .env
cd $SNAP_DATA
ln -s .env vaultwarden.conf
