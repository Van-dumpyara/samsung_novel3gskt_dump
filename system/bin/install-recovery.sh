#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:8374272:7297a488aa4163ba97bc23f01f929010c732a511; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:7497728:0b8925b475f8c149e40ac5b6c866f08ee8b8d42c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY 7297a488aa4163ba97bc23f01f929010c732a511 8374272 0b8925b475f8c149e40ac5b6c866f08ee8b8d42c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
