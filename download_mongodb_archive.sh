#!/bin/bash

# Download mongodb archive for 3.6.x
for minor_version in {0..0}
do
 wget https://downloads.mongodb.com/linux/mongodb-linux-x86_64-enterprise-rhel62-3.6.$minor_version.tgz
 wget https://downloads.mongodb.com/linux/mongodb-linux-x86_64-enterprise-rhel70-3.6.$minor_version.tgz
done

# Download mongodb archive for 3.4.x
for minor_version in {0..10}
do
 wget https://downloads.mongodb.com/linux/mongodb-linux-x86_64-enterprise-rhel62-3.4.$minor_version.tgz
 wget https://downloads.mongodb.com/linux/mongodb-linux-x86_64-enterprise-rhel70-3.4.$minor_version.tgz
done

# Download mongodb archive for 3.2.x
for minor_version in {0..18}
do
 wget https://downloads.mongodb.com/linux/mongodb-linux-x86_64-enterprise-rhel62-3.2.$minor_version.tgz
 wget https://downloads.mongodb.com/linux/mongodb-linux-x86_64-enterprise-rhel70-3.2.$minor_version.tgz
done

# Download mongodb archive for 3.0.x
for minor_version in {0..15}
do
 wget https://downloads.mongodb.com/linux/mongodb-linux-x86_64-enterprise-rhel62-3.0.$minor_version.tgz
 wget https://downloads.mongodb.com/linux/mongodb-linux-x86_64-enterprise-rhel70-3.0.$minor_version.tgz
done

# Download mongodb archive for 2.6.x for rhel 6.x
for minor_version in {0..12}
do
 wget https://downloads.mongodb.com/linux/mongodb-linux-x86_64-enterprise-rhel62-2.6.$minor_version.tgz
done
