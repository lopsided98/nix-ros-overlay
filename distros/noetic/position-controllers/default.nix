
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, forward-command-controller, hardware-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-position-controllers";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/position_controllers/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "83af262bfff6d1100f9f0bfd2b0938dbd8cb9ae3645efd7260c878650189ee88";
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
