# Signing binaries with Cosign and Vault

Execute in this order:

export VAULT_ADDR=http://localhost:8200
export VAULT_TOKEN=root

install-cosign.sh

start-vault.sh

configure-vault.sh

cosign generate-key-pair --kms hashivault://code-signin

cosign sign-blob --key hashivault://code-signing --output-signature signature_of_blob.sig <any-file-or-binary>

cosign verify-blob --key hashivault://code-signing --signature signature_of_blob.sig <any-file-or-binary
