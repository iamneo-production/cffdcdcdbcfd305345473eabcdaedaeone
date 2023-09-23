terraform {
  required_providers{
      aws={
          source ="hashicorp/aws"
      }
  }
}

provider "aws"{
    region="ap-south-1"
    access_key="AKIAURI7ZXKCD2Z734FI"
    secret_key="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"
}

resource "aws_instance" "ec2_instance"{
    ami=""
    instance_type="t2.micro"
}
output name {
  value       = aws_instance.ec2_instance.public_ip
}

