docker search registry.access.redhat.com/rhel7/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull -a
docker search registry.access.redhat.com/rhscl/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull -a
docker search registry.access.redhat.com/openshift3/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull -a 
docker search registry.access.redhat.com/rhgs3/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull -a 
docker search registry.access.redhat.com/redhat-sso-7/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull -a 
docker search registry.access.redhat.com/jboss-eap-6/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull -a 
docker search registry.access.redhat.com/jboss-eap-7/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull -a 
docker search registry.access.redhat.com/jboss-webserver-3/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull -a 
docker search registry.access.redhat.com/jboss-datagrid-6/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull -a

# base images
docker pull registry.access.redhat.com/rhel7-atomic -a
docker pull registry.access.redhat.com/rhel7/rhel -a
docker pull registry.access.redhat.com/rhel6/rhel -a
docker pull registry.access.redhat.com/rhel7 -a
docker pull registry.access.redhat.com/rhel6 -a
docker pull registry.access.redhat.com/rhel -a
docker pull registry.access.redhat.com/rhel7.4 -a
docker pull registry.access.redhat.com/rhel7/rhel-atomic -a
docker pull registry.access.redhat.com/rhel-atomic -a
docker pull registry.access.redhat.com/rhel6.9 -a

docker pull registry.connect.redhat.com/crunchydata/crunchy-pgadmin4
docker pull registry.connect.redhat.com/crunchydata/crunchy-backup
docker pull registry.connect.redhat.com/crunchydata/crunchy-postgres-gis
docker pull registry.connect.redhat.com/crunchydata/crunchy-postgres
docker pull registry.connect.redhat.com/rocketchat/rocketchat
docker pull registry.connect.redhat.com/sonatype/nexus-repository-manager
docker pull registry.connect.redhat.com/influxdata/telegraf-1x

# fission images
docker search docker.io/fission --limit 100 | cut -d" " -f 4 | grep "docker.io/fission//*" | xargs -L 1 docker pull

# manageiq images
docker pull docker.io/manageiq/manageiq
docker pull docker.io/manageiq/httpd
docker pull docker.io/manageiq/manageiq-pods
docker pull docker.io/manageiq/manageiq-pods:backend-latest
docker pull docker.io/manageiq/manageiq-pods:frontend-latest
docker pull docker.io/manageiq/postgresql
docker pull docker.io/manageiq/embedded-ansible
docker pull docker.io/manageiq/memcached
docker pull docker.io/manageiq/ruby
docker pull docker.io/manageiq/manageiq_org
docker pull docker.io/manageiq/ansible-tower
docker pull manageiq/httpd_configmap_generator

# eclipse che
docker pull eclipse/che

# fabric8 images
docker pull fabric8/fabric8-console
docker pull fabric8/prometheus-kubernetes
docker pull fabric8/s2i-java
docker pull fabric8/jenkins-docker
docker pull fabric8/gogs
docker pull fabric8/exposecontroller
docker pull fabric8/eclipse-orion
docker pull fabric8/fabric8-forge
docker pull fabric8/elasticsearch-logstash-template
docker pull fabric8/hubot-notifier
docker pull fabric8/zookeeper
docker pull fabric8/fluentd-kubernetes
docker pull fabric8/hubot-letschat
docker pull fabric8/java-jboss-openjdk8-jdk
docker pull fabric8/kibana-config
docker pull fabric8/amqbroker
docker pull fabric8/chaos-monkey
docker pull fabric8/maven-builder
docker pull fabric8/elasticsearch-k8s
docker pull fabric8/nexus
docker pull fabric8/grafana
docker pull fabric8/templates
docker pull fabric8/jenkins-slave-base-centos7
docker pull fabric8/turbine-server
docker pull fabric8/jenkins-jnlp-client
docker pull fabric8/jenkins-openshift
docker pull fabric8/jenkinshift
docker pull fabric8/fabric8-ui
docker pull fabric8/quickstart-war-camel-servlet
docker pull fabric8/api-registry
docker pull fabric8/tomcat-8
docker pull fabric8/hubot-irc
docker pull fabric8/lets-chat
docker pull fabric8/taiga-front
docker pull fabric8/hystrix-dashboard
docker pull fabric8/kibana4
docker pull fabric8/configmapcontroller
docker pull fabric8/jenkins-swarm-client
docker pull fabric8/fabric8
docker pull fabric8/app-library
docker pull fabric8/apiman
docker pull fabric8/fabric8mq
docker pull fabric8/java-alpine-openjdk8-jdk
docker pull fabric8/caddy-server
docker pull fabric8/gerrit
docker pull fabric8/quickstart-java-camel-cdi
docker pull fabric8/taiga-back
docker pull fabric8/brackets
docker pull fabric8/hawtio
docker pull fabric8/fabric8-kiwiirc
docker pull fabric8/hubot-slack
docker pull fabric8/fabric8-http-gateway
docker pull fabric8/alpine-caddy
docker pull fabric8/builder-clients
docker pull fabric8/quickstart-java-simple-fatjar
docker pull fabric8/fabric8-wit
docker pull fabric8/nginx-controller
docker pull fabric8/hawtio-kubernetes
docker pull fabric8/springboot-webmvc
docker pull fabric8/jenkernetes
docker pull fabric8/apiman-gateway
docker pull fabric8/image-linker
docker pull fabric8/quickstart-java-camel-spring
docker pull fabric8/quickstart-karaf-camellog
docker pull fabric8/fabric8-mq
docker pull fabric8/fabric8-tenant
docker pull fabric8/quickstart-java-simple-mainclass
docker pull fabric8/fabric8mq-producer
docker pull fabric8/cdelivery
docker pull fabric8/quickstart-karaf-cxf-rest
docker pull fabric8/quickstart-karaf-camel-amq
docker pull fabric8/quickstart-war-cxf-cdi-servlet
docker pull fabric8/quickstart-karaf-camelrest
docker pull fabric8/generator-backend
docker pull fabric8/fabric8-dependency-wait-service
docker pull fabric8/java-centos-openjdk8-jre
docker pull fabric8/quickstart-war-rest
docker pull fabric8/kafka
docker pull fabric8/s2i-karaf
docker pull fabric8/influxdb
docker pull fabric8/java
docker pull fabric8/prometheus-k8s-watcher
docker pull fabric8/git-collector
docker pull fabric8/fabric8mq-consumer
docker pull fabric8/quickstart-java-cxf-cdi
docker pull fabric8/java-alpine-openjdk8-jre
docker pull fabric8/java-main
docker pull fabric8/openshift-auth-proxy
docker pull fabric8/fabric8-init-tenant
docker pull fabric8/cdi-camel
docker pull fabric8/envsubst-file
docker pull fabric8/jr-test
docker pull fabric8/keycloak-postgres
docker pull fabric8/almighty-core
docker pull fabric8/hubot
docker pull fabric8/zipkin-mysql
docker pull fabric8/springboot-keycloak
docker pull fabric8/fabric8-mq-autoscaler
docker pull fabric8/fabric8-mq-producer
docker pull fabric8/jenkins-slave-dind
docker pull fabric8/springboot-camel
docker pull fabric8/springboot-webmvc-ip
docker pull fabric8/java-centos-openjdk8-jdk
docker pull fabric8/fabric8-mq-consumer
docker pull fabric8/fabric8-runtime-console
docker pull fabric8/quickstart-karaf-camelerr
docker pull fabric8/quickstart-java-jgroups
docker pull fabric8/go-builder
docker pull fabric8/tomcat-7
docker pull fabric8/elasticsearch
docker pull fabric8/quickstart-karaf-camelcbr
docker pull fabric8/pipeline-test-project
docker pull fabric8/java-jboss-openjdk7-jdk
docker pull fabric8/quickstart-karaf-camelwiki
docker pull fabric8/quickstart-karaf-cameleip
docker pull fabric8/java-centos-openjdk7-jdk
docker pull fabric8/java-centos-openjdk7-jre
docker pull fabric8/quickstart-java-camel-cdi-rest
docker pull fabric8/builder-openshift-client
docker pull fabric8/java-alpine-openjdk7-jdk
docker pull fabric8/fabric8-mq-controller
docker pull fabric8/tomcat-9
docker pull fabric8/infinispan-server
docker pull fabric8/fabric8-notification
docker pull fabric8/quickstart-karaf-cxf-camel-cxf-code-first
docker pull fabric8/fabric8mq-autoscaler
docker pull fabric8/quickstart-karaf-cxf-secure-rest
docker pull fabric8/fabric8-ui-builder
docker pull fabric8/ipaas-console
docker pull fabric8/fabric8-online-docs
docker pull fabric8/pipeline-test-external-image
docker pull fabric8/jetty-8
docker pull fabric8/quickstart-karaf-cxf-secure-soap
docker pull fabric8/gofabric8
docker pull fabric8/quickstart-java-camel-cdi-http
docker pull fabric8/example-message-consumer
docker pull fabric8/quickstart-karaf-cxf-camel-cxf-contract-first
docker pull fabric8/jetty-7
docker pull fabric8/tomcat-8.0
docker pull fabric8/karaf-4
docker pull fabric8/openshift-s2i-jenkins-trigger
docker pull fabric8/origin-schema-generator
docker pull fabric8/tomcat-6
docker pull fabric8/php
docker pull fabric8/karaf-3
docker pull fabric8/fabric8-openshift-nginx
docker pull fabric8/hubot-base
docker pull fabric8/connector-cometd


