#!/bin/sh

diskover='/bin/df -a -T -h -t ext4'
diskbreakdown='/usr/bin/du -shc /* --threshold=1G --exclude=/home/virtfs 2> >(grep -v 'cannot access')'
fiftyfiles='/usr/bin/find /home -not -path "/home/virtfs/*" -type f -size +50M -exec ls -lah {} +'

echo '=========='
echo 'Disk Usage Overview'
$diskover
printf '\n\n'
echo 'Disk Usage Breakdown'
$diskbreakdown 2>/dev/null
printf '\n\n'
echo 'Files 50M or larger in /home'
$fiftyfiles | awk {'print $9," - ", $5'}
echo '=========='
exit 0;
