Multiple Cscope DB 
====================================

Purpose
-----------------
This project is a vim plug-in for [Cscope][1]. It can help you to load project's cscope DB automatically if it existed. if no DB is no exist, you can build it in Vim command line(normal mode).


Setup 
------------------
1. Install cscope and ctags
        
    `$ sudo apt-get install cscope ctags`

2. Install [vundle plug-in][2] to manage plug-in or you can manuel install by install.sh

    `$ sh install.sh`

3. Type 'CSBuild' in normal mode of vim

 - Build new DB, **change folder to root of source**.
        `:CSBuild`

 - Rebuild exist DB, just open any file in folder
        `:CSBuild`

4. Wait a moment that depend on source code size and file number.

Usage
------------------
 - Work with Linux kernel
    `$ wget wget https://www.kernel.org/pub/linux/kernel/v3.x/testing/linux-3.14-rc7.tar.xz`
    `$ tar Jxf linux-3.14-rc7.tar.xz`
    `$  cd linux-3.14-rc7/`
    `$ vim README`
    
    **in normal mode of vim**
    `:cs show`
    `no cscope connections`

    `:CSBuild`
    `Update DB: /home/charz/Work/linux-3.14-rc7/cscope.out`
    
    `:cs show`
    `# pid    database name                       prepend path`
    `0 6813   /home/charz/Work/linux-3.14-rc7/cscope.out  <none>`
    


  [1]: http://cscope.sourceforge.net/
  [2]: https://github.com/gmarik/Vundle.vim


