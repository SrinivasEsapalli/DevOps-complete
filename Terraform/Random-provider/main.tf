

resource "local_file" "pet" {
    filename = "C:/Desktop/DevOps-complete/Terraform/farming5.txt"
    content = "I love farming and nature!"
}   

resource "random_pet" "my-pet2" {
   prefix = "Mr"
   separator = ".."
   length = "1"
}   



