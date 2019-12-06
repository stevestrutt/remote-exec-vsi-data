# Variables



variable ssh_label {
  description = "ssh label"
  default     = "wcpclouduk1"
}

variable ssh_public_key {
  description = "ssh public key"
}

variable ssh_private_key {
  description = "SSH Private key to allow automation to access to VSI to install AWX"
}



variable ssh_notes {
  description = "ssh public key notes"
  default     = "SSH key for remote access to web site"
}


variable osrefcode {
  default = "CENTOS_7_64"
}


variable datacenter1 {
  default = "lon02"
}

variable ssl_cert {
  default = ""

  # <<EOF
  # -----BEGIN CERTIFICATE-----
  # MIIEujCCA6KgAwIBAgIJAKMRot3rBodEMA0GCSqGSIb3DQEBBQUAMIGZMQswCQYD
  #
  # DDtf0yuw5VRx2wnTWhv+ezUkhRGCL80fnqkWB94IS66UHlO5WyHw1cgQEVW1ie2y
  # baU37Sk90FDVrroBgNY=
  # -----END CERTIFICATE-----
  #     EOF
}

variable ssl_private_key {
  default = ""

  # <<EOF
  # -----BEGIN RSA PRIVATE KEY-----
  # MIIEowIBAAKCAQEA4FVtSfL4azhQQgce0as+SP91igoY8WHvDCv05H1XwshwXu3Q
  #
  # ykXbeuyhK6AL6V3NsJyP454bM8dmZnxBrZvRo5FnqQInGgwGSjgc
  # -----END RSA PRIVATE KEY-----
  #     EOF
}
