
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cmake-modules, geometry-msgs, kdl-parser, moveit-core, moveit-msgs, pluginlib, roscpp, tf-conversions, urdf }:
buildRosPackage {
  pname = "ros-melodic-pr2-arm-kinematics";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_kinematics-release/archive/release/melodic/pr2_arm_kinematics/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "ad182e7a84e3e1448a25ab252edae3155e4cb6d27180b1c16e56ce29c656677d";
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
