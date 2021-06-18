
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, forward-command-controller, hardware-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-position-controllers";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/position_controllers/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "eb065ab91e1908cb598cf0ad100582163e0b99d4ddc7790568a99ffa4ff176b4";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib ];
  propagatedBuildInputs = [ controller-interface forward-command-controller hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''position_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
