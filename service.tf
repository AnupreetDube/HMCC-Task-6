resource "kubernetes_service" "wordpress-service" {
  metadata {
    name = "wordpress-service"
  }
  spec {
    selector = {
      name = "${kubernetes_deployment.wordpress.metadata.0.labels.test}"
    }
    port {
      node_port   = 31009
      port        = 80
      target_port = 80
    }
    type = "NodePort"
  }
}

