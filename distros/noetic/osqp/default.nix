
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-osqp";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/osqp/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "ded0b3123bfb98973d8ed3b5a83c7669b45d467735da59431cf1851c2a19a243";
  };

  buildType = "cmake";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS wrapper for OSQP";
    license = with lib.licenses; [ "Apache" ];
  };
}
