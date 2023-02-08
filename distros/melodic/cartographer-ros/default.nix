
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartographer, cartographer-ros-msgs, catkin, eigen-conversions, geometry-msgs, gflags, glog, gtest, message-runtime, nav-msgs, pcl, pcl-conversions, protobuf, pythonPackages, robot-state-publisher, rosbag, roscpp, roslaunch, roslib, rosunit, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-ros, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-cartographer-ros";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "cartographer_ros-release";
        rev = "release/melodic/cartographer_ros/1.0.0-1";
        sha256 = "sha256-jFiotq9OvKbCC15VSEauYoE0SFVLS1+lDX5yzAQ3qdU=";
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
