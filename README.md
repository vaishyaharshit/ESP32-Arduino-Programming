# ESP32-Arduino-Programming
Esp32/Arduino programming using batch file
 

## When we upload the code from Arduino IDE, The IDE executes the below-mentioned in order to program the device
```
C:\Users\Admin\AppData\Local\Arduino15\packages\esp32\tools\esptool_py\4.2.1/esptool.exe
 --chip esp32 --port "COM4" --baud 460800  --before default_reset --after hard_reset write_flash  -z --flash_mode dio --flash_freq 80m --flash_size 4MB 0x1000 

C:\Users\Admin\AppData\Local\Temp\arduino-sketch-79D4C8B425A847C27D922111929320A6/cameradetect.ino.bootloader.bin" 0x8000 

C:\Users\Admin\AppData\Local\Temp\arduino-sketch-79D4C8B425A847C27D922111929320A6/cameradetect.ino.partitions.bin" 0xe000
 C:\Users\Admin\AppData\Local\Arduino15\packages\esp32\hardware\esp32\2.0.5/tools/partitions/boot_app0.bin" 0x10000 

C:\Users\Admin\AppData\Local\Temp\arduino-sketch-79D4C8B425A847C27D922111929320A6/cameradetect.ino.bin" 
```
## The command consists of 5 files that we need to upload the code
 1. Esptool.exe- the application required for esp32 devices with its version"
 2. Boot_app0.bin- the boot_app0.bin file
 3. Bootloader.bin- the bootloader file as .bin 
 4. Partitions.bin- the partition file as .bin
 5. cameradetect.ino.bin- your main code .bin file

Note- If we have all these files in one folder we can just create a batch file to run it in CMD(without the concern of software version/tools)
