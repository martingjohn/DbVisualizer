FROM martinjohn/x-template

USER root

ADD https://www.dbvis.com/product_download/dbvis-10.0.8/media/dbvis_linux_10_0_8.deb /src/dbvis_linux_10_0_8.deb

RUN apt-get update \
 && apt-get install -y \
            --no-install-recommends \
            openjdk-8-jre \
 && rm -rf /var/lib/apt/lists/* \
 && dpkg -i /src/dbvis_linux_10_0_8.deb

USER $user

CMD dbvis

