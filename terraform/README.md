# Infrastructure as Code (IaC)

This repository contains Terraform configurations for managing Google Cloud Platform (GCP) infrastructure.

## Overview

The infrastructure code manages a Google Cloud Storage bucket for backup purposes. The bucket is configured with:
- Location: NORTHAMERICA-NORTHEAST2
- Public access prevention: Enabled
- Force destroy: Enabled (allows bucket deletion even if not empty)

## Prerequisites

- Terraform >= 1.0.0
- Google Cloud Platform account
- Service account with appropriate permissions
- Terraform Cloud account (organization: npcr-home)

## Configuration

### Required Variables

- `tf_sa_key`: Service account key for GCP authentication

### Provider Configuration

The code uses the Google Cloud provider (version ~> 4.0) and requires:
- Project: home-server
- Service account credentials

## Usage

1. Clone the repository
2. Set up your Terraform Cloud workspace
3. Configure the required variables
4. Initialize Terraform:
   ```bash
   terraform init
   ```
5. Apply the configuration:
   ```bash
   terraform apply
   ```

## Repository Structure

- `buckets.tf`: Defines the Google Cloud Storage bucket
- `providers.tf`: Configures the Google Cloud provider
- `variables.tf`: Defines input variables
- `versions.tf`: Specifies Terraform and provider version requirements

## Security Notes

- The bucket is configured with public access prevention enabled
- Service account credentials should be managed securely
- Never commit sensitive values to version control

## Contributing

1. Create a new branch for your changes
2. Make your modifications
3. Submit a pull request

## License

[Add your license information here]