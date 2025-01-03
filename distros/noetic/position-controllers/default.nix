
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, forward-command-controller, hardware-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-position-controllers";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/position_controllers/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "9b9fb18201ea788790ca591af177528818e6d87b5fc9d63d13d0d32d09dc2ebd";
  };

  buildType = "catkin";
  buildInputs = [ catkin pluginlib ];
  propagatedBuildInputs = [ controller-interface forward-command-controller hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "position_controllers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
