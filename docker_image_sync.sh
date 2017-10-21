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

# fission images
docker search docker.io/fission --limit 100 | cut -d" " -f 4 | grep "docker.io/fission//*" | xargs -L 1 docker pull

# manageiq images
docker pull docker.io/manageiq/manageiq -a
docker pull docker.io/manageiq/httpd -a
docker pull docker.io/manageiq/manageiq-pods -a
docker pull docker.io/manageiq/postgresql -a
docker pull docker.io/manageiq/embedded-ansible -a
docker pull docker.io/manageiq/memcached -a
docker pull docker.io/manageiq/ruby -a
docker pull docker.io/manageiq/manageiq_org -a
docker pull docker.io/manageiq/ansible-tower -a
