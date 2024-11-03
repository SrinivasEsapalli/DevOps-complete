resource "local_sensitive_file" "Rain" {
    filename = "C:/Desktop/DevOps-complete/Terraform/Raining.txt"
    content = "Today it's raining like cats and dogs"
    file_permission = "0700"
}   

