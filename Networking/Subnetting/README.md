# SUBNETTING IPv4

ip is divided by 4 octates (from). When doing some ip routing we have 253 unicast options because there are some reserved address, like, 0 because is the network address and 255 that is the broadcast address

## Clasess
types of public classes:
 - A: 1.0.0.0 - 126.255.255.255
 - B: 128.0.0.0 - 191.255.0.0
 - C: 192.0.0.0 - 223.255.255.0
 - D: 224.0.0.0 - 239.255.255.255
 - E: 240.0.0.0 - 255.255.255.255

types of private classes:
 - A: 10.0.0.0 - 10.255.255.255
 - B: 172.16.0.0 - 172.31.255.255
 - C: 192.168.0.0 - 192.168.255.255

## Mask

2 possible values, 255 or 0, 
common types:
<br> Class A - mask /8:
- 255.0.0.0
- 11111111.00000000.00000000.00000000

<br> Class B - mask /16:
- 255.255.0.0
- 11111111.11111111.00000000.00000000

<br> Class C - mask /24:
- 255.255.255.0
- 11111111.11111111.11111111.00000000



The number is the sum of each octate (octate 2`8)

## subnetting
When I need more networks, i'll have to take more bits from the host bits
like, if I have /24 and i need 4 networks, i'll have to take 2 bits from the host, resulting in 11111111.11111111.11111111.11000000 /26 (because if you look the other way on binary would be 00000011, that is 4)
to find the ranges of each network I'd have to take value of the last 1 minus 1 in this case it will be 64 (broadcast), and 0 the network
 - 1: 192.168.1.0 - 192.168.1.63
 - 2: 192.168.1.64 - 192.168.1.127
 - 3: 192.168.1.128 - 192.168.1.191
 - 4: 192.168.1.192 - 192.168.1.255

 `Note: if the mask ends in the 3rd octate, you start incremeting in the 3rd octate`

When subnetting by host, to find the mask is the same has the host but this time don't pick the one who is bigger, instead pick the last that is lower than the actual number, meaning, if they ask for 10 networks, in the Subnetting network you'll pick 16 (.11110000) but if they ask for 10 hosts you'll pick 8 (.11110000)



### Exercise 1
How can I divide a /24 network into 5 subnets? What would be the new subnet mask, and what are the ranges for each subnet?

base network: 11111111.11111111.11111111.0
result octate: 11111111.11111111.11111111.11100000 because I'll take the first 3 bits (1,2,4)
resulting subnet mask 255.255.255.224 , and the increment would be 32: 
subnet 1:
 - Network: 192.168.1.0/27
 - 192.168.1.0 - 192.168.1.31
 - broadcast: 192.168.1.31
subnet 2:
 - Network: 192.168.1.32/27
 - 192.168.1.32 - 192.168.1.63
 - broadcast: 192.168.1.63
subnet 3:
 - Network: 192.168.1.64/27
 - 192.168.1.64 - 192.168.1.95
 - broadcast: 192.168.1.95
subnet 4:
 - Network: 192.168.1.96/27
 - 192.168.1.96 - 192.168.1.127
 - broadcast: 192.168.1.127
subnet 5:
 - Network: 192.168.1.128/27
 - 192.168.1.128 - 192.168.1.159
 - broadcast: 192.168.1.159

### Exercise 2

Target IP address	
198.12.166.8/23
11000110.00001100.10100110.00001000 /23

Network: 198.12.166.0
First Host: 198.12.166.1
Last host: 198.12.167.254
Broadcast: 198.12.167.255
Next Subnet: 198.12.168.0

# SUBNETTING IPv6

8 groups of 2 bytes, 8 blocks of 4 hex digits
