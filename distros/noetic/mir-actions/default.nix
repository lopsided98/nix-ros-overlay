
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, message-generation, message-runtime, mir-msgs, nav-msgs }:
buildRosPackage {
  pname = "ros-noetic-mir-actions";
  version = "1.1.7-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_actions/1.1.7-1.tar.gz";
    name = "1.1.7-1.tar.gz";
    sha256 = "4730959b70dee88162c37d14709ff6570dc5e56aea6e434d4ea0700e9e820530";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib geometry-msgs message-runtime mir-msgs nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Action definitions for the MiR robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
