# devsecops-infra-demo
[![tfsec scan](https://github.com/dburns2236/devsecops-infra-demo/actions/workflows/tfsec.yml/badge.svg)](https://github.com/dburns2236/devsecops-infra-demo/actions/workflows/tfsec.yml)
[![checkov scan](https://github.com/dburns2236/devsecops-infra-demo/actions/workflows/checkov.yml/badge.svg)](https://github.com/dburns2236/devsecops-infra-demo/actions/workflows/checkov.yml)

## :lock: Security Tooling
- **tfsec**: Scans Terraform for security misconfigurations
&#128279; Results: [scan-results/tfsec.txt](scan-results/tfsec.txt)
- **checkov**: Performs policy-based scanning on IaC
&#128279; Results: [scan-results/checkov.txt](scan-results/checkov.txt)

## Terraform with Docker
### :rocket: Getting Started
1.  Build the Docker Image
`docker build -t terraform local .`
2. Run Terraform Commands
- Mount your AWS credentials for provider authentication:
`docker run --rm -v ~/.aws:/root/.aws terraform-local init`
`docker run --rm -v ~/.aws:/root/.aws terraform-local plan`
- Make sure you've configured AWS CLI locally using:
    `aws configure`

### Notes
- The Docker image is based on hasicorp/terraform:1.8.0
- It mounts the host's .aws directory to provide authentication
- ENTRYPOINT is set to terraform, so you can run any command like:
`docker run --rm -v ~/.aws:/root/.aws terraform-local validate`
`docker run --rm -v ~/.aws:/root/.aws terraform-local destroy`