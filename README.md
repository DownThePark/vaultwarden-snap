# Vaultwarden Snap
[![vaultwarden](https://snapcraft.io/vaultwarden/badge.svg)](https://snapcraft.io/vaultwarden)

## Introduction

This is a community-developed snap for the [Vaultwarden](https://github.com/dani-garcia/vaultwarden) project, made with the aim to provide a stable, secure, and simple experience.

## Features
- Strict confinement (only uses the `network` and `network-bind` interfaces)
- Support for the `amd64`, `arm64`, and `armhf` CPU architectures
- Automatic updates following new upstream releases

## Installation
[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/vaultwarden)

Vaultwarden can be installed from the Snap Store using the following command:

    sudo snap install vaultwarden

>[!Note]
>By default, Vaultwarden listens on `127.0.0.1:8000`. If you would like to change this, you can do so by editing the respective values via `/var/snap/vaultwarden/current/vaultwarden.conf`