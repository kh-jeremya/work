/bin/bash

alias diskover=`df -a -T -h -t ext4`
alias  diskbreakdown=`du -hsc / | grep G`
alias 50Mfileshome=`find /home -type f -size +50M -exec ls -lah {} + | awk {'print $9," - ", $5'}`

echo '=========='
echo 'Disk Usage Overview'
$diskover
printf '\n\n'
echo 'Disk Usage Breakdown'
$diskbreakdown
printf '\n\n'
echo 'Files 50M or larger in /home'
$50Mfileshome
echo '=========='