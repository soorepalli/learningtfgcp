resource "google_sql_database_instance" "default" {
  name             = var.instance_name
  database_version = var.database_version
  region           = var.region
  deletion_protection = false

  settings {
    tier = var.tier

    backup_configuration {
      enabled    = var.backup_enabled
      start_time = var.backup_start_time
    }

    ip_configuration {
      ipv4_enabled = var.ipv4_enabled
      require_ssl  = var.require_ssl

      dynamic "authorized_networks" {
        for_each = var.authorized_networks
        content {
          name  = authorized_networks.value.name
          value = authorized_networks.value.value
      }

      }
    }
  }

}

resource "google_sql_database" "default" {
  name     = var.database_name
  instance = google_sql_database_instance.default.name
}

resource "google_sql_user" "default" {
  name     = var.user_name
  instance = google_sql_database_instance.default.name
  password = var.user_password

}