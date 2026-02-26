declare -A pomo_options
pomo_options=(
  ["work"]="45"
  ["break"]="10"
)

pomodoro () {
  local key=$1
  if [[ -n "$key" && -n "${pomo_options[$key]}" ]]; then
    local minutes="${pomo_options[$key]}"
    
    echo "Starting $key session: ${minutes}m" | lolcat
    
    if command -v timer &> /dev/null; then
      timer "${minutes}m"
    else
      sleep "${minutes}m"
    fi
    
    spd-say "$key session done"
  else
    echo "Usage: pomodoro [work|break]"
  fi
}

alias wo="pomodoro work"
alias br="pomodoro break"
