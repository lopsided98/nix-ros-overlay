
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, hector-gazebo-plugins, catkin }:
buildRosPackage {
  pname = "ros-lunar-hector-gazebo-worlds";
  version = "0.5.1";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/lunar/hector_gazebo_worlds/0.5.1-0.tar.gz;
    sha256 = "aee72662348a918611ce9bef37e6a1ce17adb0e2f976ef31a5b53aa5d43d8bf3";
  };

  propagatedBuildInputs = [ gazebo-ros hector-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo_worlds provides gazebo scenarios used by Team Hector Darmstadt'';
    #license = lib.licenses.BSD;
  };
}
