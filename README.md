# lampr_
### iterm2 dark/light theme switcher for macOs

<p align="left">
    <img src="https://media.giphy.com/media/K5VTRxqehgkNVKCJv5/source.gif" />
</p>

# installation
1. Clone the repository to `~` directory:
```sh
cd ~
git clone https://github.com/diegoulloao/lampr
```

2. Put those vars **at the beginning** of your `.bashrc` or `.zshrc` file:

```sh
# Light Theme Profile
LIGHT_THEME="ProfileName"

# Dark Theme Profile
DARK_THEME="ProfileName"

# Loads lampr
source ~/lampr/lampr.sh
```

Replace `"ProfileName"` by the profiles of your preference

# color-ls integration
If you do use [color-ls](https://github.com/athityakumar/colorls) you can add this **before the lampr source**:

```sh
# Initial mode
COLOR_LS_THEME="light"
```

And this **after the lampr source**:

```sh
# Set lampr colorls trigger
colorls_lampr [alias] colorls [options]

# Example: colorls_lampr ls colorls --group-directories-first
```

# usage
lampr autodetect your macos theme automatically, but you can switch it manually:

**switching**
```sh
@dark | @light
```

# license
**licensed under [MIT](https://github.com/diegoulloao/lampr/blob/master/LICENSE)**

---
**@diegoulloao · 2020**
