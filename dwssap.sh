cat /etc/passwd | grep "*:" | cut -d ":" -f1 | sed -n 'n;p' | rev | sort -r | awk 'NR >= '$FT_LINE1' && NR <= '$FT_LINE2'' | tr '\n' ',' | sed '$ s/.$/./' | sed 's/, */, /g'

