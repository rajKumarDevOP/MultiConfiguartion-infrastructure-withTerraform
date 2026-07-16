locals {
  servers = {
    frontend = {
      ami           = "ami-01a00762f46d584a1"
      instance_type = "t3.medium"
      root_volume   = 15
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