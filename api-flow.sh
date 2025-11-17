#!/bin/bash
echo "Starting Rest API on backend"
export java_bin="/usr/bin/java"
export java_arg="-jar"

nohup $java_bin $java_arg /home/pranab/api-rest-soap/ProductServiceRest.jar &

echo "Rest URL : http://172.31.147.112:7070/rest/productis"

echo "Starting SOAP API on backend"

nohup $java_bin $java_arg /home/pranab/api-rest-soap/SoapProductService.jar --server.port=9090 &


echo "Rest URL : http://172.31.147.112:9090/ws/products.wsdl "
