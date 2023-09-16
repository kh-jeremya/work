/bin/bash

diskover="/bin/df -a -T -h -t ext4"
diskbreakdown="/usr/bin/du -shc / 2>&1 | grep -v '^du:' | grep G"
fiftyfiles="/usr/bin/find /home -type f -size +50M -exec ls -lah {} + | /usr/bin/awk {'print $9, $5'}"

echo '=========='
echo 'Disk Usage Overview'
$diskover
printf '\n\n'
echo 'Disk Usage Breakdown'
$diskbreakdown
printf '\n\n'
echo 'Files 50M or larger in /home'
$fiftyfiles
echo '=========='
