#!/bin/sh

file_list="example pygments styles www AUTHORS LICENSE Makefile dist.sh\
    kursg kursg.1 link-checker.sh man2html.sh readme.md version \
    gen-download-page.sh"

dname="kursg-$(cat version)"

mkdir "${dname}"
cp -r ${file_list} "${dname}"
tar -czf "${dname}.tar.gz" "${dname}"
rm -rf "${dname}"
