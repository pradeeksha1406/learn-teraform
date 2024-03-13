data "aws_ami" "Workstation" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["168060105890"]
}