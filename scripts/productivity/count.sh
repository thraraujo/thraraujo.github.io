echo "RESEARCH:"
awk -F';' '{sum += $3+0.0} END {print sum}' 2026.csv
echo "#######"
echo "TEACHING:"
awk -F';' '{sum += $4} END {printf "%.2f\n", sum}' 2026.csv
echo "#######"
echo "OTHER:"
awk -F';' '{sum += $5} END {printf "%.2f\n", sum}' 2026.csv

