# Oracle Capacity Retry - GitHub Actions Ready

This repo is prepared to retry Oracle instance creation every 5 minutes using GitHub Actions.

## What is already set
- OCI Object Storage namespace: `axz5kerlx4p6`
- Backend bucket name in `main.tf`: `tf-state`
- Region: `me-dubai-1`
- Shape config: `2 OCPU / 12 GB`

## Before upload
Create an OCI Object Storage bucket named exactly:

`tf-state`

If you already created a bucket with a different name, change the `bucket` value in `main.tf`.

## Files to upload to GitHub
- `main.tf`
- `.github/workflows/oracle-capacity-retry.yml`
- `.gitignore`

## GitHub Secrets you must add
In your GitHub repo:
Settings -> Secrets and variables -> Actions -> New repository secret

Add these 5 secrets:
- `OCI_TENANCY_OCID`
- `OCI_USER_OCID`
- `OCI_FINGERPRINT`
- `OCI_REGION`
- `OCI_PRIVATE_KEY`

For `OCI_REGION`, use:
`me-dubai-1`

For `OCI_PRIVATE_KEY`, paste the full contents of your PEM file.

## After upload
1. Push to the default branch.
2. Open GitHub -> Actions.
3. Run the workflow once manually.
4. After that, GitHub will retry every 5 minutes.

## Important
Do not upload your local `config` file or PEM key file to GitHub.
