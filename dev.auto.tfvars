region               = "us-east4" # example : us-east4
zone                 = "us-east4-b" #example : "us-east4-b"
project_id           = "digital-dfp-dev" # example: digital-dfp-dev
name                 = "wordcount-terraform-jedi" # example: "wordcount-terraform-jedi"
template_gcs_path    = "gs://dataflow-templates/latest/Word_Count" # example: "gs://dataflow-templates/latest/Word_Count"
temp_gcs_location    = "gs://bucket-jedi/dataflow" # example: "gs://bucket-jedi-test-2/dataflow"
network_self_link    = "vpc-cvs-hub-nonprod-1" # example: "vpc-cvs-hub-nonprod-1"
subnetwork_self_link = "https://www.googleapis.com/compute/v1/projects/vpc-equinix-cvs/regions/us-east4/subnetworks/sn-cvs-use4-dig-dfp-gke-dev" # example: "https://www.googleapis.com/compute/v1/projects/vpc-equinix-cvs/regions/us-east4/subnetworks/sn-cvs-use4-dig-dfp-gke-dev"
machine_type         = " n1-standard-1" # example: "n1-standard-1"
ip_configuration     = "WORKER_IP_PRIVATE" # example: "WORKER_IP_PRIVATE"
labels               = {
    "env" = "dev", 
    "app" = "app", 
    "itpr" = "itpr", 
    "costcenter" = "1234", 
    "dataclassification" = "proprietary", 
    "applicationid" = "demo", 
    "owner" = "naidul1@aetna.com"
}
kms_key_name         = "projects/digital-dfp-dev/locations/us-east4/keyRings/digital-dfp-dev-jedi/cryptoKeys/digital-dfp-dev-jedi" # example : "projects/digital-dfp-dev/locations/us-east4/keyRings/digital-dfp-dev-terratest/cryptoKeys/digital-dfp-dev-terratest"
parameters = {
    inputFile = "gs://dataflow-samples/shakespeare/kinglear.txt", #example :  "gs://dataflow-samples/shakespeare/kinglear.txt"
    output    = "gs://bucket-jedi/dataflow/output/my_output" #example : "gs://bucket-jedi-test-2/dataflow/output/my_output"
  }