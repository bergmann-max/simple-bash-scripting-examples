#!/usr/bin/env bash
#
#In a logfile.txt for every line with a specific number, sum the last number of those lines.
#
#content of the logfile.txt
#
#Jan 09 2019|09:15:17|10203|1|SL02|650
#Jan 09 2019|09:15:18|43097|1|SL01|945
#Jan 09 2019|09:15:19|28774|2|SB03|1389
#Jan 09 2019|09:16:21|00788|1|SL02|650
#Jan 09 2019|09:21:55|00788|1|SL02|650
#Jan 09 2019|09:24:43|03361|3|SB03|1389
#Jan 09 2019|09:26:01|10203|1|SB03|1389
#Jan 09 2019|09:27:21|28774|2|SL02|650
#Jan 09 2019|09:29:32|10203|1|SL01|945
#Jan 09 2019|09:30:12|34032|1|SB03|1389
#Jan 09 2019|09:30:15|08767|3|SL02|650

grep -Po '\|10203\|.*\|\K\d+' logfile.txt | cut -f6 -d "|" | paste -sd+ | bc
