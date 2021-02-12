#Dakota Seiber
#Ingen Assignment
#1/23/2021

#printing out "scheduled status" the Data is being stored in the Scheduled.csv  file
awk -F ',' '{if ($4==2) print $3 " PO# " $1 " For " $2 " Price " $5 " Earnings "$6} ' Data.csv > Scheduled.csv
echo "**** Scheduled Totals ****"

#printing out the price,and earnings to console (with 4 decimal places) for scheduled
awk -F ',' '{if($4==2) {s+=$5}} END {printf "Total Price: " "%0.4f\n", s} ' Data.csv
awk -F ',' '{if($4==2) {s+=$6}} END {printf "Total Earnings: " "%0.4f\n" ,s }' Data.csv

#printing out "new status" Data being stored in New.csv file
awk -F ',' '{if($4==0)print $3 " PO# " $1 " For " $2 " Price " $5 " Earnings " $6} ' Data.csv > New.csv
echo "**** New Totals ****"

#printing out the price, and earnings to console with (4 decimal places) for new
awk -F ',' '{if($4==0) {s+=$5}} END {printf "Total Price: " "%0.4f\n", s  }' Data.csv
awk -F ',' '{if($4==0) {s+=$6}} END {printf "Total Earnings: " " %0.4f\n" ,s}' Data.csv

#printing out "Closed status" Data being stored in Closed.csv file
awk -F ',' '{if($4==5) print $3 " PO# " $1 " For " $2 " Price " $5 " Earnings "$6}' Data.csv > Closed.csv
echo "**** Closed Totals ****"

#printing out the price and earnings for closed
awk -F ',' '{if($4==5) {s+=$5}} END {printf "Total Price: " " %0.4f\n",s}' Data.csv
awk -F ',' '{if($4==5) {s+=$6}} END {printf "Total Earnings: " "%0.4f\n",s}' Data.csv

#printing out "Hold status" Data stored in Hold.csv file
awk -F ',' '{if($4==1) print $3 " PO# " $1 " For " $2 " Price " $5 " Earnings "$6}' Data.csv > Hold.csv
echo "**** Hold for Release Totals ****"

#printing out the price and earnings for hold 
awk -F ',' '{if($4==1) {s+=$5}} END {printf "Total Price: " " %0.4f\n",s}' Data.csv
awk -F ',' '{if($4==1) {s+=$6}} END {printf "Total Earnings: " "%0.4f\n" ,s}' Data.csv

#printing out "Shipped status" Shipped.csv
awk -F ',' '{if($4==3) print $3 " PO# " $1 " For" $2 " Price " $5 " Earnings "$6}' Data.csv > Shipped.csv
echo "**** Shipped Totals ****"

#printing out price and earnings to console for shipped
awk -F ',' '{if($4==3) {s+=$5}} END {printf "Total Price: " "%0.4f\n",s}' Data.csv
awk -F ',' '{if($4==3) {s+=$6}} END {printf "Total Price: " "%0.4f\n",s}' Data.csv

#printing out "Invoiced Status" Invoiced.csv
awk -F ',' '{if($4==4) print $3 " PO# " $1 " For " $2 " Price " $5 " Earnings "$6}' Data.csv > Invoiced.csv
echo "**** Invoiced Totals ****"

#printing out price and earnings for invoice
awk -F ',' '{if($4==4) {s+=$5}} END {printf "Total Price: " "%0.4f\n",s}' Data.csv
awk -F ',' '{if($4==4) {s+=$6}} END {printf "Total Price: " "%0.4f\n",s}' Data.csv

#printing out "Acknowledged Status" Acknowledged.csv
awk -F ',' '{if($4==6) print $3 " PO# " $1 " For " $2 " Price " $5 " Earnings"$6}' Data.csv > Acknowledged.csv
echo "**** Acknowledged Totals ****"

#printing out price and earnings for Acknowledged
awk -F ',' '{if($4==6) {s+=$5}} END {printf "Total Price: " "%0.4f\n",s}' Data.csv
awk -F ',' '{if($4==6) {s+=$6}} END {printf "Total Price: " "%0.4f\n",s}' Data.csv

#printing out "Canceled Status"
awk -F ',' '{if($4==7) echo "Canceled"}' Data.csv


