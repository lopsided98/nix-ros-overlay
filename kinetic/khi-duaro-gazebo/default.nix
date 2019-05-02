
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-khi-duaro-gazebo";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_duaro_gazebo/1.1.1-1.tar.gz;
    sha256 = "1612c472d694f4acaf5cf5641f2a4074357c2f8d8433818cedd59d7efd884f8c";
  };

  buildInputs = [ gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_gazebo package'';
    #license = lib.licenses.BSD;
  };
}
