FROM ghcr.io/crystal-linux/crystal:latest

RUN pacman -S --needed --noconfirm git r

RUN ame ins r-renv

RUN useradd -m -G wheel vscode

RUN bash -c "echo \"vscode ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers"

ENV USER=vscode