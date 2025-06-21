# Gunakan image PHP resmi dengan Apache
FROM php:8.2-apache

# Aktifkan ekstensi CURL (diperlukan oleh Midtrans)
RUN docker-php-ext-install curl

# Salin semua file dari direktori project ke direktori HTML Apache
COPY . /var/www/html/

# Ubah permission jika perlu (opsional)
RUN chown -R www-data:www-data /var/www/html

# Aktifkan mod_rewrite untuk URL clean (jika kamu perlukan)
RUN a2enmod rewrite

# Expose port 80 ke Railway
EXPOSE 80
