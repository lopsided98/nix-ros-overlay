
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, cmake-modules, pluginlib, catkin, urdf, moveit-core, angles, tf-conversions, moveit-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-arm-kinematics";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_kinematics-release/archive/release/melodic/pr2_arm_kinematics/1.0.10-0.tar.gz;
    sha256 = "ad182e7a84e3e1448a25ab252edae3155e4cb6d27180b1c16e56ce29c656677d";
  };

  propagatedBuildInputs = [ kdl-parser pluginlib urdf moveit-core angles tf-conversions moveit-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ kdl-parser cmake-modules pluginlib catkin urdf moveit-core angles tf-conversions moveit-msgs roscpp geometry-msgs ];

  meta = {
    description = ''This package provides a kinematics implementation for the PR2 robot. It can be used to compute forward and inverse kinematics.'';
    #license = lib.licenses.BSD;
  };
}
