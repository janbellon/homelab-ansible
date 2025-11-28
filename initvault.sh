export VAULT_TOKEN=$1
export VAULT_ADDR="https://vault.enpos.lan"
export NETBOX_URL="https://netbox.enpos.lan"
export NETBOX_TOKEN=$(vault kv get -tls-skip-verify -field netbox_token kv/ansible)
export SSL_CERT_FILE
