
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamixel-workbench-toolbox, eigen, robotis-manipulator, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-libs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/kinetic/open_manipulator_libs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "5ce7f6b47eb172822cb09c3577667bb57bfe74f2f2886602b7ca847dad68a5fd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules dynamixel-workbench-toolbox eigen robotis-manipulator roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator library (Kinematics lib., Dynamixel lib., Drawing path lib.)'';
    license = with lib.licenses; [ asl20 ];
  };
}
