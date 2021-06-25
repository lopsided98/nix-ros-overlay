
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, forward-command-controller, hardware-interface, pluginlib, realtime-tools, roscpp, std-msgs, urdf }:
buildRosPackage {
  pname = "ros-noetic-velocity-controllers";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/velocity_controllers/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "5281f0510e937a8ce981053f9bbc4c9c81ea84254b097fb6df2481edf4963fed";
  };

  buildType = "catkin";
  buildInputs = [ angles pluginlib ];
  propagatedBuildInputs = [ control-msgs control-toolbox controller-interface forward-command-controller hardware-interface realtime-tools roscpp std-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''velocity_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
