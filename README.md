## *❥ .dotfilesNix*

**Custom NixOS Configuration for Bread's Linux devices**
﻿
### *(Built with an Nvidia GPU in mind)*

<p align="center">
  <img src="https://github.com/Baugette9000/.dotfilesNix/assets/119767561/907dc3bd-ec0f-42cc-8368-e59c83892157" />
</p>

### Previews: 

<p align ="center">
  <img src="https://github.com/Baugette9000/.dotfilesNix/assets/119767561/62cf4b38-9b4c-4357-b027-0921f61774c2" />
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

### *Steps to reproduce* 

    ❥ Git clone the repo into the home folder with:
      $ git clone https://github.com/Baugette9000/.dotfilesNix/ ~/
    
    ❥ Install Home-Manager by following the guide at https://nix-community.github.io/home-manager/index.xhtml#sec-install-standalone
    
    ❥ Once Home-Manager is installed, run this command in the cloned repo:
      $ sudo nixos-rebuild --flake .
    

## *PLEASE NOTE*: Some of the configurations in this repo are forked from other projects. 

  *Repositories I know that are in the configuration:*

  **Slstatus Mental Outlaw - (see, https://github.com/MentalOutlaw/slstatus)**
  
  **Rofi - Most Rofi Configurations come from the Archcraft distro. (see, https://archcraft.io/ or https://github.com/archcraft-os**
  
  **NvChad - NvChad is a Neovim distro. (see, https://nvchad.com/ & https://github.com/NvChad/NvChad)**
 
  **The startpage in the previews is forked from: https://gitlab.com/wolfiy/wlfys-minimal-startpage**

  ** **

*❥ I love NixOS.*
