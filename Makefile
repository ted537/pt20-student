# Makefile for PT and S/SL 
# Usage:  make 

all:
	mkdir -p bin lib/pt
	cd cmd; make $(ACTION)
	cd parser; make $(ACTION)
	cd semantic; make $(ACTION)
	cd coder; make $(ACTION)
	cd ptruntime; make $(ACTION)
	cd ptam; make $(ACTION)

scanner:
	mkdir -p bin lib/pt
	cd cmd; make $(ACTION)
	cd parser; make scanner

Parser:
	mkdir -p bin lib/pt
	cd cmd; make $(ACTION)
	cd parser; make $(ACTION)

Semantic:
	mkdir -p bin lib/pt
	cd cmd; make $(ACTION)
	cd parser; make $(ACTION)
	cd semantic; make $(ACTION)

install: 
	make all ACTION=install

clean:
	make all ACTION=clean
	/bin/rm -f bin/* lib/pt/*
