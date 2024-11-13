# This is where you put your outputs declaration
output "virtual_machine_id" {
  value       = google_compute_instance.main.id
  description = "Returns the ID of the created resource"
}

output "virtual_machine_creation_timestamp" {
  value       = google_compute_instance.main.creation_timestamp
  description = "Returns the creation timestamp of the virtual machine"
}
