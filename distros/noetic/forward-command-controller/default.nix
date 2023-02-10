
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, realtime-tools, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-forward-command-controller";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/forward_command_controller/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "5e0da91dd971bc9cf09c4251e076355dd3ffcec02d0a90c61d5558cd7f4d55a2";
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
