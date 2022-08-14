#local value is expression, you can use the name multiple times within a module instead of repeating the expression 
#Local values can be helpful to avoid repeating the same values or expressions multiple times in a configuration
#A local value can only be accessed in expressions within the module where it was declared.
locals {
  owner       = var.division
  environment = var.environment
  name        = "${var.division}-${var.environment}" # or like this -> name = "${locals.owner}-${locals.environment}"
  common_tags = {
    #you can references to variables, resource attributes, or other local values
    owner       = local.owner #use local without s if you wanna ref to local
    environment = local.environment
  }
}