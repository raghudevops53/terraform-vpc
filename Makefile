help:           ## Show this help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

dev-init: ## Terraform init for DEV env
	@terraform init -backend-config=env-variables/dev-backend.tfvars -no-color

dev-apply: ## Terraform Apply for DEV env
	@terraform apply -var-file=env-variables/dev.tfvars -auto-approve -no-color

dev-destroy: ## Terraform Apply for DEV env
	@terraform destroy -var-file=env-variables/dev.tfvars -auto-approve -no-color