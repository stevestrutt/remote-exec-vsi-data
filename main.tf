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
    user = "root"
    host = "158.176.131.42"
    private_key = "${file("~/.ssh/id_rsa")}"
  }
  provisioner "remote-exec" {
    script = "update.sh"
  }

}


