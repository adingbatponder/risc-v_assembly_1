# risc-v_assembly_1
risc-v assembly code outputting squares of integers by Bruce Hoult  
hardware used <a href="https://shop.allnetchina.cn/collections/starfive/products/starfive-visionfive-ai-single-board-computer">visionfive V1 risc-v single board computer (SBC) (like a raspberry pi size)</a>


<pre><font color="#729FCF"><b>System:</b></font>
  <font color="#729FCF"><b>Host:</b></font> fedora-starfive <font color="#729FCF"><b>Kernel:</b></font> 5.15.10+ riscv64 <font color="#729FCF"><b>bits:</b></font> 64 <font color="#729FCF"><b>Console:</b></font> tty pts/0 
  <font color="#729FCF"><b>Distro:</b></font> Fedora release 33 (Rawhide) 
</pre>

The GNU c compiler gcc was already installed in the operating system, which was provided by the manufacturer/supplier of SBC the on a flash drive. To compile, when in the directory of hello.s run the following at the command prompt: 

<code> gcc hello.s -o hello  </code>

and then to run the program:

<code>./ hello </code>

Sample output:

<pre>[adingbatponder@fedora-starfive code]$ gcc hello.s -o hello
[adingbatponder@fedora-starfive code]$ ./hello
Hello asm!
1 squared = 1
2 squared = 4
3 squared = 9
4 squared = 16
5 squared = 25
6 squared = 36
7 squared = 49
8 squared = 64
9 squared = 81
</pre>

<code>1b</code> in the line <code>blt s0, s1, 1b</code> is a local symbol name referring back to the loop labled <code>1</code>, as explained in the GNU manual <a href="https://ftp.gnu.org/old-gnu/Manuals/gas-2.9.1/html_node/as_48.html">here</a>
