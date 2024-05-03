# Overview
This is a small module to create a AWS Cloud9 instance for personal use. 

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.47.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.47.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloud9_environment_ec2.cloud9_instance](https://registry.terraform.io/providers/hashicorp/aws/5.47.0/docs/resources/cloud9_environment_ec2) | resource |
| [aws_security_group_rule.tcp_8080](https://registry.terraform.io/providers/hashicorp/aws/5.47.0/docs/resources/security_group_rule) | resource |
| [aws_security_group.cloud9_secgroup](https://registry.terraform.io/providers/hashicorp/aws/5.47.0/docs/data-sources/security_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud9_instance_image_id"></a> [cloud9\_instance\_image\_id](#input\_cloud9\_instance\_image\_id) | Image-ID of the EC2 cloud9 instance | `string` | `"amazonlinux-2023-x86_64"` | no |
| <a name="input_cloud9_instance_name"></a> [cloud9\_instance\_name](#input\_cloud9\_instance\_name) | Name of the EC2 cloud9 instance | `string` | `"cloud9_instance"` | no |
| <a name="input_cloud9_instance_type"></a> [cloud9\_instance\_type](#input\_cloud9\_instance\_type) | Type of the EC2 cloud9 instance | `string` | `"t2.micro"` | no |
| <a name="input_cloud9_owner_arn"></a> [cloud9\_owner\_arn](#input\_cloud9\_owner\_arn) | Owner ARN of the cloud9 instance owner | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region of the resources | `string` | `"us-east-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloud9_url"></a> [cloud9\_url](#output\_cloud9\_url) | n/a |
<!-- END_TF_DOCS -->