# Home Lab Infrastructure

This repository contains the infrastructure and configuration code for my personal home lab environment. It includes Terraform configurations for infrastructure provisioning and Docker Compose files for containerized services.

## Hardware Setup

The home lab runs on a TrueNAS Scale system, which serves as the primary storage and virtualization platform.

TrueNAS Scale provides:
- ZFS storage pool management
- Container orchestration
- Virtual machine hosting
- Network file sharing
- Automated backups

## Repository Structure

- `terraform/` - Contains Terraform configurations for infrastructure provisioning
- `compose/` - Docker Compose files for running containerized services
- `.github/` - GitHub Actions workflows and configuration
- `renovate.json` - Renovate bot configuration for automated dependency updates

## Prerequisites

- Terraform
- Docker and Docker Compose
- Git

## Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/home-lab.git
   cd home-lab
   ```

2. Initialize Terraform:
   ```bash
   cd terraform
   terraform init
   ```

3. Review and apply Terraform changes:
   ```bash
   terraform plan
   terraform apply
   ```

4. Start services using Docker Compose:
   ```bash
   cd compose
   docker-compose up -d
   ```

## Maintenance

This repository uses Renovate bot for automated dependency updates. The configuration can be found in `renovate.json`.

## Contributing

Feel free to submit issues and enhancement requests.