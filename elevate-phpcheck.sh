printf "php56:\n\n" > el_php-sites.list
whmapi1 php_get_vhosts_by_version version=ea-php56 | grep "-" >> el_php-sites.list
printf "\n\nphp70:\n\n" >> el_php-sites.list
whmapi1 php_get_vhosts_by_version version=ea-php70 | grep "-" >> el_php-sites.list
printf "\n\nphp71:\n\n" >> el_php-sites.list
whmapi1 php_get_vhosts_by_version version=ea-php71 | grep "-" >> el_php-sites.list
printf "\n\nphp72:\n\n" >> el_php-sites.list
whmapi1 php_get_vhosts_by_version version=ea-php72 | grep "-" >> el_php-sites.list
printf "\n\nphp73:\n\n" >> el_php-sites.list
whmapi1 php_get_vhosts_by_version version=ea-php73 | grep "-" >> el_php-sites.list
echo 'file is '${PWD}'/el_php-sites.list'
