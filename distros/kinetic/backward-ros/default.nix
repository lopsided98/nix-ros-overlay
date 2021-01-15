
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, elfutils, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-backward-ros";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/pal-gbp/backward_ros-release/archive/release/kinetic/backward_ros/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "b1d4248db3584ba802bb5336b9b5a550c9ce6d0b0e0e099e4d3c67080eacda9b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ elfutils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The backward_ros package is a ros wrapper of backward-cpp from https://github.com/bombela/backward-cpp'';
    license = with lib.licenses; [ mit ];
  };
}
