
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cmake-modules, geometry-msgs, kdl-parser, moveit-core, moveit-msgs, pluginlib, roscpp, tf-conversions, urdf }:
buildRosPackage {
  pname = "ros-noetic-pr2-arm-kinematics";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_kinematics-release/archive/release/noetic/pr2_arm_kinematics/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "b0ba5739fbb795b156e5c746810d1ecefe4785d7ad49a2eb5d92fa0313abf20e";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ angles geometry-msgs kdl-parser moveit-core moveit-msgs pluginlib roscpp tf-conversions urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a kinematics implementation for the PR2 robot. It can be used to compute forward and inverse kinematics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
