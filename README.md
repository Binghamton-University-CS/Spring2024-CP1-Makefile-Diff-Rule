# Spring2024-CP1-Makefile-Diff-Rule

For CP1 submission, it is recommended to include these files and changes (cp1_songmenu_input.txt, cp1_songmenu_sample, and the 'diff rule' in makefile) into your submission.

**However, it is optional.**

#### 1. Place `cp1_songmenu_input.txt` and `cp1_songmenu_sample` in your own cp1 directory. 
- Note that `cp1_songmenu_sample` is the updated executable, available on Brightspace as of Saturday 1pm.

#### 2. Add the `diff` rule from the makefile to your own makefile.

#### 3. Execute `make diff` to compare the output of `cp1_songmenu_sample` and your executable `cp1_songmenu` using the same input (`cp1_songmenu_input.txt`). If the outputs match, only the following will be displayed:
      ```bash
      chmod +x cp1_songmenu_sample;\
      make clean > /dev/null;\
      make > /dev/null;\
      ./cp1_songmenu_sample < cp1_songmenu_input.txt > cp1_songmenu_sample_out.txt;\
      ./cp1_songmenu < cp1_songmenu_input.txt > cp1_songmenu_out.txt;\
      diff cp1_songmenu_sample_out.txt cp1_songmenu_out.txt;\
      exit 0;
      ```
   
