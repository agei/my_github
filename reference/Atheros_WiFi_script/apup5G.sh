wlanconfig ath0 create wlandev wifi0 wlanmode ap
iwpriv ath0 mode 11ACVHT80
iwconfig ath0 essid anna-5g
iwconfig ath0 channel 157
iwpriv ath0 wds 1
iwpriv ath0 shortgi 1
iwpriv wifi0 txbf_snd_int 100
iwpriv ath0 uapsd 0
iwpriv ath0 stafwd 0
iwpriv ath0 ldpc 3
iwpriv ath0 ap_bridge 1
sleep 1
ifconfig ath0 up
brctl addif br-lan ath0
