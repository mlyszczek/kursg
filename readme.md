About
=====

*kursg* - kurwinet site generator. This script generates static html site from
*markdown* and *html* files and directory structure. Idea is very simple, make
site creation a piece of cake and focus on content - just create a bunch of
*markdown* files and directories and it will be transformed into static website.
As the idea is simple so is script itself, while easy to use it gives little
customization options. No template support, page can be only customized using
*css* files.

If you don't need fancy layouts, graphics and just want a simple, fast (both in
creation and usage) and readable page, this script is for you. Otherwise, don't
bother - there are many nice static site generator with templates that allows to
create sphisticated sites.

Dependencies
============

  * [python-markdown](https://github.com/waylan/Python-Markdown)
  * [python](https://www.python.org) (for python-markdown)
  * [bash shell](https://www.gnu.org/software/bash) (to run this script)

Installing
==========

Simply execute as root, and you are done. Script can also be run without
installation of course.

~~~{.sh}
make install
~~~

Documentation
=============

Full documentation (and some more info) is available at
[kursg.kurwinet.pl](http://kursg.kurwinet.pl/kursg.1.html)

There is also man page to read.

Examples
========

Example presenting all features can be found in...
[example](http://git.kurwinet.pl/kursg/tree/example) directory. To build
example site, call **make example**, generated website will be in
**example/out**

Also these projects use **kursg** to generate its website

* [mtest](http://mtest.kurwinet.pl)

License
=======

Script is licensed under BSD 2-clause license. See LICENSE file for details.

Contact
=======

Michał Łyszczek <michal.lyszczek@bofc.pl>

See also
========

* [pygments-css](https://github.com/richleland/pygments-css) by richleland
* [git repository](http://git.kurwinet.pl/kursg) with sources
