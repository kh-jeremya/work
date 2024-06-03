printf "php56:\n\n" > sites.list
whmapi1 php_get_vhosts_by_version version=ea-php56 | grep "-" >> sites.list
printf "\n\nphp70:\n\n" >> sites.list
whmapi1 php_get_vhosts_by_version version=ea-php70 | grep "-" >> sites.list
printf "\n\nphp71:\n\n" >> sites.list
whmapi1 php_get_vhosts_by_version version=ea-php71 | grep "-" >> sites.list
printf "\n\nphp72:\n\n" >> sites.list
whmapi1 php_get_vhosts_by_version version=ea-php72 | grep "-" >> sites.list
printf "\n\nphp73:\n\n" >> sites.list
whmapi1 php_get_vhosts_by_version version=ea-php73 | grep "-" >> sites.list
