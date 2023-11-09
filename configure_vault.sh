export VAULT_ADDR=http://localhost:8200
export VAULT_TOKEN=root
vault secrets enable transit

vault policy write signing-policy - << EOF
path "transit/keys/cosign" {
  capabilities = ["read"]
}

path "transit/hmac/cosign/*" {
  capabilities = ["update"]
}

path "transit/sign/cosign/*" {
  capabilities = ["update"]
}

path "transit/verify/cosign" {
  capabilities = ["create"]
}
EOF

