About
=====

kursg - kurwinet site generator. This script generates static html site from
markdown files and directory structure. Idea is very simple, make site creation
a piece of cake - just create a bunch of markdown files and directories and it
will be transformed into static website. As the idea is simple so is script
itself, while easy to use it gives little customization options. It's enough to
say, that all pages are generated from markdown, so if markdown doesn't support
something, well... then you cannot use it. No template support, page can be only
customized using css files.

If you don't need fancy layouts, graphics and just want a simple, fast (both in
creation and usage) and readable page, this script is for you. Otherwise, don't
bother - there are many nice static site generator with templates that allows to
create sphisticated sites.

Dependencies
============

  * python-markdown (https://github.com/waylan/Python-Markdown)
  * python (for python-markdown)
  * bash shell (to run this script, plans are to make it more portable)

Installing
==========

do

~~~{.sh}
make install
~~~

as root, and you are done. Script can also be run without installation of
course.

License
=======

Script is licensed under BSD 2-clause license. See LICENSE file for details.

Contact
=======

Michał Łyszczek <michal.lyszczek@bofc.pl>

Thanks to
=========

richleland for css styles (https://github.com/richleland/pygments-css)
