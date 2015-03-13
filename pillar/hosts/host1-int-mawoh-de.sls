
include:
  - users

formulas:
  #- network-debian
  #- conntrack
  - quagga

network:
  dnsdomain: int.mawoh.de
  dnsserver:
    - 192.168.122.1
  dnssearch:
    - int.mawoh.de
    - int.gca-protect.de

  routes:
    '0.0.0.0/0':
      via: 192.168.122.1
      comment: 'default route'

  interfaces:
    'eth0':
      comment: "test interface"
      enabled: True
      proto: static
      type: inet
      address: 192.168.122.130
      netmask: 24

conntrack:
  address:     192.168.122.130
  destination: 192.168.122.131
  interface:   eth0
  ignore:
    - 1.2.3.4

quagga:
  bgpd:
    routers:
      - nodeid: 'host1.int.mawoh.de'
        as: '2134'
        id: '192.168.1.1'
      - nodeid: 'host2.int.mawoh.d'
        as: '2134'
        id: '192.168.1.1'
    neighbours:
      - id: '192.168.1.3'
        as: '12345'
        desc: 'VRF ninja1 LINK to router1'
        password: 'asdfasdf'
      - id: '192.168.1.4'
        as: '123145'
        desc: 'VRF ninja1 LINK to router2'
        password: 'asdfasdc'
    allowlist:
      - name: 'outlist1'
        direction: 'out'
        networks:
          - '172.16.0.0/28'  # Customer 1
          - '10.1.1.0/24'  # Customer2
          - '10.1.2.0/24'  # Customer3

