variable "filename" {
    default = "C:/Desktop/DevOps-complete/Terraform/farming5.txt"
}

variable "length" {
    default = "1"
}
variable "content" {
    default = "I love farming and nature!"
}

## variable blocks
#variable "filename" {
 #   default = "C:/Desktop/DevOps-complete/Terraform/farming5.txt"
  #  type = string
   # description = "The name of the file"
#}

## using list varible here the list is given with 0 1 2 indexed and by using this index we can call them in the main file.
variable "prefix" {
    default = [ "Mr","Mrs","sir","Mam"]
    type = list 
}

## file content using map
variable "file-content" {
    type = map
    default = {
        "statement1" = "I love farming and nature!"
        "statement2" = "We love plants"
  }
}

variable "separator" {
    default = "."
   
}




