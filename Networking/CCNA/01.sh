

Router 1 command lines are given below :

Router>enable
Router#configure terminal

Router(config)#interface fastEthernet 0/0
Router(config-if)#ip address 192.168.12.1 255.255.255.0
Router(config-if)#no shutdown

Router(config-if)#exit

Router(config)#interface fastEthernet 0/1
Router(config-if)#ip address 192.168.10.1 255.255.255.0
Router(config-if)#no shutdown

Router(config-if)#exit
Router(config)#exit
Router#

Router#configure terminal
Router(config)#ip route 192.168.11.0 255.255.255.0 192.168.12.2
Router(config)#exit





Router 1 command lines are given below :

Router>enable
Router#configure terminal

Router(config)#interface fastEthernet 0/0
Router(config-if)#ip address 192.168.12.1 255.255.255.0
Router(config-if)#no shutdown

Router(config-if)#exit

Router(config)#interface fastEthernet 0/1
Router(config-if)#ip address 192.168.10.1 255.255.255.0
Router(config-if)#no shutdown


Router(config-if)#exit
Router(config)#exit
Router#


Router#configure terminal
Router(config)#ip route 192.168.11.0 255.255.255.0 192.168.12.2
Router(config)#exit

