
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-noetic-mir-actions";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_actions/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "1403ef21f683c48af660faa6d022f356f741a8d2195e61e70fb5866be6abb42e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib geometry-msgs message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Action definitions for the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
