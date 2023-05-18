#!/bin/bash

# data path
data_path="./lidar_data"

if [ ! -d $data_path ]; then
	# echo WARNING: $data_path does not exist
	mkdir $data_path
fi

# save pointcloud to TXT
while :
do
	# get current timestamp
	# cur_timestamp=$((`date '+%s'`*1000+`date '+%N'`/1000000))
	cur_timestamp=`date '+%s'`

	rostopic echo -n1 /lslidar_point_cloud > $data_path/$cur_timestamp.pointcloud2
	
	echo $cur_timestamp.pointcloud2 saved!

	#sleep 1
done
