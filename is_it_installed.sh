#!/usr/bin/env bash

# Is something installed?

echo -e "\\n Check if needed packages are installed:\n"

# return 1 if global command line program installed, else 0
# example
# echo "node: $(program_is_installed node)"
function program_is_installed {
  # set to 1 initially
  local return_=1
  # set to 0 if not found
  type "$1" >/dev/null 2>&1 || { local return_=0; }
  # return value
  echo "$return_"
}

# display a message in red with a cross by it
# example
# echo echo_fail "No"
function echo_fail {
  # echo first argument in red
  printf "\\e[31m✘ ${1} This package isn't installed"
  # reset colours back to normal
  printf "\\033[0m"
}

# display a message in green with a tick by it
# example
# echo echo_fail "Yes"
function echo_pass {
  # echo first argument in green
  printf "\\e[32m✔ ${1}"
  # reset colours back to normal
  printf "\\033[0m"
}

# echo pass or fail
# example
# echo echo_if 1 "Passed"
# echo echo_if 0 "Failed"
function echo_if {
  if [ "$1" == 1 ]; then
    echo_pass "$2"
  else
    echo_fail "$2"
  fi
}

# command line programs
echo "wget    $(echo_if "$(program_is_installed wget)")"
echo "pwd    $(echo_if "$(program_is_installed pwd)")"
echo "xTest $(echo_if "$(program_is_installed xTest)")"
