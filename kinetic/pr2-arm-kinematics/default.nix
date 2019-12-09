
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, geometry-msgs, urdf, pluginlib, cmake-modules, catkin, moveit-msgs, roscpp, angles, tf-conversions, kdl-parser }:
buildRosPackage {
  pname = "ros-kinetic-pr2-arm-kinematics";
  version = "1.0.9";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_kinematics-release/archive/release/kinetic/pr2_arm_kinematics/1.0.9-0.tar.gz";
    name = "1.0.9-0.tar.gz";
    sha256 = "88d1a012402377004461ca140878175dabb294e03cb464db5d52d2f7c6d9437a";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core geometry-msgs urdf pluginlib cmake-modules moveit-msgs roscpp angles tf-conversions kdl-parser ];
  propagatedBuildInputs = [ moveit-core geometry-msgs urdf pluginlib moveit-msgs roscpp angles tf-conversions kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a kinematics implementation for the PR2 robot. It can be used to compute forward and inverse kinematics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
