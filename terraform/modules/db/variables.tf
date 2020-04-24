variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable private_key_path {
  description = "Path to the private key used for ssh access"
}
variable zone {
  description = "Zone"
  default     = "europe-west4-a"
}
variable db_disk_image {
  description = "Disk image for reddit db"
  default = "mongodb"
}
