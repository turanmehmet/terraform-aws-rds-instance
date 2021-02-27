module "db" {
    source = "../"
    region = "us-east-2"
  subnet_ids = [
  "subnet-01d5a5d176481c00e",
  "subnet-0748910e6c7386cd2",
  "subnet-09061d585663a04ef"
]
    identifier          = "dbname"
    allocated_storage   = 20
    storage_type        = "gp2"
    engine              = "mysql"
    engine_version      = "5.7"
    instance_class      = "db.t2.micro"
    username            = "foo"
    publicly_accessible = true
 db_access = [
  "1.2.3.4/32",
  "0.0.0.0/0"
]
}
output region {
	value = module.db.region
}
output subnet_list {
	value = module.db.subnet_list
}
output db_access {
	value = module.db.db_access
}
output DB_NAME {
	value = module.db.DB_NAME
}
output endpoint {
	value = module.db.endpoint
}

