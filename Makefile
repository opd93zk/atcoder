TOOLS = g++-$(VER) gdb build-essential

# パス変数
INCDIR = ./include
OJ_INF = oj.inf
TIME_LIST = time.list

# スクリプト変数
OJD = bin/ojd.sh
SL = bin/save.sh
WL = bin/write_log.sh
CS = bin/check_saved.sh
CLIP = bin/clip.sh
U2P = bin/url2path.sh

# コンパイルオプション変数
VER = 12
CXX = g++-$(VER)
#最適化無効 警告有効化 デバッグ情報表示 デバッグマクロの登録
CXXFLAG = -std=gnu++20 -O0 -Wall -Wextra -g -D_DEBUG
COMP = $(CXX) $(CXXFLAG) -I$(INCDIR)

# コンパイル対象
SRC_D_H = $(INCDIR)/ownenv.h
SRC = a.cpp
H_SRC = $(shell find /usr/include/* -name *stdc++.h | grep $(VER))
GCH_SRC = $(INCDIR)/bits/stdc++.h
GCH_DIR = $(GCH_SRC).gch
GCH = $(GCH_DIR)/oj.gch

# 導出変数
TEMPLATES = $(shell ls template)
URL = $(shell head -n1 $(OJ_INF))
FILE_PATH = $(shell $(U2P) $(URL) || echo problem/others)



# all in one
.PHONY: run
run:
	make ojt && make ojs

.PHONY: crun
crun:
	make ojt && make copy

# compile
%.out: %.cpp
	$(COMP) $< -o $@

$(GCH_SRC): $(H_SRC)
	mkdir -p $(GCH_DIR)
	cp $(H_SRC) $(GCH_SRC)

$(GCH): $(GCH_SRC)
	$(COMP) $(GCH_SRC) -o $(GCH)

# aliace
.PHONY: gch
gch: $(GCH)

# function
.PHONY: ojd
ojd:
	@$(CS) $(TIME_LIST) && $(OJD) $(OJ_INF) $(TIME_LIST)

.PHONY: ojt
ojt: test/sample-1.in a.out
	@oj t -S -N

.PHONY: ojs
ojs:
	@oj s $(URL) $(SRC) && make log

.PHONY: copy
copy:
	@cat $(SRC) | $(CLIP) && make log

.PHONY: log
log:
	@$(WL) $(OJ_INF) $(TIME_LIST) $(URL)
	@cat $(TIME_LIST)

.PHONY: save
save:
	@$(SL) $(URL) $(FILE_PATH)



# trilal
sample:
	echo $(TOOLS)

.PHONY: cpt
cpt:
	@cp template/* ./

.PHONY: clean
clean:
	rm -fr *.out debug.in $(TIME_LIST) $(OJ_INF) test

.PHONY: all-clean
all-clean:
	@make clean
	rm -f ./*.*

.PHONY: install
install:
	make gch
	make cpt