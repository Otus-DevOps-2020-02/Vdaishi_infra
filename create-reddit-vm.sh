gcloud compute instances create reddit-app-auto --boot-disk-size=20GB --image-family reddit-full  --machine-type=g1-small --tags puma-server  --restart-on-failure --zone=europe-west4-a
