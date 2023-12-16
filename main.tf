resource "vault_policy" "this" {
  count = var.policy_definitions == null ? 0 : 1
  name   = "github-team-${var.name}"
  policy = join("\n\n", var.policy_definitions)
}


resource "vault_github_team" "this" {
  team     = var.name
  backend  = var.backend.id
  policies = concat(vault_policy.this[*].name, var.policies)
}

