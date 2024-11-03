
resource "local_file" "pet" {
    filename = var.filename
    #Below is general way for using content with variables
    #content = var.content

    ### With map
    content = var.file-content["statement2"]

}   

#resource "random_string" "text" {
 #  length = var.length
#}   

resource "random_pet" "my-pet3" {
   prefix = var.prefix[0]
   separator = var.separator
   length = var.length
}   


