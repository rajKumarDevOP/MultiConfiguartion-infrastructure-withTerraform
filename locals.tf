locals {
  servers = {
    frontend = {
      ami           = "ami-01xxxxxxxxx"
      instance_type = "t3.medium"
      root_volume   = 15
    #   eip           = "eipalloc-..."
      name          = "Frontend-server"
    }

     backend = {
      ami           = "ami-02xxxxxxxxx"
       instance_type = "t3a.medium"
       root_volume   = 75
     #   eip           = "eipalloc-..."
       name          = "backend-server"
     }
     kafka = {
       ami           = "ami-03xxxxxxxxx"
       instance_type = "t3a.medium"
       root_volume   = 50
     #   eip           = "eipalloc-..."
       name          = "kafka-server"
     }

     auth = {
       ami           = "ami-04xxxxxxxxx"
       instance_type = "t3a.medium"
       root_volume   = 50
     #   eip           = "eipalloc-..."
       name          = "auth-server"
     }
  }
}
