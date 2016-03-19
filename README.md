# Arch PKGBUILDs
This repository is composed of PKGBUILDs I have written to help me install packages not in the AUR or pacman repos, or in the case of packages already in either class of repository, these PKGBUILDs have amendments to make them better suit my purposes. The contents of this repository are licensed under GPLv3.

## Atom
The `atom-editor` package in this repository is designed to not fail, in its build, due to minor Internet connectivity issues which would stump the PKGBUILD in the AUR. The `atom-editor-beta` package, unlike that in the AUR, should also persevere despite intermittent network connectivity issues and **can** be installed alongside `atom-editor` on the same machine.

## Broadcom Wireless
The `broadcom-wl` package in this repository, is virtually identical to the one at the AUR, except it tells one the kernel version the package was built against. e.g., I just installed it with the 4.4.3-1-ARCH kernel and it had the package version `6.30.223.271.k4.4.3.1-2`. After this I compiled it for the 4.4.4 kernel (also provided by this repo) and the package was called `6.30.223.271.k4.4.4.1-2`.

## Enlightenment
In this repo, you will find `enlightenment` and related packages such as `efl`, `elementary`, `emotion_generic_players` `evas_generic_loaders` and `python-efl`. The reason why I have taken it upon myself, to maintain these PKGBUILDs in this repository, even though binaries for all these packages except `python-efl`, exist in the pacman repos and `python-efl` has a PKGBUILD in the AUR, is because these binaries/PKGBUILD quite often become out-of-date and their maintainers seem to not care enough to bump them when this happens, even when the package has been flagged as out-of-date. Now I realize the maintainers of these packages do bump them when a new major release comes out (like they did when E20 came out, after some prodding on my part), but they tend to ignore less major, bug-fix releases. This is why I maintain these PKGBUILDs, for those that think that bug fix releases are important too.

## Linux / VirtualBox Modules
In this repo `linux` and `virtualbox-modules` are provided (both have been built, installed and they are working fine on my machine), even though they are both in the pacman repos of Arch Linux, because these packages became out-of-date on the 4th of March 2016 (AEST) when linux-4.4.4 was released, just after 4.4.3 was added to the core repo, and I wanted the latest kernel.

## Moksha
Moksha (`moksha`) is a less fancy (e.g., no compositing, by default), faster and less-buggy fork of Enlightenment DR17, that is used by the Bodhi Linux distribution. I have found later releases of Enlightenment, such as E20, tend to be more buggy, especially, with respect to graphical bugs, than Moksha. For example, if I use either the Atom text editor or Google Chrome for long enough under E20, I will almost invariably encounter a graphical bug, wherein part of the Atom/Google Chrome window will freeze on the screen, and be visible, even when this window is minimized. The only solution, I have found, is killing Atom/Google Chrome (not just closing them by pressing their close button) using the `kill` or `pkill` commands. Moksha also uses less RAM and CPU than E19, E20 and LXDE. I have also added `moksha` and select, more popular, moksha modules (along with the `moksha-modules-extra-git` meta-package)/themes to the AUR, to find them online click [here](https://aur.archlinux.org/packages/?O=0&SeB=nd&K=moksha&outdated=&SB=n&SO=a&PP=50&do_Search=Go).

## Vim
I have also included Vim-related packages, as [Vim updates](https://github.com/vim/vim/releases) come out daily or even hourly, so it is unrealistic to expect the maintainers of the `gvim` and `vim` packages at https://www.archlinux.org/packages/extra/x86_64/gvim and https://www.archlinux.org/packages/extra/x86_64/vim, respectively, to keep them constantly up-to-date. To install the latest gVim using this repository I recommend you run:

```bash
git clone https://github.com/fusion809/PKGBUILDs
cd PKGBUILDs/gvim-git
makepkg -si --noconfirm
```

The `gvim-git` package in this repository is a combination of the `gvim-git` and `vim-runtime-git` packages in the AUR. I merged these packages to save bandwidth and disk space, as both PKGBUILDs clone the same [GitHub repository](https://github.com/vim/vim). Likewise the `gvim` package in this repository is also a combination of the `gvim` and `vim-runtime` packages in the `[extra]` pacman repository, except it is updated more frequently. 
