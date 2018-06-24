from debian:wheezy

run unset http_proxy
run unset https_proxy
run apt-get update
run apt-get -y install wget
run apt-get -y install ca-certificates
run wget https://github.com/gohugoio/hugo/releases/download/v0.25.1/hugo_0.25.1_Linux-64bit.deb
run dpkg -i hugo*.deb
run hugo version


run apt-get update && apt-get install -y cowsay fortune
copy entrypoint.sh /
run ls /
ENTRYPOINT ["/entrypoint.sh"]
