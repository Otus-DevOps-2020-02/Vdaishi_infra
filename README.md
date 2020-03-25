# Vdaishi_infra
Vdaishi Infra repository
# Команда автоматической развертки
gcloud compute instances create reddit-app-auto --boot-disk-size=10GB --image-family ubuntu-1604-lts --image-project=ubuntu-os-cloud --machine-type=g1-small --tags puma-server --restart-on-failure --metadata-from-file startup-script=./startup_config.sh --zone=europe-west4-a
# команда создания через gcloud правила firewall
gcloud compute firewall-rules create "default-puma-server" --allow=tcp:9292 --direction=ingress --network=default  --target-tags=puma-server --source-ranges=0.0.0.0/0
testapp_IP = 34.90.229.174
testapp_port = 9292