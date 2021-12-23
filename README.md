# Introduction
Using Visual Studio Code's new [Remote Containers](https://code.visualstudio.com/docs/remote/remote-overview) features, this repository is an example of how to utilize the VSCode functionality to run a complete development environment using containers. Please note that other than having VSCode (currently VSCode Insiders), the VSCode "Remote Development" plugin, and Docker (tested on Docker for macOS) installed, there are no other local dependencies.

---

## Prerequisites
1. Install and configure [Docker](https://www.docker.com/get-started) for your operating system.

<ul>

**Windows / macOS:**

1. Install [Docker Desktop for Mac/Windows](https://www.docker.com/products/docker-desktop).
2. If you are using WSL 2 on Windows, to ensure the [WSL 2 back-end](https://aka.ms/vscode-remote/containers/docker-wsl2) is enabled: Right-click on the Docker taskbar item and select **Settings**. Check **Use the WSL 2 based engine** and verify your distribution is enabled under **Resources > WSL Integration**.
3. When not using the WSL 2 back-end, right-click on the Docker task bar item, select **Settings** and update **Resources > File Sharing** with any locations your source code is kept. See [tips and tricks](https://code.visualstudio.com/docs/remote/troubleshooting#_container-tips) for troubleshooting.

**Linux**
1. Follow the [official install instructions for Docker CE/EE for your distribution](https://docs.docker.com/install/#supported-platforms). If you are using Docker Compose, follow the [Docker Compose directions](https://docs.docker.com/compose/install/) as well.
2. Add your user to the `docker` group by using a terminal to run: `sudo usermod -aG docker $USER`
3. Sign out and back in again so your changes take effect.
</ul>

2. Install [Visual Studio Code](https://code.visualstudio.com/) or [Visual Studio Code Insiders](https://code.visualstudio.com/insiders/).
3. Install [Remote Development extension pack](https://aka.ms/vscode-remote/download/extension).

---

## Start development environment

1. Clone this repository and open the directory in VSCode
2. When prompted or via the Command Pallette, select `Reopen in Container` or `Rebuild and Reopen in Container`

This step will download the terraform images from Docker Hub, build the container image, install necessary vscode extensions and mount the working directory to running application container.

With the vs code window open with files inside container, we can interact with the terraform.

---

## Benefits

- No need to install terraform in local machine.
- Easy to maintain and update the terraform version. *Update image version in Dockerfile*
- Can install necessary linting expensions or packages within the container.
