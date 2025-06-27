FROM hashicorp/terraform:1.8.0
WORKDIR /workspace
COPY . .
ENTRYPOINT ["terraform"]
