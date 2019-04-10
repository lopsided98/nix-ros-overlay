
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, pluginlib, cmake-modules, catkin, urdf, moveit-core, angles, tf-conversions, moveit-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-pr2-arm-kinematics";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_kinematics-release/archive/release/lunar/pr2_arm_kinematics/1.0.10-0.tar.gz;
    sha256 = "6e0b57b259b1a859a395694d117845940d3237cd6571f8543115713f5d999589";
  };

  buildInputs = [ kdl-parser cmake-modules pluginlib urdf moveit-core angles tf-conversions moveit-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ kdl-parser pluginlib urdf moveit-core angles tf-conversions moveit-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a kinematics implementation for the PR2 robot. It can be used to compute forward and inverse kinematics.'';
    #license = lib.licenses.BSD;
  };
}
