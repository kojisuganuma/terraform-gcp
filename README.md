# terraform-gcp

## service account

Terraform Cloud が利用する GCP サービスアカウント

### create sa

```sh
gcloud iam service-accounts create terraform
```

### set iam-policy sa

```sh
gcloud iam service-accounts set-iam-policy terraform@ks-playground.iam.gserviceaccount.com iam_policy.yaml
```

### credential credential key

```sh
gcloud iam service-accounts keys create ~/.config/gcloud/kojisuganuma/terraform/credential.json --iam-account terraform@ks-playground.iam.gserviceaccount.com
```
