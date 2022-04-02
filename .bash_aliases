# Browse git commits with fzf and show the changes of the selected commit
alias what="git -C . rev-parse 2> /dev/null && git log --oneline | fzf | awk '{split(\$0,commithash,\" \"); print commithash[1]}' | xargs --no-run-if-empty git show"
