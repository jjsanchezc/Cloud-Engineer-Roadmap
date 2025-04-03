#!/bin/bash

docker build -t my-sql-image .
docker run --name mysql-container -d my-sql-image

