#! /bin/bash
set -e
echo "Restarting PE stack services. This may take a few minutes"

echo "Restarting pe-activemq.service..."
systemctl restart pe-activemq.service

echo "Restarting mcollective.service..."
systemctl restart mcollective.service

echo "Restarting pe-console-services.service..."
systemctl restart pe-console-services.service

echo "Restarting pe-nginx.service..."
systemctl restart pe-nginx.service

echo "Restarting pe-orchestration-services.service..."
systemctl restart pe-orchestration-services.service

echo "Restarting pe-postgresql.service..."
systemctl restart pe-postgresql.service

echo "Restarting pe-puppetdb.service..."
systemctl restart pe-puppetdb.service

echo "Restarting pe-puppetserver.service..."
systemctl restart pe-puppetserver.service

echo "Restarting puppet.service..."
systemctl restart puppet.service

echo "Restarting pxp-agent.service..."
systemctl restart pxp-agent.service
