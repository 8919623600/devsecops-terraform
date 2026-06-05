variable "cityname" {
    type          = string
    description   = "The name of the city"
    default       = "bangalore"
}

output cityname {
    value = var.cityname
  
}

variable "fruits" {
    default = [
        "Apple",
        "banana",
        "mango"
    ] 
}

output "fruits" {
    value = var.fruits
}