# Signing binaries with Cosign and Vault
```
export VAULT_TOKEN=root

install-cosign.sh

start-vault.sh

configure-vault.sh

cosign generate-key-pair --kms hashivault://code-signing 

Public key written to cosign.pub



cosign sign-blob --key hashivault://code-signing --output-signature signature_of_blob.sig ~/Downloads/20220129214115086_003194.pdf                                                            

Using payload from: /Users/mkaesz/Downloads/20220129214115086_003194.pdf

        The sigstore service, hosted by sigstore a Series of LF Projects, LLC, is provided pursuant to the Hosted Project Tools Terms of Use, available at https://lfprojects.org/policies/hosted-project-tools-terms-of-use/.
        Note that if your submission includes personal data associated with this signed artifact, it will be part of an immutable record.
        This may include the email address associated with the account with which you authenticate your contractual Agreement.
        This information will be used for signing this artifact and will be stored in public transparency logs and cannot be removed later, and is subject to the Immutable Record notice at https://lfprojects.org/policies/hosted-project-tools-immutable-records/.

By typing 'y', you attest that (1) you are not submitting the personal data of any other person; and (2) you understand and agree to the statement and the Agreement terms at the URLs listed above.
Are you sure you would like to continue? [y/N] y
tlog entry created with index: 48657111
Wrote signature to file signature_of_blob.sig



cosign verify-blob --key hashivault://code-signing --signature signature_of_blob.sig ~/Downloads/20220129214115086_003194.pdf

Verified OK
```
