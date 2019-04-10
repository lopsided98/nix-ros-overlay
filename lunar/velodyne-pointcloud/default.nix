
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, velodyne-driver, pcl-ros, dynamic-reconfigure, tf, pcl-conversions, velodyne-laserscan, angles, roslaunch, roslib, catkin, tf2-ros, roscpp, nodelet, pluginlib, libyamlcpp, sensor-msgs, rostest, velodyne-msgs, rosunit }:
buildRosPackage {
  pname = "ros-lunar-velodyne-pointcloud";
  version = "1.5.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/velodyne-release/archive/release/lunar/velodyne_pointcloud/1.5.2-0.tar.gz;
    sha256 = "75327cf2d8cf0c3dae2ca0cca5f1a42fe59fc77eead9a0a394c5896a8caaafc1";
  };

  buildInputs = [ pluginlib tf pcl-conversions sensor-msgs libyamlcpp velodyne-driver roscpp nodelet velodyne-msgs angles dynamic-reconfigure roslib pcl-ros ];
  checkInputs = [ rostest roslaunch rosunit tf2-ros ];
  propagatedBuildInputs = [ pluginlib velodyne-laserscan libyamlcpp pcl-conversions sensor-msgs velodyne-driver roscpp roslib nodelet velodyne-msgs angles dynamic-reconfigure tf pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point cloud conversions for Velodyne 3D LIDARs.'';
    #license = lib.licenses.BSD;
  };
}
