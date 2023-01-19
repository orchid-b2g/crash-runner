#!/bin/bash

build:
	mkdir binary
	g++ main.cpp -o binary/crash-runner

make-deb:
	export DEBEMAIL="mortcodesweb@gmail.com"
	export DEBFULLNAME="MortCodesWeb"
	dh_make
	dpkg-buildpackage

	export DEBEMAIL="mortcodesweb@gmail.com"
	dpkg-buildpackage -nc -i
