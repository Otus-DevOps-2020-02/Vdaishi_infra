terraform {
  # Версия terraform
  required_version = " ~> 0.12.8"
}

provider "google" {
  # Версия провайдера
  version = "2.15"

  # ID проекта
  project = var.project

  region = var.region
}
resource "google_compute_project_metadata" "appuser" {
  metadata = {
    ssh-keys = "appuser:${file(var.ssh-key)}"
  }
}
module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  zone            = var.zone
  app_disk_image  = var.app_disk_image
  private_key_path = var.private_key_path
  database_url     = module.db.db_internal_ip
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  zone            = var.zone
  db_disk_image   = var.db_disk_image
  private_key_path = var.private_key_path
}
module "vpc" {
  source        = "../modules/vpc"
  source_ranges = ["46.151.155.200/32"]
}
