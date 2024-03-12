function preexec() {
  timer=$(($(date +%s%0N)/1000000))
}

function precmd() {
  vcs_info
  if [ $timer ]; then
    now=$(($(date +%s%0N)/1000000))
    elapsed=$(($now-$timer))
    elapsed=$((elapsed/1000))
    
	if ((elapsed > 3)); then
		export timeElapsed="%F{cyan}${elapsed}s %{$reset_color%}"
	else
		export timeElapsed=""
	fi
    unset timer
  fi
}
