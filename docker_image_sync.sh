docker search registry.access.redhat.com/rhscl/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull
docker search registry.access.redhat.com/openshift3/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull
docker search registry.access.redhat.com/rhgs3/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull
docker search registry.access.redhat.com/redhat-sso-7/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull
docker search registry.access.redhat.com/jboss-eap-6/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull
docker search registry.access.redhat.com/jboss-eap-7/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull
docker search registry.access.redhat.com/jboss-webserver-3/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull
docker search registry.access.redhat.com/jboss-datagrid-6/* --limit 100 | cut -d" " -f 4 | xargs -L 1 docker pull

# base images
docker pull registry.access.redhat.com/rhel7-atomic
docker pull registry.access.redhat.com/rhel7/rhel
docker pull registry.access.redhat.com/rhel6/rhel
docker pull registry.access.redhat.com/rhel7
docker pull registry.access.redhat.com/rhel6
docker pull registry.access.redhat.com/rhel
docker pull registry.access.redhat.com/rhel7.4
docker pull registry.access.redhat.com/rhel7/rhel-atomic
docker pull registry.access.redhat.com/rhel-atomic
docker pull registry.access.redhat.com/rhel6.9

docker pull registry.connect.redhat.com/crunchydata/crunchy-pgadmin4
docker pull registry.connect.redhat.com/crunchydata/crunchy-backup
docker pull registry.connect.redhat.com/crunchydata/crunchy-postgres-gis
docker pull registry.connect.redhat.com/crunchydata/crunchy-postgres
docker pull registry.connect.redhat.com/rocketchat/rocketchat
