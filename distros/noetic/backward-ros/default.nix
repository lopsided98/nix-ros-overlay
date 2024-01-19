
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, elfutils, roscpp }:
buildRosPackage {
  pname = "ros-noetic-backward-ros";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/backward_ros-release/archive/release/noetic/backward_ros/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "64789ad4703518a057483120d2df9ef2780f4f4436e1752311bd62e46368309c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ elfutils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The backward_ros package is a ros wrapper of backward-cpp from https://github.com/bombela/backward-cpp'';
    license = with lib.licenses; [ mit ];
  };
}
