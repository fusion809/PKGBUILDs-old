# Arch PKGBUILDs
This repository is composed of PKGBUILDs I have written to help me install packages not in the AUR or pacman repos, or in the case of packages already in either class of repository, these PKGBUILDs have ammendments to make them better suit my purposes. The contents of this repository are licensed under GPLv3. 

## Atom
The `atom-editor` package in this repository is designed to not fail, in its build, due to minor Internet connectivity issues which would stump the PKGBUILD in the AUR. The `atom-editor-git` package in here, is basically just the `atom-editor` package, except it uses the Atom git repository instead of tarball releases to build the Atom package. Despite this the `atom-editor-git` package still builds the latest **stable release of Atom**, just like `atom-editor`, which distinguishes it from most packages with the `-git` suffix which build their package from the latest git snapshot (which makes them best suited for developmental or testing purposes and not for everyday use). The `atom-editor-git` PKGBUILD is also better adept to managing momentary internet glitches than its counterpart in the AUR. If you wish to build Atom using the PKGBUILDs in this repository, I would recommend you stick to the `atom-editor` PKGBUILD as the `atom-editor-git` PKGBUILD takes up more space and uses up more bandwidth during the build. 

## Moksha
On 7 February 2016 I experienced some git issues commiting to the AUR (see [forum topic 1602376](https://bbs.archlinux.org/viewtopic.php?pid=1602376) for further details) so until it gets resolved I have re-added the correct `moksha` PKGBUILD to this repository. 

## Vim
I have also included Vim-related packages, as [Vim updates](https://github.com/vim/vim/releases) come out daily or even hourly, so it is unrealistic to expect the maintainers of the gvim and vim packages at https://www.archlinux.org/packages/extra/x86_64/gvim and https://www.archlinux.org/packages/extra/x86_64/vim, respectively, to keep them constantly up-to-date. To install the latest gVim using this repository I recommend you run:
```bash
git clone https://github.com/fusion809/PKGBUILDs
cd PKGBUILDs/gvim-git
makepkg -si --noconfirm
```
The `gvim-git` package in this repository is a combination of the `gvim-git` and `vim-runtime-git` packages in the AUR. I merged these packages to save bandwidth and disk space, as both PKGBUILDs clone the same [GitHub repository](https://github.com/vim/vim).
