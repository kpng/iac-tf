ENV = dev

TOP_DIR:=$(shell pwd)
CURRENT_WORKSPACE:=$(shell terraform workspace show)
RSUBDIRS:=$(shell find ./modules -maxdepth 8 -mindepth 1 -type d)

check:
	@echo "Current workspace: $(CURRENT_WORKSPACE)"
ifneq ($(CURRENT_WORKSPACE), $(ENV))
	@terraform workspace select $(ENV)
else
endif

init: check
	@terraform init

plan: check pretty
	@terraform plan -out $(ENV).plan

apply: check
	@terraform apply $(ENV).plan

pretty:
	@echo "Fixing alignment in tf files ..."
	@terraform fmt

	@for dir in $(RSUBDIRS) ; do \
		cd $$dir ; \
		terraform fmt ; \
		cd $(TOP_DIR) ; \
	done
	@echo "... Done!"

destroy:
	@terraform apply -destroy
	@terraform state list

destroy-yes:
	@terraform apply -destroy -auto-approve
	@terraform state list

.PHONY: clean

clean:
