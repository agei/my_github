wlanconfig ath1 create wlandev wifi1 wlanmode ap
iwpriv ath1 mode 11NGHT40PLUS
iwconfig ath1 essid anna_2g
iwconfig ath1 channel 6
iwpriv ath1 wds 1
iwpriv ath1 shortgi 1
iwpriv wifi1 txbf_snd_int 100
iwpriv ath1 uapsd 0
iwpriv ath1 stafwd 0
iwpriv ath1 ldpc 0
iwpriv ath1 ap_bridge 1
iwpriv ath1 disablecoext 1

ifconfig ath1 up
brctl addif br-lan ath1
