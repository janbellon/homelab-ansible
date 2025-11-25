path "kv/data/ansible" {
  capabilities = ["read"]
}

path "kv/data/postgresql/users" {
  capabilities = ["read"]
}

path "kv/data/powerdns" {
  capabilities = ["read"]
}

path "auth/token/lookup-self" {
  capabilities = ["read"]
}