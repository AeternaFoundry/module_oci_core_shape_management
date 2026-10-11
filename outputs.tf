output "core_shape_managements_id" {
  description = "Map of id values across all core_shape_managements, keyed the same as var.core_shape_managements except keys with no id are omitted"
  value       = { for k, v in oci_core_shape_management.core_shape_managements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_shape_managements_compartment_id" {
  description = "Map of compartment_id values across all core_shape_managements, keyed the same as var.core_shape_managements except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_shape_management.core_shape_managements : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_shape_managements_image_id" {
  description = "Map of image_id values across all core_shape_managements, keyed the same as var.core_shape_managements except keys with no image_id are omitted"
  value       = { for k, v in oci_core_shape_management.core_shape_managements : k => v.image_id if v.image_id != null && length(v.image_id) > 0 }
}
output "core_shape_managements_shape_name" {
  description = "Map of shape_name values across all core_shape_managements, keyed the same as var.core_shape_managements except keys with no shape_name are omitted"
  value       = { for k, v in oci_core_shape_management.core_shape_managements : k => v.shape_name if v.shape_name != null && length(v.shape_name) > 0 }
}

