network:

  dnsdomain: int.mawoh.de
  dnsservers:
    - 192.168.122.1
  dnssearch:
    - int.mawoh.de
    - int.gca-protect.de

  routes:
    '0.0.0.0/0':
      via: 192.168.122.1

  interfaces:
    'eth0':
      enabled: True
      proto: static
      address: 192.168.122.130
      netmask: 24


