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
variable "ssh-key2" {
  description = "appuser-2 path key"
}
variable "ssh-key3" {
  description = "appuser-3 path key"
}
variable count_ins{
  description = "Count Instance"
  default     = 1
}
