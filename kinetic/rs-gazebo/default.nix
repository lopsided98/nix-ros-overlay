
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-rs-gazebo";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/rs_gazebo/1.0.0-0.tar.gz;
    sha256 = "c10be9ba6c0ce1663db745640122d82d5a0abcedc453899171ab4529f402b8f7";
  };

  propagatedBuildInputs = [ gazebo-ros gazebo-ros-control ];
  nativeBuildInputs = [ gazebo-ros catkin gazebo-ros-control ];

  meta = {
    description = ''The rs_gazebo package'';
    #license = lib.licenses.BSD;
  };
}
