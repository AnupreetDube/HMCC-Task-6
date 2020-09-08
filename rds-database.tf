resource "aws_db_instance" "rds-mysql-database" {
	allocated_storage    = 10
	identifier = "rds-mysql-database"
	max_allocated_storage = 7
	storage_type         = "gp2"
	engine               = "mysql"
	engine_version       = "5.7.30"
	instance_class       = "db.t2.micro"
	name                 = "rds-mysql-database"
	username             = "anupreet"
	password             = "anupreet-rds"
	port                 = 3306
	parameter_group_name = "default.mysql5.7"
	vpc_security_group_ids = [aws_security_group.rds-sg.id]
	iam_database_authentication_enabled = true
	publicly_accessible  = true
	apply_immediately    = true
	skip_final_snapshot  = true
  	tags = {
    	Name = "rds-mysql-database"
  	}
}
