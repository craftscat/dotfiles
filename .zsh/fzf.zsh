# ----------------------------
# Setup
# ----------------------------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

# ----------------------------
# Default Setting
# ----------------------------
export FZF_DEFAULT_COMMAND="fd --type file -I -H -E '.git/'"
export FZF_DEFAULT_OPTS="
    --height 90% --reverse --border
    --prompt='➜ ' --margin=1,1 --inline-info
    --select-1 --exit-0 --multi
    --color fg:-1,bg:-1,hl:33,fg+:250,bg+:235,hl+:33
    --color info:37,prompt:37,pointer:230,marker:230,spinner:37
    --preview 'bat -r :100 --color=always --style=header,grid {}'
"

# ----------------------------
# File Search
# ----------------------------
export FZF_CTRL_T_COMMAND="fd --type file -I -H -E '.git/'"
export FZF_CTRL_T_OPTS="
    --preview 'bat -r :100 --color=always --style=header,grid {}'
"

# ----------------------------
# History Search
# ----------------------------
export FZF_CTRL_R_OPTS="
    --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'
"
