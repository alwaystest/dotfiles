shell=${1-$SHELL}
for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done

