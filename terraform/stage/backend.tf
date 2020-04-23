terraform {
  backend "gcs" {
   bucket = "terraform-state-remote-backend-storage-vdaishi"
   prefix = "stage"
   }
}
