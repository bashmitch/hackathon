terraform {
  required_providers {
    harvester = {
      source  = "harvester/harvester"
      version = ">= 0.6.6" # Specify the appropriate version
    }
  }

  required_version = ">= 1.0.0"
}

provider "harvester" {
  kubeconfig = "~/.kube/kubeconfig.yaml"
}

# Define variables for flexibility
variable "vm_count" {
  default = 4
  description = "Number of VMs to create."
}

variable "vm_config" {
  type = object({
    cpu     = number
    memory  = string
    network = string
  })

  default = {
    cpu     = 4
    memory  = "8Gi"
    network = "carrot-network" # Replace with the actual network name
  }
}

variable "disk_size" {
  default     = "100Gi"
  description = "Disk size for the VMs."
}


resource "harvester_volume" "storage_volume" {
  count               = var.vm_count
  name                = "storage-disk-${count.index}"
  namespace           = "carrot"
  size                = var.disk_size
#  storage_class_name  = "harvester-longhorn"
  volume_mode         = "Filesystem"
  access_mode         = "ReadWriteOnce"

  # Reference the existing image
  image = "ubuntu-24.04.1-desktop-amd64.iso"  # Replace with the exact name of the image in Harvester
}


resource "harvester_virtualmachine" "vm" {
  count = var.vm_count

  name          = "barrot-vm-${count.index}"
  namespace     = "carrot" # Replace with the appropriate namespace

  # VM Specs
  cpu           = var.vm_config.cpu
  memory        = var.vm_config.memory

  disk {
    name       = "cdrom-disk"
    type       = "cd-rom"
    size       = "25Gi"
    bus        = "sata"
    boot_order = 1

    image       = "carrot/image-5mdxd"
    auto_delete = true
  }

disk {
  name       = harvester_volume.storage_volume[count.index].name
  boot_order = 2
  size       = var.disk_size
  bus        = "sata"
}


  network_interface {
    name = var.vm_config.network
  }
}

output "vm_names" {
  description = "Names of the created VMs"
  value       = [for vm in harvester_virtualmachine.vm : vm.name]
}

output "vm_ips" {
  description = "IP addresses of the created VMs"
  value       = [for vm in harvester_virtualmachine.vm : vm.status.interfaces[0].ipAddress]
}

output "vm_statuses" {
  description = "Statuses of the created VMs"
  value       = [for vm in harvester_virtualmachine.vm : vm.status.phase]
}
