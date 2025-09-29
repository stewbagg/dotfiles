# Dotfiles

Personal dotfiles for my WSL Arch Linux setup.

---

## Table of Contents

- [Install Arch Linux WSL](#install-arch-linux-wsl)
- [Configure WSL user](#configure-wsl-user)
- [Configure the system](#configure-the-system)
  - [Locale](#locale)
  - [Pacman](#pacman)
  - [Optimize mirrors with reflector](#optimize-mirrors-with-reflector)
- [Set up Git and SSH](#set-up-git-and-ssh)
- [Install dotfiles and projects](#install-dotfiles-and-projects)

---

## Install Arch Linux WSL

Install Arch from `PowerShell`:

```powershell
wsl --install archlinux
```

Open the newly installed WSL instance.

**Set root password:**

```bash
passwd
```

**Create a new user in the `wheel` group:**

```bash
useradd -m -G wheel -s /bin/bash <username>
passwd <username>
```

**Install essential packages:**

```bash
sudo pacman -Syu neovim openssh git reflector
```

**Enable sudo for `wheel` group:**

```bash
EDITOR=nvim visudo
```

Uncomment:

```conf
%wheel ALL=(ALL) ALL
```

---

## Configure WSL user

Edit `/etc/wsl.conf` and append:

```conf
[user]
default=<username>
```

Restart WSL -- you should now log in as the new user.

---

## Configure the system

### Locale

Edit `/etc/locale.gen` and uncomment:

```conf
en_US.UTF-8 UTF-8
```

Generate locales:

```bash
locale-gen
```

Add to `/etc/locale.conf`:

```conf
LANG=en_US.UTF-8
```

### Pacman

Edit `/etc/pacman.conf` and enable:

```conf
Color
ILoveCandy
```

### Optimize mirrors with reflector

Edit `/etc/xdg/reflector/reflector.conf` with recommended settings:

```conf
--save /etc/pacman.d/mirrorlist
--protocol https
--country US
--latest 10
--sort rate
--fastest 5
```

Run `sudo pacman -Syu` to update package mirrors.

## Set up Git and SSH

Generate SSH key:

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

Show public key (add to Git hosting service):

```bash
cat ~/.ssh/id_ed25519.pub
```

Configure Git:

```bash
git config --global user.email "your_email@example.com"
git config --global user.name "your_user_name"
git config --global push.autoSetupRemote true
```

## Install dotfiles and setup projects directory

Use the Git repo and package list:

```bash
cd ~
rm -rf .bashrc
mkdir projects
git clone git@github.com:stewbagg/dotfiles.git
sudo pacman -S --needed - < ~/dotfiles/pacman/pkglist.txt
stow */
```

## Post-install

Welcome to a fully-functioning development environment inside of Windows using WSL!
