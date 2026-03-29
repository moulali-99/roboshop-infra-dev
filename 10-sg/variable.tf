variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "sg_names" {

    type=list
    default = [

        # Database
        "mongodb", "redis", "mysql", "rabbitmq",

        #Backend
        "catalouge", "user", "cart", "shipping", "payment",

        #Backend
        "backend_alb",

        #Frontend
        "frontend",

        #frontend
        "frontend_alb",

        #Bastion
        "bastion"

    ]  
}