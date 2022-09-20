
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, realtime-tools, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-forward-command-controller";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/forward_command_controller/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "24ac6b8c48c223a7c0dfa07220349e6f7ef5c970c7bba150d60d7ef8d0d7c7df";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface hardware-interface realtime-tools roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''forward_command_controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
