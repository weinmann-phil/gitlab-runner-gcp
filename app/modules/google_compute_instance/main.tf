# This is where you put your resource declarationi
data "google_service_account" "main" {
  account_id   = var.service_account.id
  display_name = var.service_account.name
}

resource "google_compute_instance" "main" {
  name         = var.general.name
  machine_type = var.general.type
  zone         = var.general.zone

  tags = var.general.tags

  boot_disk {
    initialize_params {
      image  = var.virtual_machine.image
      labels = var.virtual_machine.labels
    }
  }

  scratch_disk {
    interface = var.virtual_machine.interface
  }

  network_interface {
    network = virtual_machine.network

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = var.virtual_machine.metadata

  metadata_startup_script = var.virtual_machine.startup

  service_account {
    email  = var.service_account.email
    scopes = var.service_account.scopes
  }
}
