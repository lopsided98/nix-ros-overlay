
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fetch-depth-layer, fetch-calibration, fetch-moveit-config, fetch-teleop, fetch-ikfast-plugin, fetch-description, fetch-navigation, fetch-maps }:
buildRosPackage {
  pname = "ros-kinetic-fetch-ros";
  version = "0.7.15";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/kinetic/fetch_ros/0.7.15-0.tar.gz;
    sha256 = "790480b9bd3398ea7a6ac73afcad99f15c5bc805b142900b0871480e4b34fcd7";
  };

  propagatedBuildInputs = [ fetch-teleop fetch-ikfast-plugin fetch-description fetch-navigation fetch-depth-layer fetch-calibration fetch-moveit-config fetch-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fetch ROS, packages for working with Fetch and Freight'';
    #license = lib.licenses.BSD;
  };
}
