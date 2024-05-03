resource "aws_cloud9_environment_ec2" "cloud9_instance" {
  name                          =   var.cloud9_instance_name
  instance_type                 =   var.cloud9_instance_type
  image_id                      =   var.cloud9_instance_image_id
  automatic_stop_time_minutes   = 30

  tags = {
    Terraform = "true"
  }
}

data "aws_security_group" "cloud9_secgroup" {
    filter {
    name = "tag:aws:cloud9:environment"
        values = [
          aws_cloud9_environment_ec2.cloud9_instance.id
        ]
    }
}

resource "aws_security_group_rule" "tcp_8080" {
    type              = "ingress"
    from_port         = 8080
    to_port           = 8080
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
    ipv6_cidr_blocks  = ["::/0"]
    security_group_id = data.aws_security_group.cloud9_secgroup.id
}