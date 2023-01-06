
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, realtime-tools, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-forward-command-controller";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/forward_command_controller/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "316d39e6cd77b1339a38c0f434903f991a6c08c5a56ba757785518de041605a6";
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
