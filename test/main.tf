
module "test" {
  source = "../"

  cloudflare_account_id = "01234567890abcdef0123456789abcde"
  project_name          = "test-project"
  repo_name             = "test-repo"
  repo_owner            = "anonymous"
  domain                = "example.com"
  subdomain             = "test-app"
  preview_env_vars = {
    TEST = "dev"
  }

  production_env_vars = {
    ENV = "production"
  }

}

terraform {
  required_version = "~> 1.8"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.0"
    }
  }
}
