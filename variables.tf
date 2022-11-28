variable "project_id" {
  type        = string
  description = "The project ID to deploy to"
}

variable "region" {
  type        = string
  description = "The region in which the bucket will be deployed"
}

variable "zone" {
  type        = string
  description = "The zone in which the dataflow job will be deployed"
}

variable "name" {
  type        = string
  description = "The name of the dataflow job"
}

variable "template_gcs_path" {
  type        = string
  description = "The GCS path to the Dataflow job template."
}

variable "temp_gcs_location" {
  type        = string
  description = "A writeable location on GCS for the Dataflow job to dump its temporary data."
}

variable "subnetwork_self_link" {
  type        = string
  description = "The subnetwork self link to which VMs will be assigned."
}

variable "network_self_link" {
  type        = string
  description = "The network self link to which VMs will be assigned."
}

variable "machine_type" {
  type        = string
  description = "The machine type to use for the job."
  default     = ""
}

variable "ip_configuration" {
  type        = string
  description = "The configuration for VM IPs. Options are 'WORKER_IP_PUBLIC' or 'WORKER_IP_PRIVATE'."
}

variable "kms_key_name" {
  type        = string
  description = "The name for the Cloud KMS key for the job. Key format is: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY"
}

variable "labels" {
  type = map(string)
  description = "A map of labels to assign to the Dataflow job"
  default = {}
}

variable "parameters" {
  type        = map(string)
  description = "Key/Value pairs to be passed to the Dataflow job (as used in the template)."
  default     = {}
}
