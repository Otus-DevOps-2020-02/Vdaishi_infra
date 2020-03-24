# Vdaishi_infra
Vdaishi Infra repository
gcloud compute instances create reddit-app-auto --boot-disk-size=10GB --image-family ubuntu-1604-lts --image-project=ubuntu-os-cloud --machine-type=g1-small --tags puma-server --restart-on-failure --metadata-from-file startup-script=./startup_config.sh --zone=europe-west4-a
testapp_IP = 34.90.229.174
testapp_port = 9292