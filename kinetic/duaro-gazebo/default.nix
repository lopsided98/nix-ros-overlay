
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-duaro-gazebo";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/duaro_gazebo/1.0.0-0.tar.gz;
    sha256 = "7f0058114b0e1a7b1b352859db757644cc58ce4e425ee50e535e2692a9ad3b2f";
  };

  nativeBuildInputs = [ catkin gazebo-ros-control ];

  meta = {
    description = ''The duaro_gazebo package'';
    #license = lib.licenses.BSD;
  };
}
