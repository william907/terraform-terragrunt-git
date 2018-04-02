FROM alpine:latest
RUN apk add --no-cache wget
RUN apk add --no-cache git
RUN apk add --no-cache unzip
RUN wget https://releases.hashicorp.com/terraform/0.11.5/terraform_0.11.5_linux_amd64.zip
RUN unzip terraform_0.11.5_linux_amd64.zip -d /bin
RUN rm terraform_0.11.5_linux_amd64.zip
RUN wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.14.6/terragrunt_linux_amd64
RUN mv terragrunt_linux_amd64 /bin/terragrunt
RUN chmod 777 /bin/terragrunt /bin/terraform
