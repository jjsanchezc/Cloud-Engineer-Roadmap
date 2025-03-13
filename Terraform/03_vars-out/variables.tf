variable "filename_1"{
       description = "this is the name of file "
       default= "example_1"
       type= string
}

variable "count_num"{
       type = number
       default = 1
}

variable "docker_ports" {
       type = list (object({
              internal = number
              external = number
              protocol = string
       }))
       default = [
              {
                     internal = 80
                     external = 8080
                     protocol = "tcp"
              },
              {
                     internal = 443
                     external = 8443
                     protocol = "tcp"
              }
       ]
}