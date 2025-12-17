export VAULT_TOKEN=$1
export VAULT_ADDR="https://vault.srv.nbl.lan"
export NETBOX_URL="https://netbox.srv.nbl.lan"
export NETBOX_TOKEN=$(vault kv get -tls-skip-verify -field netbox_api_key kv/ansible)
export VAULT_SKIP_VERIFY=true