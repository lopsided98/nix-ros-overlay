
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros, gazebo-ros-control, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-dsr-gazebo";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/dsr_gazebo/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "b879567184d980dafee57575a9370906e08672d2fbc8bc174c84bd953bd651b6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager gazebo-ros gazebo-ros-control urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dsr_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
