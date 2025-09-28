# Dotfiles

Personal dotfiles for my WSL Arch Linux setup.

## Initial Setup

1. **Set up root and user accounts**

   Create a root password:

   ```bash
   passwd
   ```

   Create a new user in the `wheel` group and set a password:

   ```bash
   useradd -m -G wheel -s /bin/bash <username>
   passwd <username>
   ```

   Edit `visudo` to allow `wheel` group users to run any command:

   ```bash
   EDITOR=nvim visudo
   ```

   Uncomment:

   ```
   %wheel ALL=(ALL) ALL
   ```

2. **Set default WSL user**

   Edit `/etc/wsl.conf` and append:

   ```
   [user]
   default=<username>
   ```

3. **Restart terminal**  
   Close WSL and reopen it — you should now log in as the new user.

4. **Set locale**

   Edit `/etc/locale.gen` and uncomment:

   ```
   en_US.UTF-8 UTF-8
   ```

   Generate locales:

   ```bash
   locale-gen
   ```

   Add to `/etc/locale.conf`:

   ```
   LANG=en_US.UTF-8
   ```

5. **Configure pacman**

   Edit `/etc/pacman.conf` and add:

   ```
   ILoveCandy
   ```

6. **Install packages**

   Use the provided package list:

   ```bash
   sudo pacman -S - < pkglist.txt
   ```

7. **Optimize mirrors with reflector**

   Edit `/etc/xdg/reflector/reflector.conf` with recommended settings:

   ```
   # Save the mirrorlist
   --save /etc/pacman.d/mirrorlist

   # Use HTTPS protocol
   --protocol https

   # Select country (adjust as needed)
   --country US

   # Use the 10 most recently synchronized mirrors
   --latest 10

   # Sort by download rate
   --sort rate

   # Pick only the 5 fastest mirrors
   --fastest 5
   ```

8. **Set up Git for remote development**

   Generate SSH key:

   ```bash
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```

   Configure Git identity:

   ```bash
   git config --global user.email "your_email@example.com"
   git config --global user.name "your_user_name"
   ```

   Add the public key to your Git hosting service.

   Test connection:

   ```bash
   ssh -T git@github.com
   ```

## Organizing Projects and Dotfiles

1. **Create a development folder structure**

   ```bash
   mkdir -p ~/projects
   mkdir -p ~/dotfiles
   ```

2. **Clone the dotfiles repository**

   ```bash
   git clone git@github.com:stewbagg/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

3. **Manage the dotfiles with GNU Stow**

   ```bash
   stow */
   ```
