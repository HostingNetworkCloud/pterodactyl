echo -e "\e[91mHosting Network - Rebuild Script"
sleep 5
echo -e "\e[33mPanel wird heruntergefahren."
sleep 1
echo -e "\e[33mPanel wird heruntergefahren.."
sleep 1
echo -e "\e[33mPanel wird heruntergefahren..."
sleep 1
echo -e "\e[33mPanel wird heruntergefahren."
sleep 1
echo -e "\e[33mPanel wird heruntergefahren.."
sleep 1
echo -e "\e[33mPanel wird heruntergefahren..."
sleep 1
php /var/www/pterodactyl/artisan down
echo -e "\e[91mPanel heruntergefahren..."

cd /var/www/pterodactyl/resources/scripts
cd ../..
php artisan view:clear
php artisan cache:clear
cd /var/www/pterodactyl/resources/views/layouts/
yarn install
yarn add @emotion/react
rm -rf /var/www/pterodactyl/resources/scripts/hoc/requireServerPermission.tsx
clear

echo -e "\e[33mPanel Rebuild wird gestartet..."
yarn build:production
cd ../../..
clear
echo -e "\e[33mPanel Rebuild abgeschlossen"
sleep 3
echo -e "\e[32mPanel wird gestartet!"
sleep 5
php /var/www/pterodactyl/artisan up
php /var/www/pterodactyl/artisan view:clear
php /var/www/pterodactyl/artisan cache:clear
clear
echo -e "\e[32mPanel gestartet! Und Rebuild beendet!"
