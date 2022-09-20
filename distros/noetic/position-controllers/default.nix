
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, forward-command-controller, hardware-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-position-controllers";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/position_controllers/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "73ed1c9e8d03e2565928ecfe15daf1b5de9e58fda1f5b731203c38b5ee8ada90";
  };

  buildType = "catkin";
  buildInputs = [ catkin pluginlib ];
  propagatedBuildInputs = [ controller-interface forward-command-controller hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''position_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
