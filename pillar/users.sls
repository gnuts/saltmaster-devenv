users:
  testuser:
    fullname: Test User
    password: $6$wiasdfasdfasdfasdfsadfasdfasdf
    createhome: True
    shell: /bin/bash
    prime_group:
      name: users
    groups:
      - users
    ssh_key_type: rsa
    ssh_keys:
      pubkey: PUBLICKEY
    ssh_auth:
      - PUBLICKEY
    ssh_auth.absent:
      - PUBLICKEY_TO_BE_REMOVED
    # Generates an authorized_keys file for the user
    # with the given keys
    ssh_auth_file:
      - PUBLICKEY

  ## Absent user
  cuser:
    absent: True
    purge: True
    force: True


## Old syntax of absent_users still supported
absent_users:
  - donald
  - bad_guy

# add keys of userlists to accounts:
users_authgroups:
  root:
    - auser
    - buser
  git:
    - buser
    - cuser

# only create these user accounts:
# if "accounts
users_accounts:
  - auser
  - buser


