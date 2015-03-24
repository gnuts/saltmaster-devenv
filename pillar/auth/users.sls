users:
  ## Full list of pillar values
  demo1:
    fullname: Demo User 1
    password: $6$wasdlkhaskldaslkdj
    createhome: True
    shell: /bin/bash
    prime_group:
      name: users
    groups:
      - staff
    ssh_key_type: rsa
    ssh_auth:
      - ssh-rsa asdfasdfasdfasdf demo1
    ssh_keys:
      pubkey: pubkeydemo1/asdfasdfasdf
    ssh_auth_file:
      - demo1sshauthfile/asdfasdf 

  demo2:
    fullname: Demo User 2
    password: $6$wasdlkhasasdgsdfgsgsdg
    createhome: True
    shell: /bin/bash
    prime_group:
      name: users
    groups:
      - staff
    ssh_auth:
      - ssh-rsa xcvbxcvbxcvbxcvb demo2
    ssh_key_type: rsa
    ssh_keys:
      pubkey: pubkeydemo2/kjhkjhkjhkjhjhkkjhjhk
    ssh_auth_file:
      - demo2sshauthfile/lkjljklkjlkjlkjlkjlkj

  demo3:
    fullname: Demo User 3
    createhome: True
    shell: /bin/bash
    prime_group:
      name: users

  demo4:
    fullname: Demo User 4
    sudouser: True
    createhome: True
    shell: /bin/bash
    prime_group:
      name: users

  demo5:
    ssh_auth:
      - ssh-rsa 5kjh5kjhg5jhkg5jhkg5jhg5jgh demo5
    


# add keys of userlists to accounts:
authorized_users:
  demo3:
    - demo1
    - demo2
  demo4:
    - demo2

#optional, acl way of including users:
authorized_acl:
  list1:
    demo3:
      - demo1
      - demo2
  list2:
    demo3:
      - demo5



# only create these user accounts:
#applied_accounts:
#  - demo1


