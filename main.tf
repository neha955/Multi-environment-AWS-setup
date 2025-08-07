module "web_server" {
  source            = "./modules/webserver"
  vpc_cidr          = var.vpc_cidr
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
  ami               = var.ami
  instance_type     = var.instance_type
  env               = var.env
  from_port         = var.from_port
  to_port           = var.to_port
  protocol          = var.protocol
  cidr_blocks       = var.cidr_blocks
}
