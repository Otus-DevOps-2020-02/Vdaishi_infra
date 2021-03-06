variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable private_key_path {
  description = "Path to the private key used in connections"
}
variable zone {
  description = "Zone"
  default     = "europe-west4-a"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default = "ruby-app"
}
variable "database_url" {
  description = "IP and port for conncection database"
  default     = "127.0.0.1:27017"
}
