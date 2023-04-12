week_days=(sat sun mon tue wed thu fri)
max_num=0
max_day="No day"
for day in ${week_days[*]}
do
num=$(grep $day log_file.txt | wc -1)
if [[ $num -gt $max_num ]]
then
let max_num=$num
max_day=$day
fi
done
