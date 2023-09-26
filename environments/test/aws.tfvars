# aws.tfvars

# AWS region where resources will be created
aws_region = "us-west-2"

# AWS availability zones (e.g., for subnet placement)
aws_availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]

# AWS VPC configuration
vpc_cidr_block = "10.0.0.0/16"

# Subnet configurations
subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

# AWS EC2 instance configuration
instance_type = "t2.micro"
ami_id = "ami-12345678"  # Replace with your desired AMI ID

# AWS RDS (Relational Database Service) configuration
rds_instance_class = "db.t2.micro"
rds_engine = "mysql"
rds_engine_version = "5.7"
rds_allocated_storage = 20
rds_username = "db_user"
rds_password = "db_password"

# AWS Security Group settings
security_group_name = "my-security-group"
ingress_rules = [
  {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from anywhere (for demo purposes)
  },
  {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow HTTP from anywhere (for demo purposes)
  },
]

# Other AWS-specific variables as needed
