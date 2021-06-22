FROM kratosmultiphysics/kratos-image-ci-ubuntu-20-04:latest
WORKDIR /app
RUN apt-get -y install git nano
RUN git clone https://github.com/KratosMultiphysics/Kratos.git

WORKDIR /app/Kratos
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN source /opt/intel/oneapi/setvars.sh
COPY configure.sh configure.sh
RUN ./configure.sh
RUN tar -czvf kratos-latest-linux-64.tar.gz ./bin/Release
