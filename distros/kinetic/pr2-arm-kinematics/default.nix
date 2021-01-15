
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cmake-modules, geometry-msgs, kdl-parser, moveit-core, moveit-msgs, pluginlib, roscpp, tf-conversions, urdf }:
buildRosPackage {
  pname = "ros-kinetic-pr2-arm-kinematics";
  version = "1.0.9";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_kinematics-release/archive/release/kinetic/pr2_arm_kinematics/1.0.9-0.tar.gz";
    name = "1.0.9-0.tar.gz";
    sha256 = "88d1a012402377004461ca140878175dabb294e03cb464db5d52d2f7c6d9437a";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ angles geometry-msgs kdl-parser moveit-core moveit-msgs pluginlib roscpp tf-conversions urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a kinematics implementation for the PR2 robot. It can be used to compute forward and inverse kinematics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
