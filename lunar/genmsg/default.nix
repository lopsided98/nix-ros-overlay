
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-genmsg";
  version = "0.5.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/genmsg-release/archive/release/lunar/genmsg/0.5.11-0.tar.gz;
    sha256 = "0c601993807d5860f3fefc3e7b394105a19d36a6547f5dc1e86146aaf69253c9";
  };

  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standalone Python library for generating ROS message and service data structures for various languages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
