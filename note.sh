#!/bin/sh
path=$(date +%s)
editor="vi"

# Parse arguments
while getopts ":e:hn:" option; do
  case $option in
  h)
    echo -e "note.sh | (c) wibbuffey 2021 | v1.0.0 [Dec 14, 2021]"
    echo -e ""
    echo -e "\033[1m\033[3m\033[4mUSAGE\033[0m"
    echo -e "  There are many ways to use note.sh."
    echo -e "  \033[1m$\033[0m \033[92mnote          \033[0m \033[3m\033[37m# create a new note\033[0m"
    echo -e "  \033[1m$\033[0m \033[92mnote -h       \033[0m \033[3m\033[37m# get help\033[0m"
    echo -e "  \033[1m$\033[0m \033[92mnote -e emacs \033[0m \033[3m\033[37m# create a new note with emacs\033[0m"
    echo -e "  \033[1m$\033[0m \033[92mnote -n ideas \033[0m \033[3m\033[37m# create a new note named \"ideas.txt\"\033[0m"
    echo -e "  \033[1m$\033[0m \033[92mls ~/note     \033[0m \033[3m\033[37m# list all notes\033[0m"
    echo -e "  \033[1m$\033[0m \033[92mcat ~/note/123\033[0m \033[3m\033[37m# print the note from unix timestamp 123\033[0m"
    echo -e "  \033[1m$\033[0m \033[92mgrep todo     \033[0m \033[3m\033[37m# looks for notes containing 'todo' when ran in ~/note\033[0m"
    echo -e ""
    echo -e "\033[1m\033[3m\033[4mEXAMPLES\033[0m"
    echo -e "  \033[1m$\033[0m \033[92mnote\033[0m"
    echo -e "  \033[1m$\033[0m \033[92mnote -e code -n Todo\033[0m"
    echo -e ""
    echo -e "\033[1m\033[3m\033[4mSOURCE\033[0m"
    echo -e "  \033[4mhttps://github.com/wibbuffey/note\033[0m"
    echo -e "  Licensed under the MIT license."

    exit 0
    ;;
  n) path=$OPTARG ;;
  e) editor=$OPTARG ;;
  *)
    echo "Unsupported argument $OPTARG."
    exit -1
    ;;
  esac
done

# Actually make the note
$editor ~/note/$path

# Show the response
if [ -f ~/note/$path ]; then
  echo -e "\033[40m\033[38;2;122;255;165mSuccessfully wrote a note.\033[0m"
  exit 0
else
  echo -e "\033[38;2;173;0;9mCouldn't write a note.\033[0m"
  exit -1
fi
