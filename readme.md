This is a clone of https://www.akavel.com/nrf51822-asm worked properly.
<PRE>
Environment:
 a. micro:bit is V1.38(1.3B?)
 b. no j-link, dap(usb cmsis drive) only.
 c. host pc is windows11(64bit x64). 

 So, files and short logs were here.

 Notices:
 1. hex has no debug symbols.
 2. elf has debug symbpls.
 3. bin is for dap drive drop worked.
 4. so, you could these.
   look bld.cmd:
   C:\Users\user\Downloads\arm-gnu-toolchain-14.2.rel1-mingw-w64-i686-arm-none-eabi\bin\arm-none-eabi-as.exe
   so you could search arm-gnu-toolchain-14.2.rell-mingw-w64-i66-arm-none-eabi package.
   I found here "Arm GNU Toolchain Version 14.2.Rel1 Released: December 10, 2024".
   https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads
   https://developer.arm.com/-/media/Files/downloads/gnu/14.2.rel1/binrel/arm-gnu-toolchain-14.2.rel1-mingw-w64-i686-arm-none-eabi.zip
   download and extract (and if you prefer, add pathes to your env.)
5. bld.cmd execute on cmd.exe (Try.S is assembly source code==ASM)
6. then made Try.elf, Try.hex, Try.bin.
7. you need openocd and gdb. Try by yourself.
8. HINT
C:\Users\user\Downloads\openocd-20240916\OpenOCD-20240916-0.12.0\bin>openocd -f interface/cmsis-dap.cfg -f target/nrf51.cfg
Open On-Chip Debugger 0.12.0 (2024-09-16) [https://github.com/sysprogs/openocd]
Licensed under GNU GPL v2
libusb1 d52e355daa09f17ce64819122cb067b8a2ee0d4b
For bug reports, read
        http://openocd.org/doc/doxygen/bugs.html
Info : auto-selecting first available session transport "swd". To override use 'transport select <transport>'.
Info : Listening on port 6666 for tcl connections
Info : Listening on port 4444 for telnet connections
Info : CMSIS-DAP: SWD supported
Info : CMSIS-DAP: FW Version = 1.0
Info : CMSIS-DAP: Interface Initialised (SWD)
Info : SWCLK/TCK = 1 SWDIO/TMS = 1 TDI = 0 TDO = 0 nTRST = 0 nRESET = 1
Info : CMSIS-DAP: Interface ready
Info : clock speed 1000 kHz
Info : SWD DPIDR 0x0bb11477
Info : [nrf51.cpu] Cortex-M0 r0p0 processor detected
Info : [nrf51.cpu] target has 4 breakpoints, 2 watchpoints
Info : [nrf51.cpu] Examination succeed
Info : [nrf51.cpu] starting gdb server on 3333
Info : Listening on port 3333 for gdb connections
:
C:\Users\user\Downloads\arm-gnu-toolchain-14.2.rel1-mingw-w64-i686-arm-none-eabi\bin>.\arm-none-eabi-gdb
target remote :3333
then like bellow
(gdb) target remote :3333
Remote debugging using :3333
warning: No executable has been specified and target does not support
determining executable automatically.  Try using the "file" command.
0x0001b36e in ?? ()
(gdb)
(gdb) file try.hex
A program is being debugged already.
Are you sure you want to change the file? (y or n) y
Reading symbols from try.hex...
(No debugging symbols found in try.hex)
(gdb) load
`C:\Users\user\Downloads\arm-gnu-toolchain-14.2.rel1-mingw-w64-i686-arm-none-eabi\bin\try.hex' has changed; re-reading symbols.

C:\Users\user\Downloads\arm-gnu-toolchain-14.2.rel1-mingw-w64-i686-arm-none-eabi\bin>

(gdb) target remote :3333
Remote debugging using :3333
warning: No executable has been specified and target does not support
determining executable automatically.  Try using the "file" command.
0x0001b36e in ?? ()
(gdb) i r
r0             0x0                 0
r1             0x20002c44          536882244
r2             0x20002394          536880020
r3             0x0                 0
r4             0x18                24
r5             0x20002e70          536882800
r6             0x20002648          536880712
r7             0x307cd             198605
r8             0x0                 0
r9             0x0                 0
r10            0x0                 0
r11            0x0                 0
r12            0x30969             199017
sp             0x20003fec          0x20003fec
lr             0x1f253             127571
pc             0x1b36e             0x1b36e
xpsr           0x61000000          1627389952
msp            0x20003fec          0x20003fec
psp            0xfffffffc          0xfffffffc
primask        0x0                 0
basepri        0x0                 0
faultmask      0x0                 0
control        0x0                 0
(gdb)
</PRE> <BR>  
Enjoy.
