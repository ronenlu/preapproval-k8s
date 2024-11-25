variable "db_url" {
  type = string
  default = getenv("DB_URL")
}

env {
  name = atlas.env
  url = var.db_url
  schema {
    src = "file://schema.sql"
    repo {
      name = "preapproval-k8s"
    }
  }
  dev = "docker://postgres/16/dev?search_path=public"
}
