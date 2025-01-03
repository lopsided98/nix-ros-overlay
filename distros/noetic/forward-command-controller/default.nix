
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, realtime-tools, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-forward-command-controller";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/forward_command_controller/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "2566fe89bf06c3054994d341fa5dd8234af082da2a2c0f19dd23da14f2eb4f5b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface hardware-interface realtime-tools roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "forward_command_controller";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
