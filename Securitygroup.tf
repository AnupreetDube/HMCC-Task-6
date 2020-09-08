# Security Group for MYSQL Database Launched Via RDS Service of AWS
resource "aws_security_group" "rds-sg" {
  name        = "rds-sg"
  description = "Security Group for MYSQL using RDS"
  tags = {
    name = "rds-sg"
  }
  vpc_id      = data.aws_vpc.def_vpc.id
  ingress {
    description = "MySQL"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
