#!/bin/bash

yum install httpd -y
service httpd start
service httpd status
