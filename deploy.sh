#!/bin/bash

rsync -avz -e "ssh -i ~/.ssh/id_ed25519_test_2" ./myapp/ root@161.35.209.76:/var/www/myapp/
