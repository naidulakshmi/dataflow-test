provider "google" {
  region = var.region
}

  
module "dataflow-job" {
  source                = "git::ssh://git@gitw.cvshealth.com/da/dfp/terraform-modules/approved-for-use/terraform-google-dataflow.git?ref=main"
  project_id            = var.project_id
  name                  = var.name
  region                = var.region
  zone                  = var.zone
  template_gcs_path     = var.template_gcs_path
  temp_gcs_location     = var.temp_gcs_location
  network_self_link     = var.network_self_link
  subnetwork_self_link  = var.subnetwork_self_link
  machine_type          = var.machine_type
  ip_configuration      = var.ip_configuration
  kms_key_name          = var.kms_key_name  
  labels                = var.labels
  parameters            = var.parameters
}
