[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![Work In Progress](https://img.shields.io/badge/Status-Work%20In%20Progress-yellow)](https://unitvectory-labs.github.io/uvy-labs-guide/bestpractices/status/#work-in-progress)

# serviceauthcentral-workload-identity-gcp-tofu

OpenTofu module for deploying ServiceAuthCentral Workload Identity Federation in GCP

## Usage

```hcl
module "serviceauthcentral_workload_identity_gcp" {
    source = "git::https://github.com/UnitVectorY-Labs/serviceauthcentral-workload-identity-gcp-tofu.git?ref=main"
    project_id = var.project_id
    name = "serviceauthcentral"
    sac_issuer = "https://issuer.example.com"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 5.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_iam_workload_identity_pool.serviceauthcentral_pool](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool) | resource |
| [google_iam_workload_identity_pool_provider.serviceauthcentral_provider](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the Workload Identity | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The GCP project id | `string` | n/a | yes |
| <a name="input_sac_issuer"></a> [sac\_issuer](#input\_sac\_issuer) | The issuer for ServiceAuthCentral | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_provider_name"></a> [provider\_name](#output\_provider\_name) | n/a |
<!-- END_TF_DOCS -->
