# NASEBANAL Platform for Business

[![Build Status](https://travis-ci.org/nasebanal/nb-platform4biz.svg)](https://travis-ci.org/nasebanal/nb-platform4biz)
[![Code Climate](https://codeclimate.com/github/nasebanal/nb-platform4biz/badges/gpa.svg)](https://codeclimate.com/github/nasebanal/nb-platform4biz)
[![Test Coverage](https://codeclimate.com/github/nasebanal/nb-platform4biz/badges/coverage.svg)](https://codeclimate.com/github/nasebanal/nb-platform4biz/coverage)
[![Issue Count](https://codeclimate.com/github/nasebanal/nb-platform4biz/badges/issue_count.svg)](https://codeclimate.com/github/nasebanal/nb-platform4biz)


This is an open source project for new business platform.
You can see the demo from https://www.youtube.com/watch?v=s3LiMk8aCRw


## Prerequisite

* Install Ruby On Rails
* Install PostgreSQL Server


## How To Use

Step.1) Get source code.

 $ git clone https://github.com/nasebanal/nb-platform4biz.git

Step.2) Setup environment variable

PARAMETER|DESCRIPTION|EXAMPLE
---------|-----------|-------
NB_QUICKBOOKS_KEY|Public key for QuickBooks Online User Auth|xxxx
NB_QUICKBOOKS_SECRET|Secret key for QuickBooks Online User Auth|xxxx

Step.3) Create Database.

 $ rake db:migrate

Step.4) Run the service.

 $ rails s -b 0.0.0.0

Then you can access the front page from http://[host IP address]:3000/
