##defining ec2 instances and their network

##define network interface and ec2 of 'APP'

resource "aws_network_interface" "app_network" {
  subnet_id   = aws_subnet.public_subnet.id
  private_ips = ["192.168.1.10"]

}

resource "aws_instance" "app_instance" {
  ami           = var.ami 
  instance_type = var.instance_type

  network_interface {
    network_interface_id = aws_network_interface.app_network.id
	device_index         = 0
  }
}


##define network interface and ec2 of 'DB'

resource "aws_network_interface" "db_network" {
  subnet_id   = aws_subnet.private_subnet.id
  private_ips = ["192.168.2.10"]

}

resource "aws_instance" "db_instance" {
  ami           = var.ami 
  instance_type = var.instance_type

  network_interface {
    network_interface_id = aws_network_interface.db_network.id
	device_index         = 0
  }
}