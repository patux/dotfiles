alias lse='eza -lh --group-directories-first --icons=auto'
alias ll='ls -l --color'
alias ls='ls --color $@'
alias vlist='vagrant status --machine-readable  | cut -d'\'','\'' -f1-4 | grep running | cut -d'\'','\'' -f2 | sort | uniq'
alias matrix='unimatrix -a -b -s 96'
alias dive="docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive"
alias vim=nvim
alias vi=nvim
alias v=nvim
alias gemini=agy
