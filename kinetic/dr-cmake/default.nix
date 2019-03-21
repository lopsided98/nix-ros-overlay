
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-dr-cmake";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/delftrobotics/dr_base-release/archive/release/kinetic/dr_cmake/1.0.0-0.tar.gz;
    sha256 = "5b017c812e481c125635e9e696cb7f91ca6ace79539c7d4c3e3f63e18dc2bf51";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some CMake utilities for DR.'';
    #license = lib.licenses.Apache v2.0;
  };
}
