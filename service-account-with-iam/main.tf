resource "google_service_account" "account" {
  project = var.project

  account_id = var.name

  display_name = coalesce(var.displayname, var.name)

  description = var.description

  disabled = var.disabled
}

resource "google_project_iam_member" "binding" {
  count = length(var.roles)

  member = "serviceAccount:${var.name}@${var.project}.iam.gserviceaccount.com"

  project = var.project

  role = element(var.roles, count.index)
}
