# resource "ibm_compute_ssh_key" "ssh_key" {
#   label      = "${var.ssh_label}"
#   notes      = "${var.ssh_notes}"
#   public_key = "${var.ssh_key}"
# }
########################################################
# Create VM configured to for SSH remote access
########################################################
resource "null_resource" "webapp1" {
  connection {
    bastion_host = "52.116.140.31"
    user         = "root"

    #host = "52.116.140.31"

    host        = "172.22.192.8"
    private_key = "${file("${path.cwd}/ansible.txt")}"
    timeout     = "30s"
  }

  provisioner "local-exec" {
    command = "ls -R"
  }

  provisioner "remote-exec" {
    script = "update.sh"
  }
}

output "key_out" {
  value = "${var.ssh_private_key}"
}

# resource "null_resource" "webapp2" {
#   connection {
#     host    = "52.116.140.31"
#     user    = "root"
#     timeout = "30s"
#     #host         = "172.22.192.8"
#     #private_key = "${file("/Users/stevestrutt/.ssh/ansible")}"
#     private_key = "${var.ssh_private_key}"
#   }
#   provisioner "remote-exec" {
#     script = "update.sh"
#   }
# }

