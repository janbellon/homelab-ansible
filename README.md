# Enpos Ansible Repository

**Quick start**
1. Clone the repository
```bash
git clone https://gitlab.enpos.fr/enpos/admin/ansible
cd ansible
```
2. Setup Python virtual environment
```bash
python3 -m venv .venv
source .venv/bin/activate
cat ssl/ca.crt | sudo tee -a $(python3 -c 'import certifi; print(certifi.where())')
```
3. Define environment variables
```bash
export VAULT_TOKEN=s.xxxxxx
```
```bash
export VAULT_ADDR="https://openbao.enpos.lan"
vault login $VAULT_TOKEN
export NETBOX_URL="https://netbox.enpos.lan"
export NETBOX_TOKEN=$(vault kv get -field netbox_token kv/ansible)
export SSL_CERT_FILE
```
4. Download Ansible private SSH key
```bash
vault kv get -field ssh_private_key kv/ansible > id_ansible
```
5. Provision new server created with Terraform
CoreDNS Example (check mode)
```bash
ansible-playbook playbooks/coredns.yaml -i inventory/netbox.yaml --limit "dns1.enpos.lan" --tags "install" --diff --check -v 
```
