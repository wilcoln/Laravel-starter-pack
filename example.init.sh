#----------------------------------
# This script :
#   - copies all the files in the working folder
#   - generates the application key
#   - change the permission of the storage folder
#   - run npm install to retrieve dependencies and the launches the server for live reload
#   TODO: Change the destination folder from 'example' to your actual working folder.

cp -Rf * /opt/lampp/htdocs/example/;
cd /opt/lampp/htdocs/example/;
php artisan key:generate;
echo 'Password required to change permissions on the storage folder'
sudo chmod -R 777 storage;
rm example.init.sh;
rm init.sh;
rm README.md;
touch README.md;
npm install && php artisan serve;
