# Oh My ZSH Dark Theme
My Theme for Oh-My-ZSH.

### Prerequisites
- [Oh my zsh](https://geekytheory.com/como-instalar-oh-my-zsh-en-ubuntu/)

### Setup
1. Download the theme and put it in ZSH custom directory
    ```bash
    curl -o $ZSH_CUSTOM/themes/svs-dark.zsh-theme https://raw.githubusercontent.com/SvS30/svs-theme/master/svs-dark.zsh-theme
    ```

2. Set `ZSH_THEME` to `svs-dark` in `~/.zshrc`
    ```vim
    ZSH_THEME="svs-dark"
    ```

3. Reload your terminal or use:
    ```bash
    source ~/.zshrc
    ```