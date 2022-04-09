#!/bin/sh

for csvFile in *.csv
do
        DAY=`grep 'ExposureSummary.DaysSinceLastExposure:' $csvFile |awk -F "\""  '{print $1$2}'|awk 'NF'`
        SINCE=`egrep -o 'ExposureSummary.DaysSinceLastExposure: [0-9]' $csvFile |awk '{print $2}'|awk 'NF'`
        DURATIONS=`egrep -o 'ExposureSummary.AttenuationDurations: .{26}' $csvFile  |awk '{print $2}'|awk 'NF'`
        C_DAY=`date -d "$DAY $SINCE days ago 9 hours ago" +"%Y/%m/%d %H:%M:%S"`
        if [ -n "$DAY" ]; then
                echo "RAW DATETIME       $DAY - $SINCE days- $DURATIONS"
                echo "CANONICAL DATETIME $C_DAY - $DURATIONS"
        fi
done
