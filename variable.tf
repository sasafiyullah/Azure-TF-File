variable "resource-grp" {
  description = "This is the name of the RG"
  type = string
  default = "New-Grp"
}

variable "location" {
  description = "This is the location of the resources"
  type = string
  default = "Australia East"
}

variable "storage-account-name" {
    description = "This is the name of the Storage account"
    type =  string
    default = "storageacountssacloud"
}

variable "container-name" {
    description = "This is the name of the container"
    type = string
    default = "terraform-tfstate"
  
}

variable "tfstate" {
  description = "Name of the Tf file"
  type = string
  default = "Azure-Terraform.tfstate"
}