echo 8 > /proc/sys/kernel/printk

insmod /lib/modules/3.10.20/adf.ko
insmod /lib/modules/3.10.20/asf.ko
insmod /lib/modules/3.10.20/ath_hal.ko
insmod /lib/modules/3.10.20/ath_rate_atheros.ko
insmod /lib/modules/3.10.20/ath_spectral.ko
insmod /lib/modules/3.10.20/hst_tx99.ko
insmod /lib/modules/3.10.20/ath_dev.ko
insmod /lib/modules/3.10.20/ath_dfs.ko
# Normal mode, enable msi interrupt.
insmod /lib/modules/3.10.20/umac.ko msienable=1
# testmode=1 for calibration
# insmod /lib/modules/3.10.20/umac.ko testmode=1 ahbskip=1

insmod /lib/modules/3.10.20/smart_antenna.ko