/bin/bash

alias diskover="df -a -T -h -t ext4"
alias  diskbreakdown="du -shc / 2>&1 | grep -v  '^du:' | grep G"
alias 50files="find /home -type f -size +50M -exec ls -lah {} + | awk {'print $9," - ", $5'}"

echo '=========='
echo 'Disk Usage Overview'
echo $diskover
printf '\n\n'
echo 'Disk Usage Breakdown'
echo $diskbreakdown
printf '\n\n'
echo 'Files 50M or larger in /home'
echo $50files
echo '=========='
