# install docker-machine
# create 2 hosts "rancher", infranew"
# make host "rancher" to the current docker host 
# eval $( docker-machine env rancher)
# e.g. docker-machine ls prints out: ( here for the case of gce as provider)
# infranew   -        google   Running   tcp://-.-.-.-:2376            v1.11.0   
# rancher    *        google   Running   tcp://-.-.-.-:2376           v1.11.0   

# 1 install rancher on host "rancher" 

# 2 create rancher api key


# Set the url that Rancher is on
#export RANCHER_URL=http://192.168.0.16:8080/
# Set the access key, i.e. username
#export RANCHER_ACCESS_KEY=...
# Set the secret key, i.e. password
#export RANCHER_SECRET_KEY=...


# setup local environment variables
export DOCKERREGISTRY_PORT=5000
export DOCKER_HOST_IP_INFRA=`docker-machine ip infranew`
export DOCKER_HOST_PORT_INFRA=2376


#rancher-compose -p nexus up

# for jenkins to use docker infra
# copy docker-machine certs to host using ssh-copy
# docker-machine ssh infranew mkdir /home/docker-user/.docker
# docker-machine scp -r ~/.docker/machine/machines/infranew infranew:/home/docker-user/.docker

