provider "aws" {
  region = "ap-northeast-2"  # 서울 리전
}

provider "aws" {
  alias  = "us_east_1"       # 보조 Provider (CloudFront WAF 용)
  region = "us-east-1"       # CloudFront WAF는 반드시 us-east-1 리전에서 생성
}

resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "main_vpc"
  }
}

