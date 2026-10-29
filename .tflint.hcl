plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

# Require explicit descriptions (documentation comments) on all variables and outputs
rule "terraform_documented_variables" {
  enabled = true
}

rule "terraform_documented_outputs" {
  enabled = true
}

# Enforce standard "#" comments over "//"
rule "terraform_comment_syntax" {
  enabled = true
}

# Enforce snake_case naming conventions
rule "terraform_naming_convention" {
  enabled = true
  format  = "snake_case"
}
