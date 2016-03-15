wlanconfig ath0 create wlandev wifi0 wlanmode sta
iwpriv ath0 mode 11ACVHT80
iwconfig ath0 essid jon-5g
iwpriv ath0 wds 1
iwpriv ath0 ldpc 0

brctl addbr br0
brctl addif br0 ath0

ifconfig br0 192.168.1.2
ifconfig ath0 up
