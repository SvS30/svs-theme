prompt_indicator() {
   echo "%{$fg[blue]%} \u276f "
}

get_pwd(){
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    parent=${git_root%\/*}
    prompt_short_dir=${PWD#$parent/}
  fi
  echo "%{$FG[226]%}$prompt_short_dir"
}

# format to git sha
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$FG[255]%}  ➜  %f%{$FG[154]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%f"

# styles for git info
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[255]%}  || %f %{$FG[087]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[214]%}\u2731%f"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[118]%}\u2714%f"

PROMPT='%B$(get_pwd)%f$(git_prompt_short_sha)$(git_prompt_info)%b 
$(prompt_indicator)%f '
