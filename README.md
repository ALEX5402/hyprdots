###### *<div align = right><sub>// design by t2</sub></div>*
<div align = center><img src="https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/hyprdots_banner.png"><br><br>

&ensp;[<kbd> <br> Install <br> </kbd>](#Installation)&ensp;
&ensp;[<kbd> <br> Themes <br> </kbd>](#Themes)&ensp;
&ensp;[<kbd> <br> Styles <br> </kbd>](#Styles)&ensp;
&ensp;[<kbd> <br> Keybindings <br> </kbd>](#Keybindings)&ensp;
&ensp;[<kbd> <br> Youtube <br> </kbd>](#Youtube)&ensp;
&ensp;[<kbd> <br> Wiki <br> </kbd>](https://github.com/alex5402/hyprdots/wiki)&ensp;
<br><br><br><br></div>

![image](https://github.com/ALEX5402/hyprdots/assets/76860596/d5d718e2-fdec-4750-a0e0-29b1c374d33d)
![image](https://github.com/ALEX5402/hyprdots/assets/76860596/e7dbde4e-af5b-4ff0-9230-22a53ba842e1)


<https://user-images.githubusercontent.com/106020512/235429801-e8b8dae2-c1ad-4e23-9aa2-b1edb6cabe99.mp4>

<p align="center">
    <img align="center" width="49%" src="https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/showcase_1.png" /> <img align="center" width="49%" src="https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/showcase_2.png" />
    <img align="center" width="49%" src="https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/showcase_3.png" /> <img align="center" width="49%" src="https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/showcase_4.png" />
</p>

https://github.com/alex5402/hyprdots/assets/106020512/c995699a-299c-4a8e-99d4-71aa3d68eb93


<div align = right> <br><br>

[<kbd> <br> 🡅 <br> </kbd>](#-design-by-t2)
</div>

## Installation

The installation script is made for Arch, but **may** work on some Arch based distros with **systemd**.
For Debian, please refer **Senshi111**'s version [here](https://github.com/Senshi111/debian-hyprland-hyprdots).
Checkout **Ksk**'s [video](https://www.youtube.com/watch?v=mb8h1-LB9K0) for full installation walkthrough.

> [!IMPORTANT]
> some config files need to copy manually if there are not there so please check the configs after install
> Install script will auto-detect nvidia card and install nvidia-dkms drivers for your kernel.
> So please ensure that your Nvidia card supports [dkms](https://wiki.archlinux.org/title/NVIDIA) drivers and hyprland.

> [!CAUTION]
> The script modifies your grub config to enable Nvidia drm and theme.
> This script is also designed to be done after a minimal arch installation, using it on previously installed desktop should work but will change whatever you currently have (gtk/qt theming, shell, sddm, grub, etc) and is at your own risk.

After a minimal Arch install (with grub and systemd), clone and execute -

```shell
pacman -Sy git
git clone https://github.com/ALEX5402/Hyprdots-ctl
cd Hyprdots-ctl
cd aur
makepkg -si
cd ~
git clone --depth 1 https://github.com/alex5402/hyprdots ~/Hyprdots
cd ~/Hyprdots/Scripts
./install.sh

## Optional
```
```./themepatcher.sh "Synth-Wave" "https://github.com/ALEX5402/Synth-Wave-theme/tree/Synth-Wave" "robbowen.synthwave-vscode~SynthWave '84"
``

> [!TIP]
> You can also create your own list (for ex. `custom_apps.lst`) with all your favorite apps and pass the file as a parameter to install it -
>```shell
>./install.sh custom_apps.lst
>```

Please reboot after the install script completes and takes you to sddm login screen (or black screen) for the first time.
For more details, please refer [installation wiki](https://github.com/alex5402/hyprdots/wiki/Installation)

### Updating
To update Hyprdots you will need to pull the latest changes from github and restore the configs by doing -

```shell
cd ~/Hyprdots/Scripts
git pull
./install.sh -r
```

> [!IMPORTANT]
> This backs up and overwrites all configs as setup by `restore_cfg.lst` in ~/Hyprdots/Scripts.
> So please note that any configurations you made may be overwritten if listed to be done so, but can be recovered in ~/.config/cfg_backups.


<div align = right> <br><br>

[<kbd> <br> 🡅 <br> </kbd>](#-design-by-t2)
</div>

## Themes

To create your own custom theme, please refer [theming wiki](https://github.com/alex5402/hyprdots/wiki/Theming)

> [!TIP]
> You can install/browse/create/maintain/share additional themes (ex. [Synth-Wave](https://github.com/alex5402/hyprdots-mod)) using themepatcher.
> For more details please refer [themepatcher wiki](https://github.com/alex5402/hyprdots/wiki/Theming#theme-patcher).

<br><div align="center"><table><tr><td><img width="60" src="https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/hyprdots_logo.png"></td><td>

[![Catppuccin-Mocha](https://placehold.co/130x30/b4befe/11111b?text=Catppuccin-Mocha&font=Oswald)](#-Catppuccin-Mocha)
[![Catppuccin-Latte](https://placehold.co/130x30/dd7878/eff1f5?text=Catppuccin-Latte&font=Oswald)](#-Catppuccin-Latte)
[![Decay-Green](https://placehold.co/130x30/90ceaa/151720?text=Decay-Green&font=Oswald)](#-Decay-Green)
[![Rosé-Pine](https://placehold.co/130x30/c4a7e7/191724?text=Rosé-Pine&font=Oswald)](#-Rosé-Pine)
[![Tokyo-Night](https://placehold.co/130x30/7aa2f7/24283b?text=Tokyo-Night&font=Oswald)](#-Tokyo-Night)<br>
[![Material-Sakura](https://placehold.co/130x30/f2e9e1/b4637a?text=Material-Sakura&font=Oswald)](#-Material-Sakura)
[![Graphite-Mono](https://placehold.co/130x30/a6a6a6/262626?text=Graphite-Mono&font=Oswald)](#-Graphite-Mono)
[![Cyberpunk-Edge](https://placehold.co/130x30/fada16/000000?text=Cyberpunk-Edge&font=Oswald)](#-Cyberpunk-Edge)
[![Frosted-Glass](https://placehold.co/130x30/7ed6ff/1e4c84?text=Frosted-Glass&font=Oswald)](#-Frosted-Glass-by-T-crypt)
[![Gruvbox-Retro](https://placehold.co/130x30/475437/B5CC97?text=Gruvbox-Retro&font=Oswald)](#-Gruvbox-Retro-by-T-crypt)
</td></tr></table></div><br><table><td><br>

> #### ***<div align = right>// Catppuccin-Mocha</div>***

![Catppuccin-Mocha#1](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_mocha_1.png)
![Catppuccin-Mocha#2](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_mocha_2.png)<br><br>

> #### ***<div align = right>// Catppuccin-Latte</div>***

![Catppuccin-Latte#1](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_latte_1.png)
![Catppuccin-Latte#2](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_latte_2.png)<br><br>

> #### ***<div align = right>// Decay-Green</div>***
![Decay-Green#1](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_decay_1.png)
![Decay-Green#2](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_decay_2.png)<br><br>

> #### ***<div align = right>// Rosé-Pine</div>***
![Rosé-Pine#1](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_rosine_1.png)
![Rosé-Pine#2](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_rosine_2.png)<br><br>

> #### ***<div align = right>// Tokyo-Night</div>***
![Tokyo-Night#1](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_tokyo_1.png)
![Tokyo-Night#2](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_tokyo_2.png)<br><br>

> #### ***<div align = right>// Material-Sakura</div>***
![Material-Sakura#1](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_maura_1.png)
![Material-Sakura#2](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_maura_2.png)<br><br>

> #### ***<div align = right>// Graphite-Mono</div>***
![Graphite-Mono#1](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_graph_1.png)
![Graphite-Mono#2](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_graph_2.png)<br><br>

> #### ***<div align = right>// Cyberpunk-Edge</div>***
![Cyberpunk-Edge#1](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_cedge_1.png)
![Cyberpunk-Edge#2](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_cedge_2.png)<br><br>

> #### ***<div align = right>// Frosted-Glass by T-crypt</div>***
![Frosted-Glass#1](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_frosted_1.png)
![Frosted-Glass#2](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_frosted_2.png)<br><br>

> #### ***<div align = right>// Gruvbox-Retro by T-crypt</div>***
![Gruvbox-Retro#1](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_gruvbox_1.png)
![Gruvbox-Retro#2](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_gruvbox_2.png)

</td></table>


<div align = right> <br><br>

[<kbd> <br> 🡅 <br> </kbd>](#-design-by-t2)
</div>

## Styles

| Theme Select |
| :-: |
| ![Theme Select](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/theme_select.png) |

| Wallpaper Select |
| :-: |
| ![Wallpaper Select](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/walls_select.png) |

| Launcher Style Select |
| :-: |
| ![Launcher Style Select](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/rofi_style_sel.png) |

| Launcher Styles |
| :-: |
| ![rofi style#1](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/rofi_style_1.png) |
| ![rofi style#2](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/rofi_style_2.png) |
| ![rofi style#3](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/rofi_style_3.png) |
| ![rofi style#4](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/rofi_style_4.png) |
| ![rofi style#5](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/rofi_style_5.png) |
| ![rofi style#6](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/rofi_style_6.png) |
| ![rofi style#7](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/rofi_style_7.png) |
| ![rofi style#8](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/rofi_style_8.png) |

| Wlogout Menu |
| :-: |
| ![Wlogout Menu#1](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/wlog_style_1.png) |
| ![Wlogout Menu#2](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/wlog_style_2.png) |

| Game Launchers |
| :-: |
| ![Game Launchers#1](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/game_launch_1.png) |
| ![Game Launchers#2](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/game_launch_2.png) |
| ![Game Launchers#3](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/game_launch_3.png) |
| ![Game Launchers#4](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/game_launch_4.png) |
| ![Game Launchers#5](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/game_launch_5.png) |


<div align = right> <br><br>

[<kbd> <br> 🡅 <br> </kbd>](#-design-by-t2)
</div>

## Keybindings

[Keybinds](https://raw.githubusercontent.com/ALEX5402/hyprdots/main/Configs/.config/hypr/keybindings.conf)

## Youtube

<table><tr><td><code>p</code><br><code>l</code><br><code>a</code><br><code>y</code><br><code>l</code><br><code>i</code><br><code>s</code><br><code>t</code></td><td>

[![YouTube playlist thumbnail](https://raw.githubusercontent.com/alex5402/hyprdots/main/Source/assets/yt_playlist.png)](https://www.youtube.com/watch?v=_nyStxAI75s&list=PLt8rU_ebLsc5yEHUVsAQTqokIBMtx3RFY)

</td></tr></table>

## Addons

[Synth-Wave-theme](https://github.com/ALEX5402/Synth-Wave-theme)
 

