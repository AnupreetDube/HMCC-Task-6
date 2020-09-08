resource "kubernetes_deployment" "wordpress" {
	metadata {
	    name = "wordpress"
	    labels = {
	      	name = "wordpress"
	    }
	}
	spec {
	    replicas = 3
	    selector {
	      	match_labels = {
	        	name = "wordpress"
	      	}
	    }
	    template {
	      	metadata {
	        	labels = {
	          		name = "wordpress"
	        	}
	      	}
	      	spec {
	        	container {
	          		image = "wordpress:4.8-apache"
	          		name  = "wordpress"
					port {
	            		container_port = 80
	          		}
	            }
	        }
	    }
	}
}

	  
