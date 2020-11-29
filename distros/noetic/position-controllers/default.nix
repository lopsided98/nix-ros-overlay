
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, forward-command-controller, pluginlib }:
buildRosPackage {
  pname = "ros-noetic-position-controllers";
  version = "0.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/position_controllers/0.17.0-1.tar.gz";
    name = "0.17.0-1.tar.gz";
    sha256 = "795d5c8a8bd9dd265568a5773df120fc4ad189b76546eb8dd36e240d5ef61e3a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface forward-command-controller pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''position_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
