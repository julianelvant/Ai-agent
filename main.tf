terraform {
  required_version = ">= 1.12.0"

  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }

  backend "oci" {
    bucket    = "tf-state"
    namespace = "axz5kerlx4p6"
    key       = "oracle-capacity/instance.tfstate"
    region    = "me-dubai-1"
    auth      = "APIKey"
  }
}

provider "oci" {
  auth = "APIKey"
}

resource "oci_core_instance" "generated_oci_core_instance" {
  agent_config {
    is_management_disabled = false
    is_monitoring_disabled = false

    plugins_config {
      desired_state = "DISABLED"
      name          = "Vulnerability Scanning"
    }

    plugins_config {
      desired_state = "DISABLED"
      name          = "Management Agent"
    }

    plugins_config {
      desired_state = "ENABLED"
      name          = "Custom Logs Monitoring"
    }

    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute RDMA GPU Monitoring"
    }

    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Monitoring"
    }

    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Auto-Configuration"
    }

    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Authentication"
    }

    plugins_config {
      desired_state = "ENABLED"
      name          = "Cloud Guard Workload Protection"
    }

    plugins_config {
      desired_state = "DISABLED"
      name          = "Block Volume Management"
    }

    plugins_config {
      desired_state = "DISABLED"
      name          = "Bastion"
    }
  }

  availability_config {
    recovery_action = "RESTORE_INSTANCE"
  }

  availability_domain = "cHOj:ME-DUBAI-1-AD-1"
  compartment_id      = "ocid1.tenancy.oc1..aaaaaaaawwr6fxvsl3hrne2hpposrdgm2abaaanfgwciqcziuxlktq7hzleq"

  create_vnic_details {
    assign_ipv6ip             = false
    assign_private_dns_record = true
    assign_public_ip          = true
    subnet_id                 = "ocid1.subnet.oc1.me-dubai-1.aaaaaaaav6dpwb2wgxvjctydrzbo46jspe6hxc5nnvuxcfal63uu2dgmznda"
  }

  display_name = "instance-20260309-0046"

  instance_options {
    are_legacy_imds_endpoints_disabled = false
  }

  is_pv_encryption_in_transit_enabled = true

  metadata = {
    ssh_authorized_keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDQWOd3NbeBfSaoMI+zg79jWnZc9jaq+xBvcYrzZfcI81iyffF60H8Qp5f0TnsxyPNGTcrVmnSU8ZDeisQg3StGIOo4mn0jz2pg7zmfWoqGcr9Bup+2GVM0x0aKDtY1EV0QLev9vlzZn6HkM8EaKezLlxN6R41wuUyaDz0U28qFS1EPwh+YvZn5fH60PRpuJaUKd3ImtouEz6dpqFvyPNdaImFAw3BvMa0JTCa71OorsDdKqSVAjcseBGciF5DSgEF5mHy7oT4TsijFeo8ys7Wrnh4uJbMSDx9rTykHLap21tluZHBA4AOJHv+i16NsNP+Y338Gc7npGnyazdUfv6FR ssh-key-2026-03-08"
  }

  shape = "VM.Standard.A1.Flex"

  shape_config {
    ocpus         = 2
    memory_in_gbs = 12
  }

  source_details {
    boot_volume_size_in_gbs = 50
    boot_volume_vpus_per_gb = 10
    source_id               = "ocid1.image.oc1.me-dubai-1.aaaaaaaab352mbi4vcyymzs4ccln576k34khc357fk2hlaqx3cuzjclgkoea"
    source_type             = "image"
  }
}
