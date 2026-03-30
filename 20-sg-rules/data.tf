data "http" "my_public_ipv4" {
  url = "https://ipv4.icanhazip.com"
}

output "my_ip_address" {
  # The chomp() function removes any trailing newlines or spaces from the response body.
  value = chomp(data.http.my_public_ipv4.response_body)
}

data "aws_ssm_parameter" "bastion_sg_id" {
    name="/${var.project}/${var.environment}/bastion_sg_id"
}

data "aws_ssm_parameter" "mongodb_sg_id" {
    name="/${var.project}/${var.environment}/mongodb_sg_id"
}

data "aws_ssm_parameter" "redis_sg_id" {
    name="/${var.project}/${var.environment}/redis_sg_id"
}

data "aws_ssm_parameter" "mysql_sg_id" {
    name="/${var.project}/${var.environment}/mysql_sg_id"
}

data "aws_ssm_parameter" "catalouge_sg_id" {
    name="/${var.project}/${var.environment}/catalouge_sg_id"
}

data "aws_ssm_parameter" "user_sg_id" {
    name="/${var.project}/${var.environment}/user_sg_id"
}