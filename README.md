[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![Work In Progress](https://img.shields.io/badge/Status-Work%20In%20Progress-yellow)](https://unitvectory-labs.github.io/uvy-labs-guide/bestpractices/status/#work-in-progress)

# serviceauthcentral-workload-identity-gcp-tofu

OpenTofu module for deploying GCP Workload Identity Federation for ServiceAuthCentral

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
<!-- END_TF_DOCS -->
