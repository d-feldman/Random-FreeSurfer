#!/bin/bash

#
#

Subject_List="3503 3504 3506 3522 3547 3561 3564 3566 3567 3571 3575 3588 3590 3594 3597 4501 4504 4508 4510 4511 4512 4515 4516 4524 4530 4531 4532 4536 4539 4557"

Sub_dir="/Users/danielfeldman/Desktop/RFCBT/FS"

for subj in ${Subject_List}
do
	recon-all -base ${Sub_dir}/${subj}_base -tp ${Sub_dir}/${subj}_01 -tp ${Sub_dir}/${subj}_02 -all -qcache

done