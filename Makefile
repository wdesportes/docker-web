default: docker_build

docker_build:
    @docker build \
    --build-arg VCS_REF=`git rev-parse --short HEAD` \
    --build-arg VERSION="1.1" \
    --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` .
