
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, forward-command-controller, hardware-interface, pluginlib, realtime-tools, roscpp, std-msgs, urdf }:
buildRosPackage {
  pname = "ros-noetic-velocity-controllers";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/velocity_controllers/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "9d5ccee520704ca2fad93077875ea435013debff489df49396ea502fca511b87";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin pluginlib ];
  propagatedBuildInputs = [ control-msgs control-toolbox controller-interface forward-command-controller hardware-interface realtime-tools roscpp std-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''velocity_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
