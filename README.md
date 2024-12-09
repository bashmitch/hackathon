# Team Hacarrot

## What is the design goal of this project?
The goal of this project is to establish an environment capable of acting as a Common Operating Picture (COP) via TAK and serving communications via ICE, Element, and Compass. Additionally, it aims to host file storage, serve media, and provide AI chat services. Other included features are:

- VPN
- Authentication
- Secrets management
- Local version control
- Wiki

This entire project is designed to be:
- **FOSS** (Free and Open Source Software)
- **Self-hosted**
- **Scalable**

The project, detailed in Bash scripting, Infrastructure as Code (IaC), and automation playbooks, streamlines the deployment process to require little to no user interaction, reducing the potential for human error. It can be deployed across multiple nodes and federated to increase accessibility.

---

## Requirements
This project requires the following:

- **Hardware:** Running Harvester to deploy your initial Linux machine.
- **Linux Machine:** Running Ubuntu 22.04 to pull the GitHub repository and run its components.

### Assumptions
This guide assumes:
- You have the necessary software installed.
- You have an internet connection. (Alternatively, the required files can be provided locally via USB or CD upon request.)

### Required Software:
- `git`

---

## Services Deployed
The following services are deployed as part of the project:

- **Docker Compose**
- **Portainer**
- **Bookstack**
- **Gitbucket**
- **TAK**
- **ICE**
- **VidTerra Compass**
- **Cloudflare**
- **Ollama**
- **Nextcloud**
- **Jellyfin**
- **Element**
- **Vault**
- **Guacamole**
