
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fetch-calibration, fetch-depth-layer, fetch-description, fetch-ikfast-plugin, fetch-maps, fetch-moveit-config, fetch-navigation, fetch-teleop }:
buildRosPackage {
  pname = "ros-noetic-fetch-ros";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/noetic/fetch_ros/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "a66c52e9776e1a30f4b2c0b9c51cf615a3bc68f227add45537d970f9c82c6464";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fetch-calibration fetch-depth-layer fetch-description fetch-ikfast-plugin fetch-maps fetch-moveit-config fetch-navigation fetch-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fetch ROS, packages for working with Fetch and Freight'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
