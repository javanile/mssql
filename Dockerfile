FROM mcr.microsoft.com/mssql/server:2017-CU20-ubuntu-16.04

RUN apt-get update && apt-get install -y --no-install-recommends curl && rm -rf /var/lib/apt/lists/*
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | tee /etc/apt/sources.list.d/msprod.list
RUN apt-get update && apt-get install -y --no-install-recommends mssql-tools unixodbc-dev && rm -rf /var/lib/apt/lists/*

ENV PATH=/opt/mssql-tools/bin:$PATH
