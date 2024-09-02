
resource "google_iam_workload_identity_pool" "serviceauthcentral_pool" {
  project                   = var.project_id
  workload_identity_pool_id = "${var.name}-pool"
  display_name              = "${var.name} Pool"
  description               = "ServiceAuthCentral Pool for ${var.name}"
}

resource "google_iam_workload_identity_pool_provider" "serviceauthcentral_provider" {
  project                            = var.project_id
  workload_identity_pool_id          = google_iam_workload_identity_pool.serviceauthcentral_pool.workload_identity_pool_id
  workload_identity_pool_provider_id = "${var.name}-provider"
  display_name                       = "${var.name} Provider"
  description                        = "ServiceAuthCentral Provider for ${var.name}"
  attribute_mapping = {
    "google.subject" = "assertion.sub"
  }
  oidc {
    issuer_uri = var.sac_issuer
  }
}
