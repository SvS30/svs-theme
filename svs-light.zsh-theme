prompt_indicator() {
   echo " 🚩 "
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
  echo "%{$FG[040]%} $prompt_short_dir"
}

# format to git sha
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$FG[016]%}  ➜  %f%{$FG[045]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%f"

# styles for git info
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[016]%}  || %f %{$FG[009]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[208]%}✱%f"
ZSH_THEME_GIT_PROMPT_CLEAN="✅"

PROMPT='%B$(get_pwd)%f$(git_prompt_short_sha)$(git_prompt_info)%b 
$(prompt_indicator)%f '