default: insdhall install build run

nix:
	nix-shell --run make

insdhall:
	dhall format --inplace packages.dhall
	spacchetti insdhall

build:
	psc-package build

install:
	psc-package install

run:
	node -e "require('./output/Main').main()"
