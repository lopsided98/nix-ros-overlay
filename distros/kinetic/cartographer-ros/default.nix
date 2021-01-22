
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartographer, cartographer-ros-msgs, catkin, eigen-conversions, geometry-msgs, gflags, glog, gmock, libyamlcpp, message-runtime, nav-msgs, pcl, pcl-conversions, protobuf, pythonPackages, robot-state-publisher, rosbag, roscpp, roslaunch, roslib, rosunit, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-ros, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cartographer-ros";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cartographer_ros-release/archive/release/kinetic/cartographer_ros/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "0ef5e828a66bdcc06a9ba6c9f63e34bea1b4719166dce79a1d578af428bf9763";
  };

  buildType = "catkin";
  buildInputs = [ gmock protobuf pythonPackages.sphinx ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ cartographer cartographer-ros-msgs eigen-conversions geometry-msgs gflags glog libyamlcpp message-runtime nav-msgs pcl pcl-conversions robot-state-publisher rosbag roscpp roslaunch roslib sensor-msgs std-msgs tf2 tf2-eigen tf2-ros urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's ROS integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
