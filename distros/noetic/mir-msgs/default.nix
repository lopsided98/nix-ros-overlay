
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-mir-msgs";
  version = "1.1.7-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_msgs/1.1.7-1.tar.gz";
    name = "1.1.7-1.tar.gz";
    sha256 = "aa48284cc86bbf384d3a8e6f0931ed5e17012b9b1a691ae5790d7da6108f51a7";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the MiR robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
