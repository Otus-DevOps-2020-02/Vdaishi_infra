variable project {
  description = "Project ID"
}
variable region {
  description = "Region"
  default     = "europe-west4"
}
variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable disk_image {
  description = "Disk image"
}
variable private_key_path {
  description = "Path to the private key used for ssh access"
}
variable zone {
  description = "Zone"
  default     = "europe-west4-a"
}
variable "ssh-key" {
  description = "appuser-1 path key0"
}
variable count_ins {
  description = "Count Instance"
  default     = 1
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "ruby-app"
}
variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "mongodb"
}
