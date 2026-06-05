variable "cityname" {
    type          = string
    description   = "The name of the city"
    default       = "bangalore"
}

output cityname {
    value = var.cityname
  
}

variables "fruits" {
    default = [
        "Apple"
        "banana"
        "mango"
    ]
}

output "fruits" {
    value = var.fruits
}