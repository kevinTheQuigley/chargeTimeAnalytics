#!/bin/bash
scp -i ../.sshkeys/id_rsa_server ubuntu@87.44.4.172:/home/ubuntu/chargeTimeAnalytics/chargeTimeAnalytics/weatherMerged.csv .
