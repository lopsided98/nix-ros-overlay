
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs-gazebo";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs_gazebo/1.1.0-1.tar.gz;
    sha256 = "eb8f05d69a193f8d45733f5babbe970a54860cae0e37bbf2a88d504687863827";
  };

  buildInputs = [ gazebo-ros gazebo-ros-control ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_gazebo package'';
    #license = lib.licenses.BSD;
  };
}
