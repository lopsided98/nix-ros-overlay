
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartographer, pcl-conversions, geometry-msgs, gflags, pythonPackages, cartographer-ros-msgs, message-runtime, robot-state-publisher, glog, roslaunch, eigen-conversions, roslib, rosbag, catkin, tf2-ros, nav-msgs, urdf, std-msgs, gmock, protobuf, visualization-msgs, roscpp, libyamlcpp, pcl, sensor-msgs, tf2, tf2-eigen, rosunit }:
buildRosPackage {
  pname = "ros-lunar-cartographer-ros";
  version = "0.2.0-r4";

  src = fetchurl {
    url = https://github.com/ros-gbp/cartographer_ros-release/archive/release/lunar/cartographer_ros/0.2.0-4.tar.gz;
    sha256 = "4fc9579df30bda1d038ee7165b855db783d30a5f16507c1bec5f6d889b8efa7c";
  };

  buildInputs = [ pythonPackages.sphinx cartographer pcl-conversions geometry-msgs gflags cartographer-ros-msgs message-runtime robot-state-publisher glog roslaunch eigen-conversions roslib rosbag tf2-ros nav-msgs urdf std-msgs protobuf roscpp visualization-msgs libyamlcpp pcl sensor-msgs tf2 tf2-eigen gmock ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ cartographer pcl-conversions geometry-msgs gflags cartographer-ros-msgs message-runtime robot-state-publisher glog roslaunch roslib eigen-conversions rosbag tf2-ros nav-msgs urdf std-msgs roscpp visualization-msgs libyamlcpp pcl sensor-msgs tf2 tf2-eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's ROS integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
