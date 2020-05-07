# Container native virtualization disk build example

Run build on OpenShift

```bash
oc new-build --name build-vm-image-container \
    --build-arg image_url=http://download.cirros-cloud.net/0.5.1/cirros-0.5.1-x86_64-disk.img \
    https://github.com/openshift-examples/cnv-container-disk-build.git

```





