LINKARGS = ""

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
    LINKARGS = -nostartfiles
endif
ifeq ($(UNAME_S),Darwin)
    LINKARGS = "-e __start -static -nostartfiles"
endif
ifeq ($(LINKARGS),"")
    $(error Can only build using Linux or Darwin host system)
endif


compile:
	cargo rustc -- -C link-arg=${LINKARGS}
