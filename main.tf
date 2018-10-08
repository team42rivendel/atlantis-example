resource "aws_security_group" "allow_all" {
  name        = "test_atlantis"
  description = "Allow all inbound traffic"
  vpc_id      = "vpc-efb36189"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    prefix_list_ids = ["pl-12c4e678"]
  }
  tags {
    Name = "allow_all"
  }
}
