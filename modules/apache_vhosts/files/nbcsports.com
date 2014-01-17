<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    ServerAlias www.nbcsports.local

    DocumentRoot /var/www/nbcsports/NBCSports-web/docroot
    <Directory /var/www/nbcsports/NBCSports-web/docroot>
        Options Indexes FollowSymLinks MultiViews
        AllowOverride All
        Order allow,deny
        allow from all
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/error.log

    # Possible values include: debug, info, notice, warn, error, crit,
    # alert, emerg.
    LogLevel warn

    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>