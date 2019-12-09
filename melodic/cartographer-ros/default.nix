
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, urdf, eigen-conversions, rosunit, tf2, cartographer-ros-msgs, gflags, nav-msgs, sensor-msgs, protobuf, glog, robot-state-publisher, cartographer, roslib, rosbag, tf2-ros, std-msgs, catkin, pythonPackages, pcl, roscpp, roslaunch, tf2-eigen, pcl-conversions, visualization-msgs, gmock, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-cartographer-ros";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cartographer_ros-release/archive/release/melodic/cartographer_ros/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9e734459067f4d18a9458ad47b0b647c937521e650865a9d68380d4adca57c3b";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs urdf eigen-conversions tf2 cartographer-ros-msgs gflags nav-msgs sensor-msgs protobuf glog robot-state-publisher cartographer roslib rosbag tf2-ros std-msgs pcl roscpp roslaunch tf2-eigen pcl-conversions visualization-msgs pythonPackages.sphinx gmock message-runtime ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ geometry-msgs urdf eigen-conversions tf2 cartographer-ros-msgs gflags nav-msgs sensor-msgs glog robot-state-publisher cartographer roslib rosbag tf2-ros std-msgs pcl roscpp roslaunch tf2-eigen pcl-conversions visualization-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's ROS integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
