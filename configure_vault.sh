export VAULT_ADDR=http://localhost:8200
export VAULT_TOKEN=root
vault secrets enable transit

vault policy write signing-policy - << EOF
path "transit/keys/code-signing" {
  capabilities = ["read"]
}

path "transit/hmac/code-signing/*" {
  capabilities = ["update"]
}

path "transit/sign/code-signing/*" {
  capabilities = ["update"]
}

path "transit/verify/code-signing" {
  capabilities = ["create"]
}
EOF

