module "vpc" {
    source  = "terraform-google-modules/network/google//modules/subnets"
    version = "~> 3.4.0"

    project_id   = var.project
    network_name = "dmarender-network"

    subnets = [
        {
            subnet_name           = "d-network01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = var.region
        },
        
    ]
}