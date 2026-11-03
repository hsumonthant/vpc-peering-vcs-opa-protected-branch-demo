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

# Frontend Security Groups
data "terraform_remote_state" "fe_security" {
  backend = "remote"

  config = {
    organization = "cie-hellocloud-org"

    workspaces = {
      name = "vcs-fe-security-ws-opa"
    }
  }
}