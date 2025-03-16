output "app_name" {
  description = "Nom de l'app"
  value       = "${module.app.resource_app.name}"
}

output "bdd_name" {
  description = "Nom de la bdd"
  value       = "${module.bdd.resource_bdd.name}"
}

output "app_cores" {
  description = "Nom de l'app"
  value       = "${module.app.resource_app.cpu[0].cores}"
}

output "bdd_cores" {
  description = "Nom de la bdd"
  value       = "${module.bdd.resource_bdd.cpu[0].cores}"
}


output "app_disk" {
  description = "Nom de la bdd"
  value       = "${module.app.resource_app.disk[0].size}"
}

output "bdd_disk" {
  description = "Nom de la bdd"
  value       = "${module.bdd.resource_bdd.disk[0].size}"
}

output "app_ram" {
  description = "Nom de la bdd"
  value       = "${module.app.resource_app.memory[0].dedicated}"
}

output "bdd_ram" {
  description = "Nom de la bdd"
  value       = "${module.bdd.resource_bdd.memory[0].dedicated}"
}

output "app_ip" {
  description = "Nom de la bdd"
  value       = "${module.app.resource_app.ipv4_addresses[1]}"
}

output "bdd_ip" {
  description = "Nom de la bdd"
  value       = "${module.bdd.resource_bdd.ipv4_addresses[1]}"
}

output "app_os" {
  description = "Nom de la bdd"
  value       = "${module.app.resource_app.disk[0].file_id}"
}

output "bdd_os" {
  description = "Nom de la bdd"
  value       = "${module.bdd.resource_bdd.disk[0].file_id}"
}