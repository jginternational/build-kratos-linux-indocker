docker build -t kratos-linux-builder .
mv ./kratos-latest-linux-64.tar.gz kratos-old-linux-64.tar.gz
docker cp kratos-linux-builder:/app/Kratos/kratos-latest-linux-64.tar.gz .
@REM docker run -it  --entrypoint /bin/sh --name kratos-linux-builder kratos-linux-builder