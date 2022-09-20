
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartographer, cartographer-ros-msgs, catkin, eigen-conversions, geometry-msgs, gflags, glog, gtest, message-runtime, nav-msgs, pcl, pcl-conversions, protobuf, pythonPackages, robot-state-publisher, rosbag, roscpp, roslaunch, roslib, rosunit, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-ros, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-cartographer-ros";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cartographer_ros-release/archive/release/melodic/cartographer_ros/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9e734459067f4d18a9458ad47b0b647c937521e650865a9d68380d4adca57c3b";
  };

  buildType = "catkin";
  buildInputs = [ catkin gtest protobuf pythonPackages.sphinx ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ cartographer cartographer-ros-msgs eigen-conversions geometry-msgs gflags glog message-runtime nav-msgs pcl pcl-conversions robot-state-publisher rosbag roscpp roslaunch roslib sensor-msgs std-msgs tf2 tf2-eigen tf2-ros urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's ROS integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
