# Vdaishi_infra
Vdaishi Infra repository
# Команда автоматической развертки
gcloud compute instances create reddit-app-auto --boot-disk-size=10GB --image-family ubuntu-1604-lts --image-project=ubuntu-os-cloud --machine-type=g1-small --tags puma-server --restart-on-failure --metadata-from-file startup-script=./startup_config.sh --zone=europe-west4-a
# команда создания через gcloud правила firewall
gcloud compute firewall-rules create "default-puma-server" --allow=tcp:9292 --direction=ingress --network=default  --target-tags=puma-server --source-ranges=0.0.0.0/0
testapp_IP = 34.90.229.174
testapp_port = 9292

# Cоздание образа в Packer
Шаблон создания образа Packer состоит из нескольких секций. В данном задании использовались секции Variable, Builders, Provisioners
Секция Variable отвечает за поля, которые могут быть заполнены пользователем либо через использование -var либо var-file, и в дальнейшем используются при создании образа, которые используются секцией Builders, при создании шаблона.
Секция Builders отвечает за создание машины, которая будет создана в каком либо провайдере или месте. В нем описываются параметры создания инстанса.
секция Provisioners отвечает за действия, выполняемые на только что созданной машине, это может быть как копирование файла, так и выполнение заранее прописанного кода.

После выполнения всех манипуляций, Packer сохраняет автоматически образ в провайдере, который в дальнейшем можно использовать.

При использовании методики Immutable infrastructure требуется создать образ, который будет меняться меньше всего.

packer validate -var-file=variables.json.example ubuntu16.json - проверка корректности кода создания образа Packer
packer build -var-file=variables.json ubuntu16.json - создание образа Packer
packer inspect ubuntu16.json - проверка функций, переменных используемых в коде
Собранный образ появится в браузерной консоли по пути Compute Engine --> Images.
packer build --var-file=variables.json immutable.json
Выполняем команду
gcloud compute instances create reddit-full --boot-disk-size=20 --image-family reddit-full --image-project=infra --machine-type=f1-micro --tags puma-server --restart-on-failure
