variable "name" {
  type        = string
  description = "the name of the service account (MAX 30 characters)"
}

variable "displayname" {
  type        = string
  description = "the display name of the service account"

  default = ""
}

variable "project" {
  type        = string
  description = "the project in GCP"
}

variable "description" {
  type        = string
  description = "Optional description"

  default = ""
}

variable "roles" {
  type        = list(string)
  description = "the roles of the SA"

  default = []
}

variable "disabled" {
  type        = bool
  description = "(Optional) Whether a service account is disabled or not. Defaults to false."

  default = null
}
