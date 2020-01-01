#!/bin/sh
set -e

docker_cli_plugin_metadata() {
	vendor="Jintao Zhang"
	version="v1.0.0"
	url="https://github.com/tao12345666333/docker-year"
	description="A docker CLI plugin, Happy New Year!"
	cat <<-EOF
	{"SchemaVersion":"0.1.0","Vendor":"${vendor}","Version":"${version}","ShortDescription":"${description}","URL":"${url}"}
EOF
}

happy_new_year(){
    echo "Happy New Year `date +'%Y'`!"
}

case "$1" in
	docker-cli-plugin-metadata)
        docker_cli_plugin_metadata
		;;
	*)
        happy_new_year
		;;
esac
