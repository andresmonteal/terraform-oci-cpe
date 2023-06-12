// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

variable "tenancy_ocid" {
  description = "(Required) (Updatable) The OCID of the root compartment."
  type        = string
}

variable "compartment" {
  description = "compartment name where to create all resources"
  type        = string
  default     = null
}

variable "name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
}

variable "cpe_ip_address" {
  description = "(Required) The public IP address of the on-premises router."
  type        = string
}

variable "cpe_vendor" {
  description = "(Optional) (Updatable) The vendor of the CPE device."
  type        = string
}

variable "cpe_version" {
  description = "(Optional) (Updatable) The version of the CPE device."
  type        = string
}