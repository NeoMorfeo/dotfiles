if [[ -f ~/.bashrc ]]; then
  source ~/.bashrc
fi

_byobu_sourced=1 . /usr/bin/byobu-launch 2>/dev/null || true

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
