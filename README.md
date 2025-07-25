# pact-broker-openshift-local


# Example of Pact Broker configuration on OpenShift Local

Pre Requisities

- RedHat Account https://redhat.com/

## Setup with OpenShift Local

Setup OpenShift Local

Visit https://console.redhat.com/openshift/create/local and copy pull secret

```sh
crc setup
crc start
# paste pull secret when prompted
oc login -u kubeadmin -p <secret>
```

Run the app

```sh
oc new-app https://github.com/YOU54F/pact-broker-openshift
oc expose service/pact-broker-openshift
oc status
```

Visit http://pact-broker-openshift-default.apps-crc.testing to view your newly created Pact Broker pod.