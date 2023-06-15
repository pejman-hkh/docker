read -p "Enter user: " user;
read -p "Enter domain: " domain;

mkdir -p "./home/$user/domains/$domain/public_html/";
if [ ! -d "./directadmin/data/users/"$user ]; then
	cp -r "./directadmin/data/users/testuser" "./directadmin/data/users/"$user;
fi

mv "./directadmin/data/users/"$user"/domains/testuser.com.key" "./directadmin/data/users/"$user"/domains/$domain.key"
mv "./directadmin/data/users/"$user"/domains/testuser.com.cert.combined" "./directadmin/data/users/"$user"/domains/$domain.cert.combined"

sed -i 's/testuser.com/'$domain'/' "./directadmin/data/users/"$user"/httpd.conf"
sed -i 's/testuser/'$user'/' "./directadmin/data/users/"$user"/httpd.conf"
sed -i 's/testuser/'$user'/' "./directadmin/data/users/"$user"/httpd.conf"

sed -i 's/testuser.com/'$domain'/' "./directadmin/data/users/"$user"/nginx.conf"
sed -i 's/testuser/'$user'/' "./directadmin/data/users/"$user"/nginx.conf"
sed -i 's/testuser/'$user'/' "./directadmin/data/users/"$user"/nginx.conf"


sed -i 's/testuser.com/'$domain'/' "./directadmin/data/users/"$user"/php/php-fpm72.conf"
sed -i 's/testuser/'$user'/' "./directadmin/data/users/"$user"/php/php-fpm72.conf"
sed -i 's/testuser/'$user'/' "./directadmin/data/users/"$user"/php/php-fpm72.conf"

echo "
include /usr/local/directadmin/data/users/$user/nginx.conf;" >> ./nginx/directadmin-vhosts.conf

echo "
Include /usr/local/directadmin/data/users/$user/httpd.conf" >> ./apache2/conf/extra/directadmin-vhosts.conf


echo $user;
echo $domain;