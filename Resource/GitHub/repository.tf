resource "github_repository" "Terraform-first-repo" {
  name        = "First-repo-from-terraform"
  description = "My first resouce made"
  visibility  = "public"
  auto_init   = true

}

output "github-html-url" {
  value = github_repository.Terraform-first-repo.html_url
}