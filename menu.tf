resource "local_file" "bar" {
  filename = "file1.txt"
  content  = "hello this is first file"
}
#use of locals and random_id
resource "local_file" "foo" {
  filename = "${random_id.random-file-name.hex}"
  content  = local.content_fr_files
}

locals{
  content_fr_files="hello this is the replacement doucument."
}
resource "random_id" "random-file-name"{
  byte_length = 8
}
resource "local_file" "fileNew2" {
  filename = var.var_filename1
  content  = var.var_content1    #for string var
}
resource "local_file" "zoo" {
  filename = var.practice_map["filename3"]
  content = var.practice_map["content3"]   # for map var

}
resource "local_file" "zap" {
  filename = var.var_filename2
  content  = var.var_content2  #for number var
}
resource "local_file" "zack" {
  filename = var.var_filename5
  content  = var.set_password  #for boolean
}
resource "local_file" "zic" {
  filename = var.var_filename6
  content  = var.var_users[3] #for list
}