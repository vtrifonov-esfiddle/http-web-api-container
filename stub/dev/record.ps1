Param(
   [string] $proxyUri = "http://hub.docker.com"
)

$wiremockStubsPath = "${PSScriptRoot}/../wiremockStubs"

docker run -it --rm -p "48080:8080" --name http-record-replay -v "${wiremockStubsPath}:/home/wiremock" vtrifonovdocker/http-web-api-container:stub-v1.0 --proxy-all="$proxyUri" --record-mappings --verbose