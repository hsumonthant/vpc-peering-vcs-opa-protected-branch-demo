# Frontend Network
data "terraform_remote_state" "fe_network" {
  backend = "remote"

  config = {
    organization = "cie-hellocloud-org"

    workspaces = {
      name = "vcs-fe-network-ws-opa"
    }
  }
}

# backend Network
data "terraform_remote_state" "be_network" {
  backend = "remote"

  config = {
    organization = "cie-hellocloud-org"

    workspaces = {
      name = "vcs-fe-network-ws-opa"
    }
  }
}