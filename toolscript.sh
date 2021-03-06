#!/bin/bash

tools=(npm gulp bower node)

for t in "${tools[@]}"; do
    if [[ "$t" == "$1" ]]; then
        exec "$t" "${@:2}"
    fi
done

exec "npm" "$@"
