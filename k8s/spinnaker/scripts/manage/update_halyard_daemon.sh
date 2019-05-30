#!/usr/bin/env bash

bold() {
  echo ". $(tput bold)" "$*" "$(tput sgr0)";
}

source ~/click-to-deploy/k8s/spinnaker/scripts/install/properties

bold "Updating halyard daemon..."

if [ -z "$HALYARD_VERSION"];
	HALYARD_VERSION="stable"

kubectl set image statefulset spin-halyard -n halyard halyard-daemon=gcr.io/spinnaker-marketplace/halyard:$HALYARD_VERSION