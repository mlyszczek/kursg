DESTDIR ?= "/usr/local"

install:
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/autumn.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/borland.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/bw.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/colorful.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/default.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/emacs.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/friendly.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/fruity.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/manni.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/monokai.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/murphy.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/native.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/pastie.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/perldoc.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/tango.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/trac.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/vim.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/pygments pygments/vs.css
	install -m 0644 -D -t $(DESTDIR)/share/kursg/styles   styles/man.css
	install -m 0755 -D -t $(DESTDIR)/bin                  kursg

doc:
	./man2html.sh
	make -C www

clean:
	make clean -C www
