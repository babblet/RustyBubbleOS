TARGET = ./target-x86_64-rustybubbleos.json
ARGS = --target ${TARGET}
compile:
	cargo xbuild ${ARGS}

bootimage:
	cargo bootimage ${ARGS}
