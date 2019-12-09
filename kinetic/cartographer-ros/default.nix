
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, urdf, eigen-conversions, rosunit, tf2, cartographer-ros-msgs, gflags, nav-msgs, sensor-msgs, protobuf, glog, robot-state-publisher, cartographer, roslib, libyamlcpp, rosbag, tf2-ros, std-msgs, catkin, pythonPackages, pcl, roscpp, roslaunch, tf2-eigen, pcl-conversions, visualization-msgs, gmock, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-cartographer-ros";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cartographer_ros-release/archive/release/kinetic/cartographer_ros/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "0ef5e828a66bdcc06a9ba6c9f63e34bea1b4719166dce79a1d578af428bf9763";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs urdf eigen-conversions tf2 cartographer-ros-msgs gflags nav-msgs sensor-msgs protobuf glog robot-state-publisher cartographer roslib libyamlcpp rosbag tf2-ros std-msgs pcl roscpp roslaunch tf2-eigen pcl-conversions visualization-msgs pythonPackages.sphinx gmock message-runtime ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ geometry-msgs urdf eigen-conversions tf2 cartographer-ros-msgs gflags nav-msgs sensor-msgs glog robot-state-publisher cartographer roslib libyamlcpp rosbag tf2-ros std-msgs pcl roscpp roslaunch tf2-eigen pcl-conversions visualization-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's ROS integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
