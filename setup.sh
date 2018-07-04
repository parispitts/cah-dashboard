

#setup vagrant
sudo apt-get install vagrant

#install influxdb
  curl -sL https://repos.influxdata.com/influxdb.key | sudo apt-key add -
  source /etc/lsb-release
  echo "deb https://repos.influxdata.com/${DISTRIB_ID,,} ${DISTRIB_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/influxdb.list
  sudo apt-get update && sudo apt-get install influxdb
  influx config
  
#install telegraf
  sudo apt-get update && sudo apt-get install telegraf
  sudo service telegraf start
