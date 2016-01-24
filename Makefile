.PHONY: all
all: bdiff.pdf bdiff

bdiff.pdf: bdiff.py.nw bdiff.bib LICENSE
bdiff.py: bdiff.py.nw
bdiff: bdiff.py
	cp $^ $@
	chmod +x $@

.PHONY: clean
clean:
	${RM} bdiff bdiff.py bdiff.pdf


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
