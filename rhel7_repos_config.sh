subscription-manager repos \
        --enable="rhel-7-server-rpms" \
	--enable="rhel-7-server-extras-rpms" \
	--enable="rhel-7-server-optional-rpms" \
	--enable="rhel-7-server-supplementary-rpms" \
        --enable="rhel-7-server-thirdparty-oracle-java-rpms" \
	--enable="rh-gluster-3-client-for-rhel-7-server-rpms" \
	--enable="rhel-server-rhscl-7-rpms" \
	--enable="rhel-server-rhscl-7-eus-rpms" \
	--enable="rhel-7-server-rhn-tools-rpms" \
	--enable="rhel-7-server-rh-common-rpms" \
	--enable="rhel-7-server-fastrack-rpms" \
	--enable="rhel-7-fast-datapath-htb-rpms" \
	--enable="rhel-7-server-dotnet-rpms" \
	--enable="rhel-7-server-ose-3.1-rpms" \
	--enable="rhel-7-server-ose-3.2-rpms" \
	--enable="rhel-7-server-ose-3.3-rpms" \
	--enable="rhel-7-server-ose-3.4-rpms" \
	--enable="rhel-7-server-ose-3.5-rpms" \
	--enable="rhel-7-server-ose-3.6-rpms" \
	--enable="rhel-7-server-ose-3.7-rpms" \
	--enable="rhel-7-server-rhceph-1.3-tools-rpms" \
	--enable="rhel-7-server-rhceph-2-tools-rpms" \
	--enable="rhel-atomic-host-rpms" \
	--enable="rhel-7-server-satellite-tools-6.2-rpms" \
	--enable="rhel-7-server-satellite-maintenance-6-rpms" \
	--enable="jws-3-for-rhel-7-server-rpms" \
	--enable="jb-ews-2-for-rhel-7-server-rpms" \
	--enable="jws-textonly-1-for-middleware-rpms" \
	--enable="rh-sso-7.1-for-rhel-7-server-rpms" \
	--enable="rh-sso-textonly-1-for-middleware-rpms" \
	--enable="rhel-7-server-insights-3-rpms"
	
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y https://centos7.iuscommunity.org/ius-release.rpm
yum install -y https://download.postgresql.org/pub/repos/yum/9.4/redhat/rhel-7-x86_64/pgdg-redhat94-9.4-3.noarch.rpm
yum install -y https://download.postgresql.org/pub/repos/yum/9.5/redhat/rhel-7-x86_64/pgdg-redhat95-9.5-3.noarch.rpm
yum install -y https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-redhat96-9.6-3.noarch.rpm
yum install -y https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-redhat10-10-1.noarch.rpm
#yum install -y http://www.pgpool.net/yum/rpms/3.5/redhat/rhel-7-x86_64/pgpool-II-release-3.5-1.noarch.rpm
#yum install -y http://www.pgpool.net/yum/rpms/3.6/redhat/rhel-7-x86_64/pgpool-II-release-3.6-1.noarch.rpm
#yum install -y http://www.pgpool.net/yum/rpms/3.7/redhat/rhel-7-x86_64/pgpool-II-release-3.7-1.noarch.rpm
yum install -y https://www.percona.com/redir/downloads/percona-release/redhat/0.1-4/percona-release-0.1-4.noarch.rpm
yum install -y http://repo.rundeck.org/latest.rpm
yum install -y https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
yum install -y https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm
#yum install -y https://yum.theforeman.org/releases/1.15/el7/x86_64/foreman-release.rpm
yum install -y http://repo.zabbix.com/zabbix/3.2/rhel/7/x86_64/zabbix-release-3.2-1.el7.noarch.rpm
yum install -y https://packages.icinga.com/epel/7/release/noarch/icinga-rpm-release-7-1.el7.centos.noarch.rpm
yum install -y https://download.pydio.com/pub/linux/centos/7/pydio-release-1-1.el7.centos.noarch.rpm
yum install -y http://yum.opennms.org/repofiles/opennms-repo-stable-rhel7.noarch.rpm
yum install -y https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana-4.3.1-1.x86_64.rpm
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

curl http://download.bareos.org/bareos/release/latest/RHEL_7/bareos.repo -o /etc/yum.repos.d/bareos.repo
curl http://download.bareos.org/bareos/contrib/RHEL_7/bareos:contrib.repo -o /etc/yum.repos.d/bareos:contrib.repo

curl http://pkg.jenkins-ci.org/redhat/jenkins.repo -o /etc/yum.repos.d/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
rpm --import neotechnology.gpg.key
rpm --import https://download.owncloud.org/download/repositories/production/RHEL_7/repodata/repomd.xml.key
rpm --import 'https://download.ceph.com/keys/release.asc'
rpm --import http://yum.opennms.org/OPENNMS-GPG-KEY

curl -s https://packagecloud.io/install/repositories/basho/riak/script.rpm.sh | sudo bash

curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash

curl -s https://packagecloud.io/install/repositories/varnishcache/varnish41/script.rpm.sh | sudo bash
curl -s https://packagecloud.io/install/repositories/varnishcache/varnish5/script.rpm.sh | sudo bash

curl -L https://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh | sh

curl -s https://packagecloud.io/install/repositories/grafana/stable/script.rpm.sh | sudo bash

echo '[s9s-repo]
name = Severalnines Release Repository
baseurl = http://repo.severalnines.com/rpm/os/x86_64
enabled = 1
gpgkey = http://repo.severalnines.com/severalnines-repos.asc
gpgcheck = 1' | tee /etc/yum.repos.d/s9s-repo.repo

echo '[mysql57-community]
name=MySQL 5.7 Community Server
baseurl=http://repo.mysql.com/yum/mysql-5.7-community/el/7/$basearch/
enabled=1
gpgcheck=0

[mysql-cluster-7.5-community]
name=MySQL Cluster 7.5 Community
baseurl=http://repo.mysql.com/yum/mysql-cluster-7.5-community/el/7/$basearch/
enabled=1
gpgcheck=0

[mysql-connectors-community]
name=MySQL Connectors community
baseurl=http://repo.mysql.com/yum/mysql-connectors-community/el/7/$basearch/
enabled=1
gpgcheck=0

[mysql-tools-community]
name=MySQL Tools community
baseurl=http://repo.mysql.com/yum/mysql-tools-community/el/7/$basearch/
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/mysql-community.repo

echo '[ansible]
name=Ansible for Enterprise Linux 7 - $basearch
baseurl=https://releases.ansible.com/ansible/rpm/release/epel-7-x86_64/
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/ansible.repo

echo '[mariadb-10.1]
name = MariaDB 10.1
baseurl = http://yum.mariadb.org/10.1/rhel7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1

[mariadb-10.2]
name = MariaDB 10.2
baseurl = http://yum.mariadb.org/10.2/rhel7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1

[mariadb-10.3]
name = MariaDB 10.3
baseurl = http://yum.mariadb.org/10.3/rhel7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1' | tee /etc/yum.repos.d/mariadb.repo

echo '[mongodb-enterprise-2.6]
name=MongoDB Enterprise Repository 2.6
baseurl=https://repo.mongodb.com/yum/redhat/$releasever/mongodb-enterprise/2.6/$basearch/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-2.6.asc

[mongodb-enterprise-3.0]
name=MongoDB Enterprise Repository 3.0
baseurl=https://repo.mongodb.com/yum/redhat/$releasever/mongodb-enterprise/3.0/$basearch/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.0.asc

[mongodb-enterprise-3.2]
name=MongoDB Enterprise Repository 3.2
baseurl=https://repo.mongodb.com/yum/redhat/$releasever/mongodb-enterprise/3.2/$basearch/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.2.asc

[mongodb-enterprise-3.4]
name=MongoDB Enterprise Repository 3.4
baseurl=https://repo.mongodb.com/yum/redhat/$releasever/mongodb-enterprise/3.4/$basearch/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.4.asc

[mongodb-enterprise-3.6]
name=MongoDB Enterprise Repository 3.6
baseurl=https://repo.mongodb.com/yum/redhat/$releasever/mongodb-enterprise/3.6/$basearch/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.6.asc' | tee /etc/yum.repos.d/mongodb-enterprise.repo

cat > /etc/yum.repos.d/pmm.repo <<END \

[pmm]
name = PMM Server
baseurl = https://repo.percona.com/pmm/7/RPMS/x86_64/
gpgcheck=0

END

echo '[elasticsearch-5.x]
name=Elasticsearch repository for 5.x packages
baseurl=https://artifacts.elastic.co/packages/5.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md

[elasticsearch-6.x]
name=Elasticsearch repository for 6.x packages
baseurl=https://artifacts.elastic.co/packages/6.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md' | tee /etc/yum.repos.d/elasticsearch.repo

cat > /etc/yum.repos.d/neo4j.repo <<END \

[neo4j]
name=Neo4j Yum Repo
baseurl=http://yum.neo4j.org/stable
enabled=1
gpgcheck=1

END

cat > /etc/yum.repos.d/pgpool-II-release-35.repo <<END \

[pgpool35]
name=pgpool-II 3.5
baseurl=http://www.pgpool.net/yum/rpms/3.5/redhat/rhel-7-x86_64
enabled=0
gpgcheck=0

END

cat > /etc/yum.repos.d/pgpool-II-release-36.repo <<END \

[pgpool36]
name=pgpool-II 3.6
baseurl=http://www.pgpool.net/yum/rpms/3.6/redhat/rhel-7-x86_64
enabled=0
gpgcheck=0

END

cat > /etc/yum.repos.d/pgpool-II-release-37.repo <<END \

[pgpool37]
name=pgpool-II 3.7
baseurl=http://www.pgpool.net/yum/rpms/3.7/redhat/rhel-7-x86_64
enabled=0
gpgcheck=0

END

cat > /etc/yum.repos.d/foreman-1.14.repo <<END \

[foreman-1.14]
name=Foreman 1.14
baseurl=http://yum.theforeman.org/releases/1.14/el7/\$basearch
enabled=1
gpgcheck=0

END

cat > /etc/yum.repos.d/foreman-plugins-1.14.repo <<END \

[foreman-plugins-1.14]
name=Foreman plugins 1.14
baseurl=http://yum.theforeman.org/plugins/1.14/el7/\$basearch
enabled=1
gpgcheck=0

END

cat > /etc/yum.repos.d/foreman-1.15.repo <<END \

[foreman-1.15]
name=Foreman 1.15
baseurl=http://yum.theforeman.org/releases/1.15/el7/\$basearch
enabled=1
gpgcheck=0

END

cat > /etc/yum.repos.d/foreman-plugins-1.15.repo <<END \

[foreman-plugins-1.15]
name=Foreman plugins 1.15
baseurl=http://yum.theforeman.org/plugins/1.15/el7/\$basearch
enabled=1
gpgcheck=0

END

cat > /etc/yum.repos.d/foreman-1.16.repo <<END \

[foreman-1.16]
name=Foreman 1.16
baseurl=http://yum.theforeman.org/releases/1.16/el7/\$basearch
enabled=1
gpgcheck=0

END

cat > /etc/yum.repos.d/foreman-plugins-1.16.repo <<END \

[foreman-plugins-1.16]
name=Foreman plugins 1.16
baseurl=http://yum.theforeman.org/plugins/1.16/el7/\$basearch
enabled=1
gpgcheck=0

END

cat > /etc/yum.repos.d/sclo.repo <<END \

[sclo-sclo]
name=sclo-sclo
baseurl=http://mirror.centos.org/centos/7/sclo/x86_64/sclo/
enabled=1
gpgcheck=0

[sclo-rh]
name=sclo-rh
baseurl=http://mirror.centos.org/centos/7/sclo/x86_64/rh/
enabled=1
gpgcheck=0

END

cat > /etc/yum.repos.d/nodesource-0.10.repo <<END \

[nodesource-0.10]
name=Node.js 0.10 Packages for Enterprise Linux 7 - $basearch
baseurl=https://rpm.nodesource.com/pub/el/7/x86_64/
enabled=1
gpgcheck=0

END

cat > /etc/yum.repos.d/nodesource-4.x.repo <<END \

[nodesource-4.x]
name=Node.js 4.x Packages for Enterprise Linux 7 - $basearch
baseurl=https://rpm.nodesource.com/pub_4.x/el/7/x86_64/
enabled=1
gpgcheck=0

END

cat > /etc/yum.repos.d/nodesource-5.x.repo <<END \

[nodesource-5.x]
name=Node.js 5.x Packages for Enterprise Linux 7 - $basearch
baseurl=https://rpm.nodesource.com/pub_5.x/el/7/x86_64/
enabled=1
gpgcheck=0

END

cat > /etc/yum.repos.d/nodesource-6.x.repo <<END \

[nodesource-6.x]
name=Node.js 6.x Packages for Enterprise Linux 7 - $basearch
baseurl=https://rpm.nodesource.com/pub_6.x/el/7/x86_64/
enabled=1
gpgcheck=0

END

cat > /etc/yum.repos.d/nodesource-7.x.repo <<END \

[nodesource-7.x]
name=Node.js 7.x Packages for Enterprise Linux 7 - $basearch
baseurl=https://rpm.nodesource.com/pub_7.x/el/7/x86_64/
enabled=1
gpgcheck=0

END

cat > /etc/yum.repos.d/nodesource-8.x.repo <<END \

[nodesource-8.x]
name=Node.js 8.x Packages for Enterprise Linux 7 - $basearch
baseurl=https://rpm.nodesource.com/pub_8.x/el/7/x86_64/
enabled=1
gpgcheck=0

END

echo '[nodesource-9.x]
name=Node.js 9.x Packages for Enterprise Linux 7 - $basearch
baseurl=https://rpm.nodesource.com/pub_9.x/el/7/x86_64/
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/nodesource-9.x.repo

echo '[sensu]
name=sensu
baseurl=https://sensu.global.ssl.fastly.net/yum/$releasever/$basearch/
gpgcheck=0
enabled=1' | tee /etc/yum.repos.d/sensu.repo

echo '[ce_production]
name=ownCloud Server Version production (RHEL_7)
type=rpm-md
baseurl=http://download.owncloud.org/download/repositories/production/RHEL_7
gpgcheck=1
gpgkey=http://download.owncloud.org/download/repositories/production/RHEL_7/repodata/repomd.xml.key
enabled=1' | tee /etc/yum.repos.d/ce:stable.repo

echo '[ceph]
name=Ceph packages for $basearch
baseurl=https://download.ceph.com/rpm-jewel/{distro}/$basearch
enabled=1
gpgcheck=1
gpgkey=https://download.ceph.com/keys/release.asc' | tee /etc/yum.repos.d/ceph.repo

echo '[gluster-3.8]
name=gluster-3.8
baseurl=https://buildlogs.centos.org/centos/7/storage/x86_64/gluster-3.8/
enabled=1
gpgcheck=0

[gluster-3.9]
name=gluster-3.9
baseurl=https://buildlogs.centos.org/centos/7/storage/x86_64/gluster-3.9/
enabled=1
gpgcheck=0

[gluster-3.10]
name=gluster-3.10
baseurl=https://buildlogs.centos.org/centos/7/storage/x86_64/gluster-3.10/
enabled=1
gpgcheck=0

[gluster-3.11]
name=gluster-3.11
baseurl=https://buildlogs.centos.org/centos/7/storage/x86_64/gluster-3.11/
enabled=1
gpgcheck=0'

[gluster-3.12]
name=gluster-3.12
baseurl=https://buildlogs.centos.org/centos/7/storage/x86_64/gluster-3.12/
enabled=1
gpgcheck=0'| tee /etc/yum.repos.d/gluster.repo

echo '[temboard]
name=temBoard Packages for Enterprise Linux 7
baseurl=https://packages.temboard.io/yum/rhel7/
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/temboard.repo

echo '[squid]
name=Squid repo for CentOS Linux - $basearch
#IL mirror
baseurl=http://www1.ngtech.co.il/repo/centos/7/$basearch/
failovermethod=priority
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/squid.repo

echo '[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/rhel/7/$basearch/
gpgcheck=0
enabled=1' | tee /etc/yum.repos.d/nginx.repo

echo '[influxdb]
name = InfluxDB Repository - RHEL $releasever
baseurl = https://repos.influxdata.com/rhel/$releasever/$basearch/stable
enabled = 1
gpgcheck = 1
gpgkey = https://repos.influxdata.com/influxdb.key' | tee /etc/yum.repos.d/influxdb.repo

echo '[hpspp]
name=Service Pack for ProLiant
baseurl=http://downloads.linux.hpe.com/repo/spp/rhel/7/x86_64/current/
enabled=1
gpgcheck=0

[hpsum]
name=HP Smart Update Manager
baseurl=http://downloads.linux.hpe.com/repo/hpsum/rhel/7/x86_64/current/
enabled=1
gpgcheck=0

[hprest]
name=HP RESTful Interface Tool
baseurl=http://downloads.linux.hpe.com/repo/hprest/rhel/7/x86_64/current/
enabled=1
gpgcheck=0

[hpsut]
name=HP Smart Update Tools
baseurl=http://downloads.linux.hpe.com/repo/sut/redhat/7Server/x86_64/current/
enabled=1
gpgcheck=0

[hpip-gen8]
name=Intelligent Provisioning gen8
baseurl=http://downloads.linux.hpe.com/repo/ip/rhel/current/x86_64/gen8/
enabled=1
gpgcheck=0

[hpip-gen9]
name=Intelligent Provisioning gen9
baseurl=http://downloads.linux.hpe.com/repo/ip/rhel/current/x86_64/gen9/
enabled=1
gpgcheck=0

[hpstk]
name=hp scripting tools
baseurl=https://downloads.linux.hpe.com/repo/stk/rhel/7/x86_64/current/
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/hp.repo

echo '[centos-opstools-testing]
name=CentOS-7 - OpsTools - release
baseurl=https://buildlogs.centos.org/centos/7/opstools/$basearch/
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/centos-opstools-testing.repo

echo '[openresty]
name=Official OpenResty Repository
baseurl=https://copr-be.cloud.fedoraproject.org/results/openresty/openresty/epel-7-$basearch/
skip_if_unavailable=True
gpgcheck=1
gpgkey=https://copr-be.cloud.fedoraproject.org/results/openresty/openresty/pubkey.gpg
enabled=1
enabled_metadata=1' | tee /etc/yum.repos.d/OpenResty.repo

echo '[libnvidia-container]
name=libnvidia-container
baseurl=https://nvidia.github.io/libnvidia-container/centos7/x86_64
repo_gpgcheck=1
gpgcheck=0
enabled=1
gpgkey=https://nvidia.github.io/libnvidia-container/gpgkey
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt

[nvidia-container-runtime]
name=nvidia-container-runtime
baseurl=https://nvidia.github.io/nvidia-container-runtime/centos7/x86_64
repo_gpgcheck=1
gpgcheck=0
enabled=1
gpgkey=https://nvidia.github.io/nvidia-container-runtime/gpgkey
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt

[nvidia-docker]
name=nvidia-docker
baseurl=https://nvidia.github.io/nvidia-docker/centos7/x86_64
repo_gpgcheck=1
gpgcheck=0
enabled=1
gpgkey=https://nvidia.github.io/nvidia-docker/gpgkey
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt' | tee /etc/yum.repos.d/nvidia-docker.repo

echo '[bareos_bareos-16.2]
name=bareos bareos-16.2 (CentOS_7)
type=rpm-md
baseurl=http://download.bareos.org/bareos/release/16.2/CentOS_7/
gpgcheck=1
gpgkey=http://download.bareos.org/bareos/release/16.2/CentOS_7/repodata/repomd.xml.key
enabled=1

[bareos_bareos-17.2]
name=bareos bareos-17.2 (CentOS_7)
type=rpm-md
baseurl=http://download.bareos.org/bareos/release/17.2/CentOS_7/
gpgcheck=1
gpgkey=http://download.bareos.org/bareos/release/17.2/CentOS_7//repodata/repomd.xml.key
enabled=1' | tee /etc/yum.repos.d/bareos.repo

echo '[bareos_contrib]
name=Bareos project contributions (RHEL_7)
type=rpm-md
baseurl=http://download.bareos.org/bareos/contrib/RHEL_7/
gpgcheck=1
gpgkey=http://download.bareos.org/bareos/contrib/RHEL_7//repodata/repomd.xml.key
enabled=1' | tee /etc/yum.repos.d/bareos:contrib.repo
