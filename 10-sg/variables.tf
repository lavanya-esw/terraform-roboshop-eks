variable "project"{
    default = "roboshop"
}

variable "environment" {
    default = "dev" 
}

variable "sg_names" {
    default = [
        "mongodb","bastion","redis","rabbitmq",
        "mysql",
        "ingress_alb","openvpn",
        "eks_control_plane",
        "eks_node"
    ] 
}

