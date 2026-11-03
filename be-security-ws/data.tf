# Backend Network
data "terraform_remote_state" "be_network" {
  backend = "remote"

  config = {
    organization = "cie-hellocloud-org"

    workspaces = {
      name = "vcs-be-network-ws-opa"
    }
  }
}