#!/bin/sh

hostname="http://kursg.kurwinet.pl"
out="$(pwd)/www"
root="$(pwd)"
ftmp="/tmp/kursg-man2html"
m="kursg.1"
n="1"

man2html -r -H "${hostname}" "${m}" > "${ftmp}"

# get only body part of the file
body_only="$(sed -n '/<BODY>/,/<\/BODY>/p' "${ftmp}")"
echo "$body_only" > "${ftmp}"

# remove leftover <body> and <h1>man</h1> tags from beginning
tail -n+3 "${ftmp}" > tmp; mv tmp "${ftmp}"

# construct own h1 tag
name="$(basename ${m})"
name="${name%.*}"
sed -i "1s/^/<H1>${name}(${n})<\/H1>\n<P> /" "${ftmp}"

# remove uneeded links to non-existing index
sed -i 's/<A HREF="\.\.\/index.html">Return to Main Contents<\/A><HR>//' "${ftmp}"
sed -i 's/<A HREF="#index">Index<\/A>//g' "${ftmp}"

# extract table of content and put it in the beginning of file
## cache first two lines (h1 and info) and remove them from file
tmp="$(head -n2 ${ftmp})"
tail -n+3 "${ftmp}" > tmp; mv tmp "${ftmp}"

## get table of content from file
toc="$(sed -n '/<DL>/,/<\/DL>/p' "${ftmp}")"

## put table of content and first two lines into file and append hr
{ echo -e "${tmp}\n${toc}\n<HR>"; cat "${ftmp}"; } > tmp; mv tmp "${ftmp}"

## remove table of content and some uneeded info from bottom of file
sed -i '/^<A NAME="index">&nbsp;<\/A><H2>Index<\/H2>$/,$d' "${ftmp}"
head -n-3 "${ftmp}" > tmp; mv tmp "${ftmp}"

# change deprecated name in <a> into id
sed -i 's/A NAME="/A ID="/g' "${ftmp}"

# move generated file into output directory for further processing
cp "${ftmp}" "${out}/${m}.html"
