

# Grub-Theme

* [Grub Theme Source](#grub-theme-source)
* [Config File Path](#config-file-path)
* [Debian Package](#debian-package)
* [Usage](#usage)




## Grub Theme Source

| Grub Theme Source |
| --- |
| [grub-theme-glass-remix](https://github.com/samwhelp/grub-theme-glass-remix) |




## Config File Path

| Config File Path |
| ---------------- |
| [/etc/default/grub.d/theme.cfg](./asset/overlay/etc/default/grub.d/theme.cfg) |

``` sh
GRUB_BACKGROUND="/boot/grub/themes/grub-theme-glass-remix/background.jpg"
GRUB_THEME="/boot/grub/themes/grub-theme-glass-remix/theme.txt"
```




## Debian Package

| Debian Package |
| -------------- |
| [grub2](https://packages.debian.org/stable/grub2) |
| [grub-common](https://packages.debian.org/stable/grub-common) |
| [grub-pc](https://packages.debian.org/stable/grub-pc) |




## Usage


### install

run

``` sh
./install.sh
```

or run

``` sh
make install
```


### package-install

run

``` sh
./package-install.sh
```

or run

``` sh
make package-install
```


### asset-install

run

``` sh
./asset-install.sh
```

or run

``` sh
make asset-install
```


### prototype-install

run

``` sh
./prototype-install.sh
```

or run

``` sh
make prototype-install
```


### config-install

run

``` sh
./config-install.sh
```

or run

``` sh
make config-install
```
