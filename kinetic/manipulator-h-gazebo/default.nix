
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-manipulator-h-gazebo";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-MANIPULATOR-H-release/archive/release/kinetic/manipulator_h_gazebo/0.3.1-0.tar.gz;
    sha256 = "b5c85d558ce516b295a3760d59b8beffd19c4b3185d4eab7e1de8ee96716e050";
  };

  propagatedBuildInputs = [ gazebo-ros controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The manipulator_h_gazebo package
    This package provides GAZEBO simulation environment for ROBOTIS MANIPULATOR-H.
    We provides two controllers such as position and effort controllers.'';
    #license = lib.licenses.Apache 2.0;
  };
}
