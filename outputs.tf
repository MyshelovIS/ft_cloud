output "vm_public_ips" {
  description = "Публичные IP-адреса виртуальных машин"
  value       = yandex_compute_instance.web[*].network_interface.0.nat_ip_address
}

output "vm_private_ips" {
  description = "Приватные IP-адреса виртуальных машин"
  value       = yandex_compute_instance.web[*].network_interface.0.ip_address
}

output "load_balancer_external_ip" {
  description = "Внешний IP-адрес балансировщика"
  value       = one([for l in yandex_lb_network_load_balancer.web_lb.listener : one(l.external_address_spec).address])
}

output "load_balancer_id" {
  description = "ID балансировщика"
  value       = yandex_lb_network_load_balancer.web_lb.id
}

output "target_group_id" {
  description = "ID целевой группы"
  value       = yandex_lb_target_group.web_tg.id
}