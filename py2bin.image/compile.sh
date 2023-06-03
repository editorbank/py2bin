#!/bin/bash
[ -z "$*" ] && echo "Use: $0 [<nuitka3_options>] <file.py>" && exit 1
[ -f /venv/bin/activate ] && source /venv/bin/activate
[ -f ./requirement.txt ] && pip install -r ./requirement.txt
nuitka3 --standalone --onefile $*