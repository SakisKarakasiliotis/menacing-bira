# ZSH Theme - Preview: https://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[red]%}%n@%m %{$reset_color%}'
    local user_symbol='▶'
else
    local user_host='%{$terminfo[bold]$FG[213]%} %n %{$reset_color%}'
    local user_symbol=' ゴ'
fi

local current_dir='%{$terminfo[bold]$FG[159]%}%~ %{$reset_color%}'
local git_branch='$(git_prompt_info)'
local rvm_ruby='$(ruby_prompt_info)'
local venv_prompt='$(virtualenv_prompt_info)'

ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"

PROMPT="╭─${venv_prompt}${user_host}${current_dir}${rvm_ruby}${git_branch}
╰─%B${user_symbol}%b "
RPROMPT="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="$FG[154][$FG[154]"

ZSH_THEME_GIT_PROMPT_CLEAN="$FG[154] ✓ %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red] ✗ %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[154]]%{$reset_color%}"

ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[red]%}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="› %{$reset_color%}"

ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="] %{$reset_color%}"
ZSH_THEME_VIRTUALENV_PREFIX=$ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX

ZSH_THEME_VIRTUALENV_SUFFIX=$ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX
