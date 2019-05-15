# Manage Spinnaker

## GCP Project Selection

<walkthrough-project-billing-setup>
</walkthrough-project-billing-setup>

## Manage Spinnaker via Halyard from Cloud Shell

### Ensure command-line tools are installed

You can skip this step if you are the original installer/operator, as they will have already been installed.

```bash
~/click-to-deploy/k8s/spinnaker/scripts/cli/install_hal.sh && ~/click-to-deploy/k8s/spinnaker/scripts/cli/install_spin.sh && source ~/.bashrc
```

### Ensure you are connected to the correct Kubernetes context

```bash
PROJECT_ID={{project-id}} ~/click-to-deploy/k8s/spinnaker/scripts/manage/check_cluster_config.sh
```

### Pull all config from Spinnaker deployment into cloud shell

```bash
~/click-to-deploy/k8s/spinnaker/scripts/manage/pull_config.sh
```

### Update the console

#### (This is a required step if you've just pulled config from a different Spinnaker deployment.)

This will include details on connecting to Spinnaker.

```bash
~/click-to-deploy/k8s/spinnaker/scripts/manage/update_console.sh
```