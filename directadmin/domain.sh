read -p "Enter user: " user;
read -p "Enter domain: " domain;

mkdir -p "./home/$user/domains/$domain/public_html/";
if [ ! -d "./directadmin/data/users/"$user ]; then
	cp -r "./directadmin/data/users/testuser" "./directadmin/data/users/"$user;
fi

sed -i 's/testuser.com/'$domain'/' "./directadmin/data/users/"$user"/httpd.conf"
sed -i 's/testuser/'$user'/' "./directadmin/data/users/"$user"/httpd.conf"
sed -i 's/testuser/'$user'/' "./directadmin/data/users/"$user"/httpd.conf"

sed -i 's/testuser.com/'$domain'/' "./directadmin/data/users/"$user"/nginx.conf"
sed -i 's/testuser/'$user'/' "./directadmin/data/users/"$user"/nginx.conf"
sed -i 's/testuser/'$user'/' "./directadmin/data/users/"$user"/nginx.conf"


sed -i 's/testuser.com/'$domain'/' "./directadmin/data/users/"$user"/php/php-fpm72.conf"
sed -i 's/testuser/'$user'/' "./directadmin/data/users/"$user"/php/php-fpm72.conf"
sed -i 's/testuser/'$user'/' "./directadmin/data/users/"$user"/php/php-fpm72.conf"


echo $user;
echo $domain;