env {
  name = atlas.env
  dev = "docker://postgres/16/dev?search_path=public"
  schema {
    src = "file://schema.sql"
  }
  migration {
    dir = "file://migrations"
    repo {
      name = "atlas-argo-demo"
    }
  }
}