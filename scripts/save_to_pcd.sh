#!/bin/bash

# data path
data_path="./pcd_data"

if [ ! -d $data_path ]; then
	# echo WARNING: $data_path does not exist
	mkdir $data_path
fi

# save pointcloud to pcd
rosrun pcl_ros pointcloud_to_pcd input:=/lslidar_point_cloud _prefix:=$data_path/
