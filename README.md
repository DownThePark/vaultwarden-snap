# Vaultwarden Snap
[![vaultwarden](https://snapcraft.io/vaultwarden/badge.svg)](https://snapcraft.io/vaultwarden)

## Introduction

This is a community-made snap for [Vaultwarden](https://github.com/dani-garcia/vaultwarden), made by repackaging the Vaultwarden binary and Web Vault files from the official Vaultwarden Docker image. This brings you the benefits of the snap packaging format by providing strict confinement security, automatic updates, and more.

## Installation
[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/vaultwarden)

Vaultwarden can be installed from the Snap Store using the following command:
```
sudo snap install vaultwarden
```

## Getting Started

### Configuration
The configuration file can be found at `/var/snap/vaultwarden/current/vaultwarden.conf`. This file allows you to update the the listening address, port number, database settings, signup permissions, and SMTP settings.

For a full list of available options, see the upstream [.env.template](https://github.com/dani-garcia/vaultwarden/blob/main/.env.template) file.

### Web UI and Clients
By default, Vaultwarden listens on `127.0.0.1:8000`. Bitwarden clients require HTTPS support. It's recommended to run Vaultwarden behind an HTTPS reverse proxy.

To run Vaultwarden standalone, follow these steps:

#### 1. Copy Certificates
Copy over your certificate files to `/var/snap/vaultwarden/current/ssl/`
```
sudo cp vault.example.com.crt /var/snap/vaultwarden/current/ssl/certs.pem
sudo cp vault.example.com.key /var/snap/vaultwarden/current/ssl/key.pem
```

#### 2. Enable HTTPS Support
Open `/var/snap/vaultwarden/current/vaultwarden.conf`, and update the following parameters.
```
ROCKET_ADDRESS=0.0.0.0
ROCKET_PORT=443
DOMAIN=https://vault.example.com
ROCKET_TLS={certs="/var/snap/vaultwarden/current/ssl/certs.pem",key="/var/snap/vaultwarden/current/ssl/key.pem"}
```

#### 3. Apply Changes
After any changes are made, the service must be restarted for your changes to take effect.
```
sudo snap restart vaultwarden
```
