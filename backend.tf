terraform {
  cloud {
    organization = "EQIX_projectX"

    workspaces {
      name = "metal-amer"
    }
  }
}
