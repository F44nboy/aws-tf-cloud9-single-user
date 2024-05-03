variable "cloud9_instance_name" {
    default = "cloud9_instance"
    description = "Name of the EC2 cloud9 instance"
}

variable "cloud9_instance_type" {
    default = "t2.micro"
    description = "Type of the EC2 cloud9 instance"
}

variable "cloud9_instance_image_id" {
    default = "amazonlinux-2023-x86_64"
    description = "Image-ID of the EC2 cloud9 instance"
}