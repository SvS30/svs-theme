prompt_indicator() {
   echo '\u276f'
}

PROMPT='%B%{$fg[yellow]%}%1~%f%b 
%{$fg[green]%}$(prompt_indicator)%f '
RPROMPT='%B%{$fg[cyan]%}$(git_prompt_info)%f%b'