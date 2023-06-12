// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

########################
# Dynamic Routing Gateway
########################

locals {
  default_freeform_tags = {
    terraformed = "Please do not edit manually"
    module      = "oracle-terraform-oci-cpe"
  }
  merged_freeform_tags = merge(var.freeform_tags, local.default_freeform_tags)
  compartment_id       = try(data.oci_identity_compartments.compartment[0].compartments[0].id, var.compartment_id)
  cpe_device_id        = [for shape in data.oci_core_cpe_device_shapes.cpe.cpe_device_shapes : shape.cpe_device_shape_id if shape.cpe_device_info[0].vendor == var.cpe_vendor && shape.cpe_device_info[0].platform_software_version == var.cpe_version]
}

resource "oci_core_cpe" "main" {
  #Required
  compartment_id = local.compartment_id
  ip_address     = var.cpe_ip_address

  #Optional
  cpe_device_shape_id = local.cpe_device_id[0]
  defined_tags        = var.defined_tags
  display_name        = var.name
  freeform_tags       = local.merged_freeform_tags

  timeouts {
    create = "20m"
    update = "20m"
    delete = "20m"
  }
}