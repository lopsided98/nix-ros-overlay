
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-khi-duaro-gazebo";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_duaro_gazebo/1.1.0-1.tar.gz;
    sha256 = "fd13e64ee3af793df55eec3dff476110a0f05379efcf24cfc7dad43a0b4c82d0";
  };

  buildInputs = [ gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_gazebo package'';
    #license = lib.licenses.BSD;
  };
}
