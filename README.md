# Kitura Helm Chart Sample App

## Introduction
This sample application is intended to guide you through the process of deploying your own Swift applications using [Kubernetes](https://kubernetes.io/).

The sample includes a [health](https://github.com/IBM-Swift/Health) check endpoint accessible on `/health` and the ability to monitor the application's [metrics](https://github.com/RuntimeTools/SwiftMetrics) on the `/metrics` endpoint.

## Quick start
The sample is installable in a number of ways:

- If you don't have the `ibm-charts` repository already available in your install of IBM Cloud Private, or you want to install the sample without using IBM Cloud Private, you can do the following:
```bash
helm repo add ibm-charts https://raw.githubusercontent.com/IBM/charts/master/repo/stable/
helm install --name sample ibm-charts/ibm-swift-sample
```

- The Helm chart can also be installed by running:
```bash
helm install --name "name" .
```
from the directory containing `Chart.yaml`, where "name" is whatever you wish to name your deployment.

- The Helm Chart is also available in the [IBM Cloud Private](https://www.ibm.com/cloud-computing/products/ibm-cloud-private/) catalog and can be deployed by clicking on the `ibm-swift-sample` tile and following the installation steps.


## Running the sample
You can view the deployed Swift sample in your web browser. To retrieve the IP and port, paste the following into a terminal window:

```bash
export SAMPLE_SWIFT_IP=$(kubectl get nodes --namespace {{ .Release.Namespace }} -o jsonpath="{.items[0].status.addresses[0].address}")
```

```bash
export SAMPLE_SWIFT_PORT=$(kubectl get --namespace {{ .Release.Namespace }} -o jsonpath="{.spec.ports[0].nodePort}" services {{ template "fullname" . }})
```

```bash
 echo "Open your web browser at http://${SAMPLE_SWIFT_IP}:${SAMPLE_SWIFT_PORT} to view the sample."
 ```

## Uninstalling the Chart

If you installed using `helm install --name "name" .`, you can remove the sample with `helm delete --purge "name"`. You can find the deployment with `helm list --all` and searching for an entry with the chart name "ibm-swift-sample".

## Testing the Chart with Helm

You can programatically run the test in the following ways.
- `cd chart/ibm-swift-sample` then do `./test-chart.sh` OR
- `helm test sample`: assuming you've deployed it with the release name `sample`.
