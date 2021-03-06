# https://www.nomadproject.io/docs/agent/config.html

datacenter = "InInDer"
data_dir = "/var/lib/nomad"

bind_addr = "127.0.0.1"
advertise {
  http = "127.0.0.1"
  rpc = "127.0.0.1"
  serf = "127.0.0.1"
}

server {
  enabled = true
  bootstrap_expect = 1
}

client {
  enabled = true
  servers = []

  host_network "localhost" {
    cidr = "127.0.0.1/32"
  }

  options = {
    "docker.volumes.enabled" = true
  }
}

consul {
}
