resource "oci_core_shape_management" "core_shape_managements" {
  for_each = var.core_shape_managements

  compartment_id = each.value.compartment_id
  image_id       = each.value.image_id
  shape_name     = each.value.shape_name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

