
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-noetic-mir-actions";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_actions/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "1263401d92c26b9a187bda6909a463f5762ec6a78740cb4e7f2afd3f173f165c";
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
