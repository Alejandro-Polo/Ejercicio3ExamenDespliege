variable "region_virginia" {
  default = "us-east-1" #una de las dos regiones que se puede usar
  description = "Región de AWS donde se desplegaran los recursos"
}
variable "cidr_block" {
  default     = "10.0.0.0/16"
  type        = string
  description = "CIDR block para la VPC"
}

variable "public_subnet_cidr_blocks" {
  default     = ["10.0.0.0/24", "10.0.2.0/24"]
  type        = list
  description = "CIDR para la red publica"
}

variable "private_subnet_cidr_blocks" {
  default     = ["10.0.1.0/24", "10.0.3.0/24"]
  type        = list
  description = "CIDR para la red privada"
}