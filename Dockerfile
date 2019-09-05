FROM wordpress:5.2.2

# Installs Composer
RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer

#Copying custom themes into themes folder
COPY wp-content/themes /usr/src/wordpress/wp-content/themes

#Copying composer.json
COPY composer.lock /usr/src/wordpress
COPY composer.json /usr/src/wordpress

# Installs composer dependencies
RUN /usr/bin/composer install --no-dev --no-interaction --working-dir=/usr/src/wordpress -o