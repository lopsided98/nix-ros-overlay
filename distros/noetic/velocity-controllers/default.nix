
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, forward-command-controller, hardware-interface, pluginlib, realtime-tools, roscpp, std-msgs, urdf }:
buildRosPackage {
  pname = "ros-noetic-velocity-controllers";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/velocity_controllers/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "5b88737c78dae005d51d4cd2fd9260d4cf8518bc8ee34d5169e1b139d1063be5";
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
