
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, controller-manager, urdf, catkin, gazebo-ros-control, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-dsr-gazebo";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/dsr_gazebo/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "b879567184d980dafee57575a9370906e08672d2fbc8bc174c84bd953bd651b6";
  };

  buildType = "catkin";
  buildInputs = [ xacro controller-manager urdf gazebo-ros-control gazebo-ros ];
  propagatedBuildInputs = [ xacro controller-manager urdf gazebo-ros-control gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dsr_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
