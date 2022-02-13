# Oh My ZSH Dark Theme
A clean and distraction-free theme for Oh My ZSH on a dark terminal with the following features:
- Show full path when not in git project
- When in a git project it will only show the name of the project or directory
- Show current git sha
- Show current branch
- Show the status of the branch:
     - ✱: Dirty: when the project had a change, modification or addition
     - ✅: Clean: when the project has no changes, modifications or the commit was made
- Use "vivid" colors for better viewing.

### Preview
![svs-theme](https://user-images.githubusercontent.com/43234664/153779407-d9f0b5c2-c620-4a6b-89f9-2df618c2aef6.png)

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
