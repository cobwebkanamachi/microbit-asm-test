C:\Users\user\Downloads\arm-gnu-toolchain-14.2.rel1-mingw-w64-i686-arm-none-eabi\bin\arm-none-eabi-as -g -mcpu=cortex-m0 -mthumb try.s -o try.o
C:\Users\user\Downloads\arm-gnu-toolchain-14.2.rel1-mingw-w64-i686-arm-none-eabi\bin\arm-none-eabi-ld try.o -T ./try.ld -o try.elf
C:\Users\user\Downloads\arm-gnu-toolchain-14.2.rel1-mingw-w64-i686-arm-none-eabi\bin\arm-none-eabi-objcopy -O ihex try.elf try.hex

