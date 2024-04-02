# Vaultwarden Snap
[![vaultwarden](https://snapcraft.io/vaultwarden/badge.svg)](https://snapcraft.io/vaultwarden)

## Introduction

This is a community-developed snap for the [Vaultwarden](https://github.com/dani-garcia/vaultwarden) project, made by repacking the Vaultwarden binary and Web Vault from the official Vaultwarden Docker image.

## Features
- Strict confinement
- Support for multiple CPU architectures
- Automatic builds following new upstream releases

## Installation
[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/vaultwarden)

This snap can be installed from the Snap Store using the following command:

    sudo snap install vaultwarden

>[!Note]
>By default, Vaultwarden listens on `127.0.0.1:8000`. If you would like to change this, you can do so by editing the respective values via `/var/snap/vaultwarden/current/vaultwarden.conf`. For a full list of available options, see [here](https://github.com/dani-garcia/vaultwarden/blob/main/.env.template).
