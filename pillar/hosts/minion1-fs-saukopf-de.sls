heartbeat:
  auth:
    defaultkey: '1'
    authkeys:
      - '1 sha1 ahbaiW4oeghi8Jai'
  nodes:
    - name: 'minion1'
      id: 'minion1.fs.saukopf.de'
      neighbours:
        - 'eth0 192.168.17.14'
      resources:
        - 'IPaddr2::192.168.17.15/24/eth0'

    - name: 'minion2'
      id: 'minion2.fs.saukopf.de'
      neighbours:
        - 'eth0 192.168.17.13'

