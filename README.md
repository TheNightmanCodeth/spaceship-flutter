<h1 align="center">
  😍 + 🚀
  <br>Spaceship Section<br>
</h1>

<h4 align="center">
  A <a href="https://template.com" target="_blank">Flutter</a> section for Spaceship prompt
</h4>

<p align="center">
  <a href="https://github.com/TheNightmanCodeth/spaceship-flutter/releases">
    <img src="https://img.shields.io/github/v/release/TheNightmanCodeth/spaceship-flutter.svg?style=flat-square"
      alt="GitHub Release" />
  </a>

  <a href="https://github.com/TheNightmanCodeth/spaceship-flutter/actions">
    <img src="https://img.shields.io/github/workflow/status/TheNightmanCodeth/spaceship-flutter/ci?style=flat-square"
      alt="GitHub Workflow Status" />
  </a>
</p>

Current Flutter version 🦋.

## Installing

You need to source this plugin somewhere in your dotfiles. Here's how to do it with some popular tools:

### [Oh-My-Zsh]

Execute this command to clone this repo into Oh-My-Zsh plugin's folder:

```zsh
git clone https://github.com/TheNightmanCodeth/spaceship-flutter.git $ZSH_CUSTOM/plugins/spaceship-flutter
```

Include `spaceship-flutter` in Oh-My-Zsh plugins list:

```zsh
plugins=($plugins spaceship-flutter)
```

### [zplug]

```zsh
zplug "TheNightmanCodeth/spaceship-flutter"
```

### [antigen]

```zsh
antigen bundle "TheNightmanCodeth/spaceship-flutter"
```

### [antibody]

```zsh
antibody bundle "TheNightmanCodeth/spaceship-flutter"
```

### [zinit]

```zsh
zinit light "TheNightmanCodeth/spaceship-flutter"
```

### [zgen]

```zsh
zgen load "TheNightmanCodeth/spaceship-flutter"
```

### [sheldon]

```toml
[plugins.spaceship-flutter]
github = "TheNightmanCodeth/spaceship-flutter"
```

### Manual

If none of the above methods works for you, you can install Spaceship manually.

1. Clone this repo somewhere, for example to `$HOME/.zsh/spaceship-flutter`.
2. Source this section in your `~/.zshrc`.

### Example

```zsh
mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/TheNightmanCodeth/spaceship-flutter.git "$HOME/.zsh/spaceship-flutter"
```

For initializing prompt system add this to your `.zshrc`:

```zsh title=".zshrc"
source "~/.zsh/spaceship-flutter/spaceship-flutter.plugin.zsh"
```

## Usage

After installing, add the following line to your `.zshrc` in order to include Ember section in the prompt:

```zsh
spaceship add foobar
```

## Options

This section is shown only in directories within a foobar context.

| Variable                   |              Default               | Meaning                              |
| :------------------------- | :--------------------------------: | ------------------------------------ |
| `SPACESHIP_FOOBAR_SHOW`   |               `true`               | Show current section                 |
| `SPACESHIP_FOOBAR_PREFIX` | `$SPACESHIP_PROMPT_DEFAULT_PREFIX` | Prefix before section                |
| `SPACESHIP_FOOBAR_SUFFIX` | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX` | Suffix after section                 |
| `SPACESHIP_FOOBAR_SYMBOL` |               `😍·`                | Character to be shown before version |
| `SPACESHIP_FOOBAR_COLOR`  |             `yellow`               | Color of section                     |

## License

MIT © [Name Surname](http://yourwebsite.com)

<!-- References -->

[Oh-My-Zsh]: https://ohmyz.sh/
[zplug]: https://github.com/zplug/zplug
[antigen]: https://antigen.sharats.me/
[antibody]: https://getantibody.github.io/
[zinit]: https://github.com/zdharma/zinit
[zgen]: https://github.com/tarjoilija/zgen
[sheldon]: https://sheldon.cli.rs/
