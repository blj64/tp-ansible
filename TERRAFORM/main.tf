module "app" {
    source = "./app"
    name = "cytech-8-app"
    memory = 1024
    sizeDisk = 20
    ipaddress = "192.168.100.144"
    nbr_cpu = 1
    ssh_public_key = "/home/cytech/.ssh/id_rsa.pub"
}

module "bdd" {
    source = "./bdd"
    name = "cytech-8-bdd"
    memory = 2048
    sizeDisk = 20
    ipaddress = "192.168.100.145"
    nbr_cpu = 1
    ssh_public_key = "/home/cytech/.ssh/id_rsa.pub"
}

