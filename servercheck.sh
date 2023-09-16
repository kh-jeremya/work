#!/bin/bash

echo "Hostname - " `hostname` " - " `hostname -i`
echo "Uptime - " `uptime`
echo "Date - " `date`
echo "Webserver - "`lsof -i :80 | awk {'print $1'} | tail -1` 
echo "Mysql - "`mysql --version | awk {'print $1, $3'}`

if [[ -d /usr/local/directadmin/ ]]; then
	echo "DirectAdmin"
elif [[ -d /usr/local/cpanel/ ]]; then
	echo "WHM/cPanel"
else
	echo "No panel Found"
fi

if [[ -d /usr/local/directadmin/ ]]; then
	echo `/usr/local/directadmin/custombuild/build options | grep "PHP "`
elif [[ -d /usr/local/cpanel/ ]]; then
	echo `/path/to/your/bin/rebuild_phpconf --current`
else
	echo "check php handler manually"
fi

echo `grep -i 'kill\|oom' /var/log/messages | tail -n3`

for file in `ls -tr /var/log/sa/sa*| grep -v sar`
do
        sar -f $file | head -n 1 | awk '{print $4}'
        echo "-----------"
        sar -u -f $file | awk '/Average:/{printf("CPU Average: %.2f%\n"), 100 - $8}'
        sar -r -f $file | awk '/Average:/{printf("Memory Average: %.2f%\n"),(($3-$5-$6)/($2+$3)) * 100 }'
        printf "\n"
done

