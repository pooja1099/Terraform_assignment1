#string variable
variable "var_filename1"{
  type = string
  //description = "enter filename "
  default= "myfile.txt"
}

variable "var_content1"{
  type = string
 // description = "enter filename "
  default= "this is for second var"
}
variable "var_filename2"{
type = string
default= "myfile.txt"
}
#number variable
variable "var_content2"{
  type = number
 default= 638747857457792
}

#map variable
variable "practice_map"{
  type=map(string)
}
variable "var_filename5"{
type = string
default= "myfile5.txt"
}

#boolean variable
variable "set_password" {
type = bool
default = false
  
}
variable "var_filename6"{
type = string
default= "myfile6.txt"
}

#list variable
variable "var_users" {
    type=list
    default=["pooja","nidhi","harpreet","aman"]
}

#object variable
variable "triangle" {
   type = object({
    s_one =number,
    s_two = number,
    s_three = number,
    description = string
   })
}
