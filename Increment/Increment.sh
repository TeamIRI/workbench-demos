cd /home/iridemo/git/workbench-demos/Increment
export LASTTIME=$(cat LastTime.txt)
sortcl /SPECIFICATION=Timestamp.scl
sortcl /SPECIFICATION=Changes.scl
if [ ! $? == 0  ]; then

echo ERROR
exit
 else 

cp LastTimeTemp.txt LastTime.txt
echo Job Finished
exit
fi

echo Job Ended