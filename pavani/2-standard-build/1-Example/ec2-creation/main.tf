resource "aws_instance" "ec2_instance" {
    ami = "ami-0aa2b7722dc1b5612"
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.SG]
    tags = {Name = "HTTP_SERVER"}
    key_name = "key.pem"
    count = 1
}
