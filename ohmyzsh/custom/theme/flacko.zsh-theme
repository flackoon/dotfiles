git_commits_info() {
  local branch=$(git branch --show-current)
  if [[ -z "$branch" ]]; then
    echo ""
  else
    local numbers=$(git rev-list --left-right --count origin/$branch...HEAD | tr -d -c 0-9)
  fi

  local commits_behind_count=${numbers:0:1}
  local commits_ahead_count=${numbers:1:2}

  output=""
  if [[ commits_behind_count -gt 0 ]]; then
    output="$commits_behind_count↓"

    if [[ commits_ahead_count -gt 0 ]]; then
      output="${output} "
    fi
  fi

  if [[ commits_ahead_count -gt 0 ]]; then
    output="${output?" $output":" "}$commits_ahead_count↑"
  fi

  if [ -z "$output" ]; then
    echo ""
  else
    echo " %{$reset_color%}| %{$fg_bold[yellow]%}$output"
  fi
}

git_prompt_info () {
	if ! __git_prompt_git rev-parse --git-dir &> /dev/null || [[ "$(__git_prompt_git config --get oh-my-zsh.hide-info 2>/dev/null)" == 1 ]]
	then
		return 0
	fi
	local ref
	ref=$(__git_prompt_git symbolic-ref --short HEAD 2> /dev/null)  || ref=$(__git_prompt_git rev-parse --short HEAD 2> /dev/null)  || return 0
	local upstream
	if (( ${+ZSH_THEME_GIT_SHOW_UPSTREAM} ))
	then
		upstream=$(__git_prompt_git rev-parse --abbrev-ref --symbolic-full-name "@{upstream}" 2>/dev/null)  && upstream=" -> ${upstream}"
	fi

	echo "${ZSH_THEME_GIT_PROMPT_PREFIX}${ref:gs/%/%%}${upstream:gs/%/%%}$(parse_git_dirty)$(git_commits_info)${ZSH_THEME_GIT_PROMPT_SUFFIX} "
}

PROMPT='%{$fg[green]%}%c%{$reset_color%} $(git_prompt_info)% ➜ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"


