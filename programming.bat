@echo off
setlocal

set chip=esp32
set before=default_reset
set after=hard_reset
set flash_mode=dio
set flash_freq=80m
set flash_size=detect
set file_name=cameradetect

set /p port="Enter the COM port: "

set "bin_folder=%~dp0"
set "esptool=%bin_folder%esptool.exe"

%esptool% --chip %chip% --port %port% --baud 921600 --before %before% --after %after% write_flash -z --flash_mode %flash_mode% --flash_freq %flash_freq% --flash_size %flash_size% 0xe000 "%bin_folder%boot_app0.bin" 0x1000 "%bin_folder%%file_name%.ino.bootloader.bin" 0x10000 "%bin_folder%%file_name%.ino.bin" 0x8000 "%bin_folder%%file_name%.ino.partitions.bin"

pause
