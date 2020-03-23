# Vdaishi_infra
Vdaishi Infra repository
bastion_IP = 35.214.140.200
someinternalhost_IP = 10.164.0.3
Для подключения в одну команду, требуется ввести :
ssh -i ~/.ssh/appuser -A appuser@35.214.140.200 'ssh -tt 10.164.0.3'
Для подключения к someinternalhost через команду ssh someinternalhost, требуется создать файл config в ~/.ssh/ со следующими данными
Host someinternalhost
HostName 10.164.0.3
User appuser
ProxyJump bastion

Host bastion
Hostname 35.214.140.200
User appuser

