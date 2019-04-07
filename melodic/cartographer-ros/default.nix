
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartographer, pcl-conversions, geometry-msgs, gflags, pythonPackages, cartographer-ros-msgs, message-runtime, robot-state-publisher, glog, roslaunch, eigen-conversions, roslib, rosbag, catkin, tf2-ros, nav-msgs, urdf, std-msgs, gmock, protobuf, visualization-msgs, roscpp, pcl, sensor-msgs, tf2, tf2-eigen, rosunit }:
buildRosPackage {
  pname = "ros-melodic-cartographer-ros";
  version = "1.0.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/cartographer_ros-release/archive/release/melodic/cartographer_ros/1.0.0-1.tar.gz;
    sha256 = "9e734459067f4d18a9458ad47b0b647c937521e650865a9d68380d4adca57c3b";
  };

  buildInputs = [ rosbag tf2-ros pythonPackages.sphinx nav-msgs urdf std-msgs cartographer protobuf roscpp pcl-conversions visualization-msgs geometry-msgs gflags pcl sensor-msgs eigen-conversions cartographer-ros-msgs tf2 message-runtime robot-state-publisher tf2-eigen glog roslaunch roslib gmock ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ rosbag tf2-ros nav-msgs urdf std-msgs cartographer roscpp pcl-conversions visualization-msgs geometry-msgs gflags pcl sensor-msgs eigen-conversions cartographer-ros-msgs tf2 message-runtime robot-state-publisher tf2-eigen glog roslaunch roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's ROS integration.'';
    #license = lib.licenses.Apache 2.0;
  };
}
