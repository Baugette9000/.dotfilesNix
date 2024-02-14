
<p align="center">
  <img src="https://github.com/Baugette9000/.dotfilesNix/assets/119767561/84b31321-43fe-48b7-97ab-dc72e39175b8" width=50% height=50% />
</p>

 
<p align="center">
  <img src="https://img.shields.io/badge/NixOS-Stable-blue?style=flat&logo=nixos&logoColor=%235277C3&labelColor=%233c3836&color=%235277C3&link=https%3A%2F%2Fnixos.org%2F" />
  <img src="https://img.shields.io/badge/Nix%20Flake-enabled-blue?style=flat&logo=nixos&logoColor=%235277C3&label=Nix%20Flake&labelColor=%233c3836&color=%238662fc&link=https%3A%2F%2Fnixos.org%2F" />
<p align="center">
  <img src="https://img.shields.io/badge/source-blue?style=flat&logo=dwm&logoColor=%2383a598&label=Suckless%20Dwm&labelColor=%233c3836&color=%23b16286&link=https%3A%2F%2Fdwm.suckless.org%2Fdwm" />
<p align="center"> 
 ❥ .dotfilesNix
</p>


### Previews: 

<p align ="center">
  <img src="https://github.com/Baugette9000/.dotfilesNix/assets/119767561/c2cf569a-e556-4638-aeff-b950ef4c097e" />
</p>


### *Ricing Shenanigans*
  - **Shell** • ![Bash](https://www.gnu.org/software/bash/) & ![Ble.sh](https://github.com/akinomyoga/ble.sh)
  - **Window Manager** • ![Dwm](https://dwm.suckless.org/)
  - **Terminal** • ![Kitty](https://sw.kovidgoyal.net/kitty/)
  - **Notification Daemon** • ![Dunst](https://github.com/dunst-project/dunst)
  - **Launcher** • ![Rofi](https://github.com/davatorium/rofi)
  - **IDE** • ![NVChad](https://nvchad.com/)
  - **Statusbar** • ![Slstatus](https://tools.suckless.org/slstatus/)

** **
### *Requirements:*
- *Have NixOS Installed (duh!)*
- *Have Home-Manager installed (see https://nix-community.github.io/home-manager/)*


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
    

  ** **

*❥ I love NixOS.*
