resource "null_resource" "test" {
   provisioner "local-exec" {
   command ="echo hello world"
   }

}


resource  "null_resource" "test1" {
  provisioner "local-exec" {
    command = <<EOF
pwd
ls
echo dance karna hai
EOF
  }

}