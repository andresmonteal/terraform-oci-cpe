// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

module "cpe" {
  source = "../"

  tenancy_ocid   = var.tenancy_ocid
  compartment    = var.compartment
  name           = var.name
  cpe_ip_address = var.cpe_ip_address
  cpe_vendor     = var.cpe_vendor
  cpe_version    = var.cpe_version
}