#!/bin/bash
tpl -g main $(dirname "$(readlink -f "$0")")/os.pl "$@"
