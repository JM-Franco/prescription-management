# TODO
2024-12-11
Tried to deploy on Railway. Laravel app deployment successful after changing the port in Railway service settings to match deployment port in deployment log. Next, connect local Laravel app to Railway MySQL server. Use local Laravel app to migrate tables to Railway MySQL server. Then configure Railway Laravel app to communicate with Railway MySQL server. Similar process seen in this video: https://www.youtube.com/watch?v=w9Xj2n12pJ0. Issues regarding previous attempts from configuration of local Laravel app about database connections. The .env file needs to be properly configured to connect to Railway MySQL server to migrate data. However, unsure of how to properly setup .env configuration to do so.

2024-12-13
# IT WORKS NOW
Following are modified to make it work:

In `config/database.php`:

    'mysql' => [
        'driver' => 'mysql',
        'url' => env('MYSQL_URL'),
        'host' => env('DB_HOST', '127.0.0.1'),
        'port' => env('DB_PORT', '3306'),
        'database' => env('DB_DATABASE', 'forge'),
        'username' => env('DB_USERNAME', 'forge'),
        'password' => env('DB_PASSWORD', ''),
        'unix_socket' => env('DB_SOCKET', ''),
        'charset' => 'utf8mb4',
        'collation' => 'utf8mb4_unicode_ci',
        'prefix' => '',
        'prefix_indexes' => true,
        'strict' => true,
        'engine' => null,
        'options' => extension_loaded('pdo_mysql') ? array_filter([
            PDO::MYSQL_ATTR_SSL_CA => env('MYSQL_ATTR_SSL_CA'),
        ]) : [],
    ],

In `.env`:

    MYSQL_URL=mysql://root:ylGXBNqKnQmVcCgxypTHEYFJRFCDzobj@junction.proxy.rlwy.net:15273/railway
    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=prescription_management_system
    DB_USERNAME=root
    DB_PASSWORD=

Copy SQL dump into MySQL docker container using `docker cp DIR_OF_SQL_DUMP MYSQL_DOCKER_CONTAINER_NAME:DIR_IN_MYSQL_CONTAINER`

Access the docker container of the MySQL database using `docker exec -it MYSQL_DOCKER_CONTAINER_NAME bash`

Import SQL data using `mysql -hjunction.proxy.rlwy.net -uroot -ppassword_of_railway_mysql_db --port 12345 --protocol=TCP railway`

Access the docker container of the Laravel webapp and run the following commands:

    php artisan migrate --force
    php artisan db:seed
    php artisan db:seed --class=AdminSeeder
    php artisan db:seed --class=MedicationsTableSeeder
    php storage:link

Verify deployment is successful by visiting Railway site.
