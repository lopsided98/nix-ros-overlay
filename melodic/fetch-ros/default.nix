
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fetch-depth-layer, fetch-calibration, fetch-moveit-config, fetch-teleop, fetch-ikfast-plugin, fetch-description, fetch-navigation, fetch-maps }:
buildRosPackage {
  pname = "ros-melodic-fetch-ros";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_ros/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "280ad8771e06d8c58d969ec8266fb0ab5da3e6f55bd593b552c3c72503ae677f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ fetch-depth-layer fetch-calibration fetch-moveit-config fetch-teleop fetch-ikfast-plugin fetch-description fetch-navigation fetch-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fetch ROS, packages for working with Fetch and Freight'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
