#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/15570000.ufs/by-name/RECOVERY:28540928:b0788733c14455240fe232feb1fbbeb0aeba46b7; then
  applypatch EMMC:/dev/block/platform/15570000.ufs/by-name/BOOT:24418304:2483ce82963b71b257edf40617afae19250ce9fe EMMC:/dev/block/platform/15570000.ufs/by-name/RECOVERY b0788733c14455240fe232feb1fbbeb0aeba46b7 28540928 2483ce82963b71b257edf40617afae19250ce9fe:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
