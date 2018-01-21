#!/bin/sh

if [ $# -ne 1 ]
then
    echo "usage: ${0} <path>"
    exit 1
fi

cd "${1}"
find . -name "*.html" -print0 | while IFS= read -r -d $'\0' f
do
    error=0
    echo -n "${f} ..."
    links="$(grep -Po '(?<=href=")[^"]*' "${f}")"
    cd "$(dirname ${f})"

    while read -r line
    do
        if [ "${line}" = "/" ] || [ "${line:0:4}" = "http" ]
        then
            continue
        fi

        if [ ! -f "${line}" ]
        then
            error=1
            echo "        error: ${line}"
            continue
        fi
    done <<< "${links}"

    if [ "${error}" = "0" ]
    then
        echo "[ok]"
    fi

    cd - > /dev/null
done
