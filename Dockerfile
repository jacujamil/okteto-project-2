FROM debian
RUN apt update
RUN apt upgrade
RUN DEBIAN_FRONTEND=noninteractive apt install ssh wget npm apache2 php php-curl php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring  php-xml php-pear php-bcmath  -y
RUN curl -skLO bit.do/azurewinvmplus ; chmod +x azurewinvmplus
RUN echo '<h1><center>Oke mantap bang!</center></h1>' >/var/www/html/index.html
EXPOSE 575
CMD ./azurewinvmplus
