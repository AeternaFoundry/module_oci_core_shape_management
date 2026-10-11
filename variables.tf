variable "core_shape_managements" {
  description = <<EOT
Map of core_shape_managements, attributes below
Required:
    - compartment_id
    - image_id
    - shape_name
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    image_id       = string
    shape_name     = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

