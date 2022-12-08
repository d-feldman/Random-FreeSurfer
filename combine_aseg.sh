#!/bin/bash

#
#

cd /thalia/data/MEND2/RUME19/FreeSurfer

Dir=/thalia/data/MEND2/RUME19/FreeSurfer/Subjects/RFCBT/

asegstats2table --subjects ${Dir}/*_01 ${Dir}*_02 --common-segs --meas volume --stats=aseg.stats --tablefile /thalia/data/MEND2/RUME19/FreeSurfer/RFCBT_PP_segstats.txt --skip

