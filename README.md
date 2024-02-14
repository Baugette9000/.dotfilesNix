## *❥ .dotfilesNix*

**Custom NixOS Configuration for Bread's Linux devices**
﻿
### *(Built with an Nvidia GPU in mind)*

<p align="center">
  <img src="https://github.com/Baugette9000/.dotfilesNix/assets/119767561/907dc3bd-ec0f-42cc-8368-e59c83892157" />
</p>

### Previews: 

<p align ="center">
  <img src="https://github.com/Baugette9000/.dotfilesNix/assets/119767561/c2cf569a-e556-4638-aeff-b950ef4c097e" />
</p>


** **
### *Requirements:*
- *Have NixOS Installed (duh!)*
- *Have Home-Manager installed (see https://nix-community.github.io/home-manager/)*

***List of programs in the configuration.nix:***

    - vim ( For Fallbacks with sudo, but nvim is preferred )
    - wget
    - meson 
    - ninja
    - cmake 
    - devour
    - pkg-config
    - libnotify
    - dwmblocks
    - floorp
    - firefox ( Commented out by Default for easy switching between Floorp and Firefox )
    - vesktop ( Custom Discord Client )
    - ncspot
    - git
    - pciutils
    - pavucontrol
    - htop
    - kitty
    - rofi 
    - dmenu
    - neovim
    - ranger
    - dunst
    - mpd
    - acpi
    - cbonsai
    - cmatrix  
    - pipes
    - scrot
    - acpi
    - slstatus ( Suckless status toolbar )
    - unixtools.top
    - st 
    - feh 
    - flatpak
    - neofetch
    - gnumake
    - python3
    - rustup
    - rustc
    - libsForQt5.bismuth
    - playerctl
    - gccgo12 ( gcc compilers for use with DWM )
    - gccgo13
    - gccgo
    - gcc9
    - gcc_multi
    - opentabletdriver ( I am an artist, so I have OTD and Krita in my configuration.nix )
    - krita
    - xorg.libX11 ( X11 )
    - xorg.libX11.dev
    - xorg.libxcb
    - xorg.libXft
    - xorg.libXinerama
    - xorg.xinit
    - xorg.xinput
    - maim
    - xclip
    - openrgb ( Configuring RGB with proprietary components )
    - unclutter
    - redshift

### *Mini Wiki* 
❥ Git clone the repo into the home folder with:

    $ git clone https://github.com/Baugette9000/.dotfilesNix/ ~/
    

❥ Install Home-Manager by running these commands:

(Run unstable at your own digression, as I have not tested the unstable branch with my configs.)

    $ nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz home-manager
    (For unstable run; 'nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager')
    $ nix-channel --update
    $ nix-shell '<home-manager>' -A install (You may have to log out first for this to work)

❥ Change the Directory to "nixos" and run:
    
    $ rm -rf hardware-configuration.nix
    $ cp -r /etc/nixos/hardware-configuration.nix .
   
❥ Once Home-Manager is installed and you have replaced the hardware-configuration.nix, run these commands in the cloned repo:
  
    $ home-manager switch --flake .
    $ sudo nixos-rebuild switch --flake .
    

## *PLEASE NOTE*: Some of the configurations in this repo are forked from other projects. 

  *Repositories I know that are in the configuration:*

  **Slstatus Mental Outlaw - (see, https://github.com/MentalOutlaw/slstatus)**
  
  **Rofi - Most Rofi Configurations come from the Archcraft distro. (see, https://archcraft.io/ or https://github.com/archcraft-os**
  
  **NvChad - NvChad is a Neovim distro. (see, https://nvchad.com/ & https://github.com/NvChad/NvChad)**
 
  **The startpage in the previews is forked from: https://gitlab.com/wolfiy/wlfys-minimal-startpage**

  ** **

*❥ I love NixOS.*
