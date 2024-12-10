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

## Service Descriptions

- **Docker Compose**: A tool for defining and running multi-container Docker applications using a simple YAML configuration file.  
- **Portainer**: A lightweight management UI for Docker that simplifies container deployment and monitoring.  
- **Bookstack**: An open-source knowledge management platform for creating and organizing documentation and wikis.  
- **Gitbucket**: A self-hosted Git platform for version control, similar to GitHub.  
- **Keycloak**: An Identity management solution. 
- **Ollama**: An AI platform providing tools and services for conversational AI and language processing.  
- **Nextcloud**: A self-hosted file sharing and collaboration platform for secure and private cloud storage.  
- **Jellyfin**: A free and open-source media server for managing and streaming digital media content.  
- **Element**: A secure messaging and collaboration app built on the Matrix protocol for decentralized communication.  
- **Vault**: A secrets management tool for securely storing and accessing sensitive information such as API keys, passwords, and certificates.  
- **Guacamole**: A clientless remote desktop gateway that provides secure access to desktops and servers via a web browser.  
- **TAK (Team Awareness Kit)**: TAK is the core of a suite of georeferenced imagery and communications tools that allow for scaled operational planning, data sharing, visualized elevation data, and target management. 
- **ICE (Instant Connect Now)**: Stay connected with the world's leading interoperable tactical communications platform for military, government, and industry. Secure, reliable, and tailored to the specialized needs of elite teams. 
- **Vidterra Compass**: COMPASS makes video distribution simple by using intelligent software to replace complex network routing.

## Getting Started
1. Clone this repository:
```bash
git clone [https://placeholder.com/donotuse](https://github.com/Spectrewolf2/Selfhost)
cd /service folder 

or

cd /Automated
```

2. Navigate to the folder for the service you want to host and follow the instructions in its guide.
3. Set up and customize your self-hosted environment to suit your needs.

## Community and Contributions
We welcome contributions! If you have suggestions for new services, improvements to existing guides, or general feedback, please open an issue or submit a pull request.



## Additional Resources
* [Ollama Documentation](https://ollama.ai/docs)
* [Jellyfin Documentation](https://jellyfin.org/docs)
* [Portainer] (https://www.portainer.io/)
* [Rancher] (https://www.rancher.com/)
* [Docker-Compose] (https://docs.docker.com/compose/)
