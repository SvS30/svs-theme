# Oh My ZSH Dark Theme
A clean and distraction-free theme for Oh My ZSH on a dark terminal with the following features:
- **Dark or Light Theme**
- Show full path when not in git project
- When in a git project it will only show the name of the project or directory
- Show current git sha
- Show current branch
- Show the status of the branch:
     - ✱: Dirty: when the project had a change, modification or addition
     - ✅: Clean: when the project has no changes, modifications or the commit was made
- Use "vivid" colors for better viewing.

### Prerequisites
- [Oh my zsh](https://geekytheory.com/como-instalar-oh-my-zsh-en-ubuntu/)

### Preview
- Dark theme
![svs-theme](https://user-images.githubusercontent.com/43234664/153779407-d9f0b5c2-c620-4a6b-89f9-2df618c2aef6.png)
- Light theme
![svs-light-theme](https://user-images.githubusercontent.com/43234664/153783700-1461764e-ec94-46a0-ba5c-79be62ce8c00.png)

### Setup
- Download the theme you like and place it in ZSH custom directory
  - Dark Theme
      ```bash
      curl -o $ZSH_CUSTOM/themes/svs-dark.zsh-theme https://raw.githubusercontent.com/SvS30/svs-theme/master/svs-dark.zsh-theme
      ```
  - Light Theme
      ```bash
      curl -o $ZSH_CUSTOM/themes/svs-light.zsh-theme https://raw.githubusercontent.com/SvS30/svs-theme/master/svs-light.zsh-theme
      ```

- Set `ZSH_THEME` to `svs-dark` to use the dark theme  or `svs-light` to use the light theme in `~/.zshrc`
    ```vim
    ZSH_THEME="svs-dark"
    ```

- Reload your terminal or use:
    ```bash
    source ~/.zshrc
    ```
