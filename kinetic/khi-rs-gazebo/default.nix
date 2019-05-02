
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs-gazebo";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs_gazebo/1.1.1-1.tar.gz;
    sha256 = "f39a2715cd79e3a0d58d81cc91900f312ba3a2594510adebc287acc02f6b73ac";
  };

  buildInputs = [ gazebo-ros gazebo-ros-control ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_gazebo package'';
    #license = lib.licenses.BSD;
  };
}
