variable "protocol" {
  type = string
  default = "HTTP"
}

variable "port" {
  type = number
}

variable "vpc_id" {
  type = string
}

variable "health_check_path" {
  type = string
  default = "/"
}

variable "load_balancer_arn" {
  type = string
}

variable "app_name" {
  type = string
  default = "Aleidy"
}

variable "environment" {
  type = string
  default = "dev"
}
variable "target_type" {
  type = string
  default = "instance"
}
variable "health_check_enabled" {
  type = bool
  default = true
}
variable"health_check_matcher" {
  type = string
  default = "instance"
}
variable "health_check_protocol" {
  type = string
  default = "HTTP"
}
variable "health_check_timeout" {
  type = number
  default = 30
}
variable "health_check_interval" {
  type = number
  default = 31
}
variable "healthy_threshold" {
  type = number
  default = 2
}