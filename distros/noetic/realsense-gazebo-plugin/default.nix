# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

# { lib, buildRosPackage, fetchurl, catkin, git, ros-environment }:
{ lib, buildRosPackage, catkin, ros-environment, roscpp, std-msgs, geometry-msgs
, gazebo-ros, sensor-msgs, image-transport, camera-info-manager }:
buildRosPackage {
  pname = "ros-noetic-realsense-gazebo-plugin";
  version = "1.0.0";

  src = builtins.fetchGit {
    url = "https://github.com/pal-robotics/realsense_gazebo_plugin.git";
    ref = "melodic-devel";
    name = "realsense-gazebo-plugin";
    submodules = true;
    rev = "49ab134fa517280bb8393e715173dc631ccc2557";
  };

  buildType = "catkin";
  buildInputs = [
    catkin
    ros-environment
    roscpp
    gazebo-ros
    image-transport
    camera-info-manager
  ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Intel RealSense Gazebo ROS plugin";
    license = with lib.licenses; [ "apache-2.0" ];
  };
}
