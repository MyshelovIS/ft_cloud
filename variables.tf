variable "cloud_id" {
  description = "OAuth-токен для Yandex Cloud"
  type        = string
  sensitive   = true
}

variable "cloud_id" {
  description = "Идентификатор облака"
  type        = string
}

variable "folder_id" {
  description = "Идентификатор каталога"
  type        = string
}

variable "default_zone" {
  description = "Зона доступности по умолчанию"
  type        = string
  default     = "ru-central1-a"
}

variable "image_id" {
  description = "Идентификатор образа ВМ"
  type        = string
  default     = "fd8m7v17kd6ldt5da0sh" # Ubuntu 22.04 LTS
}

variable "ssh_public_key" {
  description = "Публичный SSH-ключ"
  type        = string
}