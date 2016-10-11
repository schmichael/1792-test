region     = "regionXYZ"
datacenter = "dc1"
name       = "rusty1"

log_level = "DEBUG"

data_dir = "/tmp/nomad1792-server1"

server {
    enabled = true
    bootstrap_expect = 3
    rejoin_after_leave = true
}

consul {
    address = "127.0.0.1:8500"
}

bind_addr = "127.0.0.1"
