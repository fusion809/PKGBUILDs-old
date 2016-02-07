# Arch PKGBUILDs
This repository is composed of PKGBUILDs I have written to help me install packages not in the AUR or pacman repos.

The `atom-editor` package in this repository is designed to not fail, in its build, due to minor Internet connectivity issues which would stump the PKGBUILD in the AUR. I have also included Vim-related packages, as Vim updates come out daily or even hourly, so it's unrealistic to expect the maintainers of the gvim and vim packages at https://www.archlinux.org/packages/extra/x86_64/gvim and https://www.archlinux.org/packages/extra/x86_64/vim to keep them constantly up-to-date. To install the latest gVim using this repository I recommend you run:
```bash
git clone https://github.com/fusion809/PKGBUILDs
cd PKGBUILDs
./update-vim.sh
```
The `gvim-git` package in this repository is a combination of the `gvim-git` and `vim-runtime-git` packages in the AUR. I merged these packages to save bandwidth as both PKGBUILDs clone the same GitHub repository.
