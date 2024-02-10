all: cp1_songmenu

cp1_songmenu: cp1_songmenu.cpp
	g++ cp1_songmenu.cpp -o cp1_songmenu

clean:
	rm -rf *.o cp1_songmenu *out.txt

diff: cp1_songmenu_sample cp1_songmenu_input.txt
	chmod +x cp1_songmenu_sample;\
	make clean > /dev/null;\
	make > /dev/null;\
	./cp1_songmenu_sample < cp1_songmenu_input.txt > cp1_songmenu_sample_out.txt;\
	./cp1_songmenu < cp1_songmenu_input.txt > cp1_songmenu_out.txt;\
	diff cp1_songmenu_sample_out.txt cp1_songmenu_out.txt;\
	exit 0;
