#Making group
resource "google_compute_instance_group" "reddit-app-group" {
  name 	= "reddit-app-group"
  zone = var.zone
  instances = google_compute_instance.app.*.self_link
  named_port {
    name = "puma"
    port = "9292"
  }
}
resource "google_compute_health_check" "reddit-app-health-check" {
   name = "reddit-app-health-check"
   http_health_check{
     port = "9292"
 }
}
#
resource "google_compute_backend_service" "reddit-app-backend-service" {
  name   = "reddit-app-backend-service"
  port_name = "puma"
  protocol = "HTTP"
  health_checks = [google_compute_health_check.reddit-app-health-check.self_link]
  backend {
   group = google_compute_instance_group.reddit-app-group.self_link
 }
}
# Proxy
resource "google_compute_target_http_proxy" "reddit-app-target-proxy" {
name = "reddit-app-target-proxy"
url_map = google_compute_url_map.reddit-app-url-map.self_link
}
# URL map
resource "google_compute_url_map" "reddit-app-url-map" {
   name= "reddit-app-url-map"

   default_service = google_compute_backend_service.reddit-app-backend-service.self_link
}
# Forward fule
resource "google_compute_forwarding_rule" "reddit-app-forwarding-rule" {
name = "reddit-app-forwarding-rule"
target = google_compute_target_http_proxy.reddit-app-target-proxy.self_link
port_range = "80-80"
ip_protocol = "TCP"
load_balancing_scheme = "EXTERNAL"
}
