#!/bin/bash
mkdir /etcd-backup
ETCDCTL_API=3 etcdctl --endpoints=192.168.198.147:2379 --cacert /etc/kubernetes/pki/etcd/ca.crt --cert /etc/kubernetes/pki/etcd/server.crt --key /etc/kubernetes/pki/etcd/server.key snapshot save /etcd-backup/etcd-snapshot-latest.db
