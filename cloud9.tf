resource "aws_cloud9_environment_ec2" "cloud9_instance" {
  name                          =   var.cloud9_instance_name
  instance_type                 =   var.cloud9_instance_type
  image_id                      =   var.cloud9_instance_image_id
  automatic_stop_time_minutes = 30


  tags = {
    Terraform = "true"
  }
}