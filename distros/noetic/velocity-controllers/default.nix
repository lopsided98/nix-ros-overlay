
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, forward-command-controller, hardware-interface, pluginlib, realtime-tools, roscpp, std-msgs, urdf }:
buildRosPackage {
  pname = "ros-noetic-velocity-controllers";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/velocity_controllers/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "b4a6f699c94ef4fcb35fb01260bfc80f3ad2b85f40055ff67c1d0a82822d7867";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin pluginlib ];
  propagatedBuildInputs = [ control-msgs control-toolbox controller-interface forward-command-controller hardware-interface realtime-tools roscpp std-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "velocity_controllers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
