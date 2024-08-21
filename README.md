# Vaultwarden Snap
[![vaultwarden](https://snapcraft.io/vaultwarden/badge.svg)](https://snapcraft.io/vaultwarden)

## Introduction

This is a snap for the [Vaultwarden](https://github.com/dani-garcia/vaultwarden) project, made by repackaging the Vaultwarden binary and Web Vault files from the official Vaultwarden Docker image. This snap brings the benefits of the snap packaging format to Vaultwarden by providing strict confinement security, automatic updates, and more.

## Installation
[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/vaultwarden)

This snap can be installed from the Snap Store using the following command:
```
sudo snap install vaultwarden
```
## Configuration
The configuration file can be found at: `/var/snap/vaultwarden/current/vaultwarden.conf`.

This file allows you to update the listening address, port, database settings, and more. For a full list of available options, see [here](https://github.com/dani-garcia/vaultwarden/blob/main/.env.template).
 
After making any changes, be sure to restart Vaultwarden (so your changes take effect):
```   
sudo snap restart vaultwarden
```
