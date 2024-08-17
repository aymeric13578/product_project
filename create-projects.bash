#!/usr/bin/env bash

mkdir microservices
cd microservices

spring init \
--boot-version=3.3.2 \
--type=gradle-project \
--java-version=21 \
--packaging=jar \
--name=product-service \
--package-name=se.aymeric.microservices.core.product \
--groupId=se.aymeric.microservices.core.product \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
product-service

spring init \
--boot-version=3.3.2 \
--type=gradle-project \
--java-version=21 \
--packaging=jar \
--name=review-service \
--package-name=se.aymeric.microservices.core.review \
--groupId=se.aymeric.microservices.core.review \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
review-service

spring init \
--boot-version=3.3.2 \
--type=gradle-project \
--java-version=21 \
--packaging=jar \
--name=recommendation-service \
--package-name=se.aymeric.microservices.core.recommendation \
--groupId=se.aymeric.microservices.core.recommendation \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
recommendation-service

spring init \
--boot-version=3.3.2 \
--type=gradle-project \
--java-version=21 \
--packaging=jar \
--name=product-composite-service \
--package-name=se.aymeric.microservices.composite.product \
--groupId=se.aymeric.microservices.composite.product \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
product-composite-service

cd ..
