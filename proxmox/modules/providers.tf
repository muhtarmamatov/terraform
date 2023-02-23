terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.9.10"
    }
  }
}

provider "proxmox" {
    pm_api_url      = var.pm_api_url
    # If user authetication used uncomment 
    # pm_user         = var.pm_user
    pm_api_token_id = var.token_id
    pm_api_token_secret = var.token_secret
    pm_tls_insecure = var.pm_tls_insecure

    pm_log_enable = true
    pm_log_file = "terraform-plugin-proxmox.log"
    pm_log_levels = {
      _default = "debug"
      _capturelog = ""
    }
}