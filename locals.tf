locals {
  servers = {
    frontend = {
      ami           = "ami-07b1e00e78f2c53f6"
      instance_type = "t3.medium"
      root_volume   = 50
    #   eip           = "eipalloc-..."
      name          = "Frontend-server"
    }

    # backend = {
    #   ami           = "ami-..."
    #   instance_type = "t3a.medium"
    #   root_volume   = 75
    # #   eip           = "eipalloc-..."
    #   name          = "backend-server"
    # }
    # kafka = {
    #   ami           = "ami-..."
    #   instance_type = "t3a.medium"
    #   root_volume   = 50
    # #   eip           = "eipalloc-..."
    #   name          = "kafka-server"
    # }

    # auth = {
    #   ami           = "ami-..."
    #   instance_type = "t3a.medium"
    #   root_volume   = 50
    # #   eip           = "eipalloc-..."
    #   name          = "auth-server"
    # }
  }
}