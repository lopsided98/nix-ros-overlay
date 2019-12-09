
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, roscpp-serialization, geometry-msgs, catkin, cmake-modules, calibration-msgs, roscpp, kdl-parser }:
buildRosPackage {
  pname = "ros-kinetic-laser-joint-projector";
  version = "1.0.11";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/kinetic/laser_joint_projector/1.0.11-0.tar.gz";
    name = "1.0.11-0.tar.gz";
    sha256 = "62973d13cea88d5a8a267ba68dfe0f8e6c7f0af3d284799bc47afb3ce91d5c2b";
  };

  buildType = "catkin";
  buildInputs = [ orocos-kdl roscpp-serialization geometry-msgs cmake-modules calibration-msgs roscpp kdl-parser ];
  propagatedBuildInputs = [ orocos-kdl roscpp-serialization geometry-msgs cmake-modules calibration-msgs kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Projects laser readings into a point cloud, based on a set of recorded joint angles
     This package is experimental and unstable.
     Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
