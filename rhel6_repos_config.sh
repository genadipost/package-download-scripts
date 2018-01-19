subscription-manager repos \
        --enable="rhel-6-server-eus-rpms" \
        --enable="rhel-lb-for-rhel-6-server-eus-rpms" \
        --enable="rhel-ha-for-rhel-6-server-eus-rpms" \
        --enable="rhel-6-server-eus-rhn-tools-rpms" \
        --enable="rhel-server-rhscl-6-eus-rpms" \
        --enable="rhel-sap-hana-for-rhel-6-server-eus-rpms" \
        --enable="rhel-sap-for-rhel-6-server-eus-rpms" \
        --enable="rhel-sfs-for-rhel-6-server-eus-rpms" \
        --enable="rhel-6-server-eus-satellite-tools-6.1-rpms" \
        --enable="rhel-6-server-eus-satellite-tools-6.2-rpms" \
        --enable="rhel-sjis-for-rhel-6-server-eus-rpms" \
        --enable="rhel-rs-for-rhel-6-server-eus-rpms" \
        --enable="rhel-6-server-eus-thirdparty-oracle-java-rpms" \
        --enable="rhel-atomic-7-cdk-2.2-rpms" \
        --enable="rhel-atomic-7-cdk-2.3-rpms" \
        --enable="rhel-atomic-7-cdk-2.4-rpms" \
        --enable="rhel-atomic-7-cdk-3.0-rpms" \
        --enable="rhel-atomic-7-cdk-3.2-rpms" \
        --enable="rhel-6-server-realtime-rpms" \
        --enable="rhel-lb-for-rhel-6-server-fastrack-rpms" \
        --enable="rhel-6-server-satellite-tools-6.2-rpms" \
        --enable="rhel-server-dts2-6-rpms" \
        --enable="rhel-rs-for-rhel-6-server-fastrack-rpms" \
        --enable="rhel-6-server-insights-3-rpms" \
        --enable="rhel-scalefs-for-rhel-6-server-rpms" \
        --enable="rhel-6-server-sam-rpms" \
        --enable="rhel-6-server-supplementary-rpms" \
        --enable="rhel-6-server-rh-common-rpms" \
        --enable="rhel-server-dts-6-rpms" \
        --enable="rhel-6-server-optional-fastrack-rpms" \
        --enable="rhel-hpn-for-rhel-6-server-rpms" \
        --enable="rhel-ha-for-rhel-6-server-rpms" \
        --enable="rhel-server-rhscl-6-rpms" \
        --enable="rhel-scalefs-for-rhel-6-server-fastrack-rpms" \
        --enable="rhel-lb-for-rhel-6-server-rpms" \
        --enable="rhel-6-server-rhn-tools-rpms" \
        --enable="rhel-6-server-rpms" \
        --enable="rhel-6-server-fastrack-rpms" \
        --enable="rhel-scalefs-for-rhel-6-server-fastrack-source-rpms" \
        --enable="rhel-6-server-rhs-client-1-rpms" \
        --enable="rhel-rs-for-rhel-6-server-rpms" \
        --enable="rhel-sap-hana-for-rhel-6-server-rpms" \
        --enable="rhel-6-server-cf-tools-1-rpms" \
        --enable="rhel-6-server-satellite-tools-6.1-rpms" \
        --enable="rhel-server-dts-6-rhb-rpms" \
        --enable="rhel-hpn-for-rhel-6-server-fastrack-rpms" \
        --enable="rhel-6-server-extras-rpms" \
        --enable="rhel-6-server-optional-rpms" \
        --enable="rhel-6-server-thirdparty-oracle-java-rpms" \
        --enable="rhel-6-server-eus-optional-rpms" \
        --enable="rhel-ha-for-rhel-6-server-fastrack-rpms" \

rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
rpm --import https://download.owncloud.org/download/repositories/production/RHEL_7/repodata/repomd.xml.key
rpm --import 'https://download.ceph.com/keys/release.asc'
rpm --import http://yum.opennms.org/OPENNMS-GPG-KEY

yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
yum install -y https://centos6.iuscommunity.org/ius-release.rpm
yum install -y https://download.postgresql.org/pub/repos/yum/9.4/redhat/rhel-6-x86_64/pgdg-redhat94-9.4-3.noarch.rpm
yum install -y https://download.postgresql.org/pub/repos/yum/9.5/redhat/rhel-6-x86_64/pgdg-redhat95-9.5-3.noarch.rpm
yum install -y https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-6-x86_64/pgdg-redhat96-9.6-3.noarch.rpm
yum install -y https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-6-x86_64/pgdg-redhat10-10-1.noarch.rpm
#yum install -y http://www.pgpool.net/yum/rpms/3.5/redhat/rhel-6-x86_64/pgpool-II-release-3.5-1.noarch.rpm
#yum install -y http://www.pgpool.net/yum/rpms/3.6/redhat/rhel-6-x86_64/pgpool-II-release-3.6-1.noarch.rpm
#yum install -y http://www.pgpool.net/yum/rpms/3.7/redhat/rhel-6-x86_64/pgpool-II-release-3.7-1.noarch.rpm
yum install -y https://www.percona.com/redir/downloads/percona-release/redhat/0.1-4/percona-release-0.1-4.noarch.rpm
yum install -y http://repo.rundeck.org/latest.rpm
yum install -y https://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm
yum install -y https://yum.puppetlabs.com/puppet5/puppet5-release-el-6.noarch.rpm
yum install -y http://repo.zabbix.com/zabbix/3.5/rhel/6/x86_64/zabbix-release-3.5-1.el6.noarch.rpm
yum install -y https://packages.icinga.com/epel/icinga-rpm-release-6-latest.noarch.rpm
yum install -y https://www.softwarecollections.org/en/scls/remi/php56more/epel-6-x86_64/download/remi-php56more-epel-6-x86_64.noarch.rpm
yum install -y https://download.pydio.com/pub/linux/centos/6/pydio-release-1-1.el6.noarch.rpm
yum install -y http://yum.opennms.org/repofiles/opennms-repo-stable-rhel6.noarch.rpm

curl http://download.bareos.org/bareos/release/latest/RHEL_6/bareos.repo -o /etc/yum.repos.d/bareos.repo
curl http://download.bareos.org/bareos/contrib/RHEL_6/bareos:contrib.repo -o /etc/yum.repos.d/bareos:contrib.repo


curl -L https://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh | sh


echo '[ansible]
name=Ansible for Enterprise Linux 6 - $basearch
baseurl=https://releases.ansible.com/ansible/rpm/release/epel-6-x86_64/
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/ansible.repo

echo '[mysql57-community]
name=MySQL 5.7 Community Server
baseurl=http://repo.mysql.com/yum/mysql-5.7-community/el/6/$basearch/
enabled=1
gpgcheck=0

[mysql-cluster-7.5-community]
name=MySQL Cluster 7.5 Community
baseurl=http://repo.mysql.com/yum/mysql-cluster-7.5-community/el/6/$basearch/
enabled=1
gpgcheck=0

[mysql-connectors-community]
name=MySQL Connectors community
baseurl=http://repo.mysql.com/yum/mysql-connectors-community/el/6/$basearch/
enabled=1
gpgcheck=0

[mysql-tools-community]
name=MySQL Tools community
baseurl=http://repo.mysql.com/yum/mysql-tools-community/el/6/$basearch/
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/mysql-community.repo

echo '[mariadb-10.1]
name = MariaDB 10.1
baseurl = http://yum.mariadb.org/10.1/rhel6-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1

[mariadb-10.2]
name = MariaDB 10.2
baseurl = http://yum.mariadb.org/10.2/rhel6-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1

[mariadb-10.3]
name = MariaDB 10.3
baseurl = http://yum.mariadb.org/10.3/rhel6-amd64
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

echo '[pgpool35]
name=pgpool-II 3.5
baseurl=http://www.pgpool.net/yum/rpms/3.5/redhat/rhel-6-x86_64
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/pgpool-II-release-35.repo

echo '[pgpool36]
name=pgpool-II 3.6
baseurl=http://www.pgpool.net/yum/rpms/3.6/redhat/rhel-6-x86_64
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/pgpool-II-release-36.repo

echo '[pgpool37]
name=pgpool-II 3.7
baseurl=http://www.pgpool.net/yum/rpms/3.7/redhat/rhel-6-x86_64
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/pgpool-II-release-37.repo


echo '[nodesource-0.10]
name=Node.js 0.10 Packages for Enterprise Linux 6 - $basearch
baseurl=https://rpm.nodesource.com/pub/el/6/x86_64/
enabled=1
gpgcheck=0

[nodesource-4.x]
name=Node.js 4.x Packages for Enterprise Linux 6 - $basearch
baseurl=https://rpm.nodesource.com/pub_4.x/el/6/x86_64/
enabled=1
gpgcheck=0

[nodesource-5.x]
name=Node.js 5.x Packages for Enterprise Linux 6 - $basearch
baseurl=https://rpm.nodesource.com/pub_5.x/el/6/x86_64/
enabled=1
gpgcheck=0

[nodesource-6.x]
name=Node.js 6.x Packages for Enterprise Linux 6 - $basearch
baseurl=https://rpm.nodesource.com/pub_6.x/el/6/x86_64/
enabled=1
gpgcheck=0

[nodesource-7.x]
name=Node.js 7.x Packages for Enterprise Linux 6 - $basearch
baseurl=https://rpm.nodesource.com/pub_7.x/el/6/x86_64/
enabled=1
gpgcheck=0

[nodesource-8.x]
name=Node.js 8.x Packages for Enterprise Linux 6 - $basearch
baseurl=https://rpm.nodesource.com/pub_8.x/el/6/x86_64/
enabled=1
gpgcheck=0

[nodesource-9.x]
name=Node.js 9.x Packages for Enterprise Linux 7 - $basearch
baseurl=https://rpm.nodesource.com/pub_9.x/el/6/x86_64/
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/nodesource.repo

echo '[sensu]
name=sensu
baseurl=https://sensu.global.ssl.fastly.net/yum/$releasever/$basearch/
gpgcheck=0
enabled=1' | tee /etc/yum.repos.d/sensu.repo

echo '[temboard]
name=temBoard Packages for Enterprise Linux 6
baseurl=https://packages.temboard.io/yum/rhel6/
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/temboard.repo

echo '[hpspp]
name=Service Pack for ProLiant
baseurl=http://downloads.linux.hpe.com/repo/spp/rhel/6/x86_64/current/
enabled=1
gpgcheck=0

[hpsum]
name=HP Smart Update Manager
baseurl=http://downloads.linux.hpe.com/repo/hpsum/rhel/6/x86_64/current/
enabled=1
gpgcheck=0

[hprest]
name=HP RESTful Interface Tool
baseurl=http://downloads.linux.hpe.com/repo/hprest/rhel/6/x86_64/current/
enabled=1
gpgcheck=0

[hpsut]
name=HP Smart Update Tools
baseurl=http://downloads.linux.hpe.com/repo/sut/redhat/6Server/x86_64/current/
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
baseurl=https://downloads.linux.hpe.com/repo/stk/rhel/6/x86_64/current/
enabled=1
gpgcheck=0' | tee /etc/yum.repos.d/hp.repo

echo '[bareos_bareos-16.2]
name=bareos bareos-16.2 (CentOS_6)
type=rpm-md
baseurl=http://download.bareos.org/bareos/release/16.2/CentOS_6/
gpgcheck=1
gpgkey=http://download.bareos.org/bareos/release/16.2/CentOS_6/repodata/repomd.xml.key
enabled=1

[bareos_bareos-17.2]
name=bareos bareos-17.2 (CentOS_6)
type=rpm-md
baseurl=http://download.bareos.org/bareos/release/17.2/CentOS_6/
gpgcheck=1
gpgkey=http://download.bareos.org/bareos/release/17.2/CentOS_6//repodata/repomd.xml.key
enabled=1' | tee /etc/yum.repos.d/bareos.repo

echo '[bareos_contrib]
name=Bareos project contributions (RHEL_6)
type=rpm-md
baseurl=http://download.bareos.org/bareos/contrib/RHEL_6/
gpgcheck=1
gpgkey=http://download.bareos.org/bareos/contrib/RHEL_6/repodata/repomd.xml.key
enabled=1' | tee /etc/yum.repos.d/bareos:contrib.repo
