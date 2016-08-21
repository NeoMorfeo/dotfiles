if [[ -f ~/.bashrc ]]; then
  source ~/.bashrc
fi

_byobu_sourced=1 . /usr/bin/byobu-launch 2>/dev/null || true
