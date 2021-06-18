
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, realtime-tools, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-forward-command-controller";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/forward_command_controller/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "add33ba307dbd9f4a90192dda911ec466d854e7774cd199489afaad75c83f4f8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface hardware-interface realtime-tools roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''forward_command_controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
