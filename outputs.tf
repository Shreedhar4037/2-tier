# --- root/outputs.tf ---

output "alb_dns" {
  value = module.loadbalancing.lb_dns
}
