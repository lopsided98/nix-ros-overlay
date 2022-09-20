
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-noetic-mir-actions";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_actions/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "4102869138d4a85e81f6e71feb9f8c2d138d0fbc06b3082c94775277350f5dea";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib geometry-msgs message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Action definitions for the MiR robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
