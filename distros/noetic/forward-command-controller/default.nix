
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, realtime-tools, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-forward-command-controller";
  version = "0.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/forward_command_controller/0.17.0-1.tar.gz";
    name = "0.17.0-1.tar.gz";
    sha256 = "ec1f14a2bd1a5bfefc63e0d8d7fb00cc0078ffd55898f5d16be949b582aa03ec";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface hardware-interface realtime-tools std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''forward_command_controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
