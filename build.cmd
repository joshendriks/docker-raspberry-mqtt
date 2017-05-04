docker build -t joshendriks/armv7hf-debian-mqtt:latest -f Dockerfile.armv7hf-mqtt.latest .
docker push joshendriks/armv7hf-debian-mqtt:latest
docker build -t joshendriks/armv7hf-debian-mqtt:jessie -f Dockerfile.armv7hf-mqtt.jessie .
docker push joshendriks/armv7hf-debian-mqtt:jessie
docker build -t joshendriks/armv7hf-debian-mqtt:wheezy -f Dockerfile.armv7hf-mqtt.wheezy .
docker push joshendriks/armv7hf-debian-mqtt:wheezy
docker build -t joshendriks/armv7hf-debian-mqtt:sid -f Dockerfile.armv7hf-mqtt.sid .
docker push joshendriks/armv7hf-debian-mqtt:sid