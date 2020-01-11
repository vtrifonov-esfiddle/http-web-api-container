function Build($majorVersion, $minorVersion) {
    $ContextDir = Resolve-Path "$PSScriptRoot\wiremockStubs"
    $version = "v$majorVersion.$minorVersion"
    $tag = "vtrifonovdocker/http-web-api-container:stub-$version"
    docker build -f $PSScriptRoot\Dockerfile -t $tag $ContextDir
    docker push $tag
}

Build 1 0