
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fetch-depth-layer, fetch-calibration, fetch-moveit-config, fetch-teleop, fetch-ikfast-plugin, fetch-description, fetch-navigation, fetch-maps }:
buildRosPackage {
  pname = "ros-melodic-fetch-ros";
  version = "0.8.1";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_ros/0.8.1-0.tar.gz;
    sha256 = "8eee5893c1058c6875ca642fa51dcb92bc7a66d0fa2fb5d7aa800f305809819a";
  };

  propagatedBuildInputs = [ fetch-teleop fetch-ikfast-plugin fetch-description fetch-navigation fetch-depth-layer fetch-calibration fetch-moveit-config fetch-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fetch ROS, packages for working with Fetch and Freight'';
    #license = lib.licenses.BSD;
  };
}
