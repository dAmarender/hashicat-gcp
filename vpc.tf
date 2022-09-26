module "vpc" {
  source  = "app.terraform.io/107lt/network/google"
  version = "3.4.0"
  # insert required variables here
}

    subnets = [
        {
            subnet_name           = "subnetwork"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = var.region
        },
    ]

    secondary_ranges = {
        subnet-01 = [
            {
                range_name    = "subnet-01-secondary-01"
                ip_cidr_range = "192.168.64.0/24"
            },
        ]

        subnet-02 = []
    }
}
