variable name {
    type = string
}

variable pool_id {
    type = string
    default = "cytech"
}

variable memory {
    type = number
}

variable "nbr_cpu" {
  type = number
  default = 1
}

variable "sizeDisk" {
  type = number
  default = 20
}

variable "ssh_public_key" {
  type = string
}
variable network_device_bridge {
    type = string
    default = "vmbr0"
}

variable stop_on_destroy {
    type = bool
    default = true
}

variable "ipaddress" {
  type = string
}
variable "proxmox_endpoint" {
  type        = string
  default     = "https://192.168.100.12:8006/"
}

variable "proxmox_insecure" {
  type        = bool
  default     = true
}


variable "proxmox_username" {
  type        = string
  default     = "cytech-8@pam"
}

variable "proxmox_password" {
  type        = string
  default     = "cytech"
}

variable "ssh_username" {
  type        = string
  default     = "cytech"
}

variable "ssh_agent" {
  type        = bool
  default     = true
}