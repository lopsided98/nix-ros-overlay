
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, calibration-msgs, catkin, cmake-modules, geometry-msgs, kdl-parser, orocos-kdl, roscpp, roscpp-serialization }:
buildRosPackage {
  pname = "ros-melodic-laser-joint-projector";
  version = "1.0.11-r3";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/melodic/laser_joint_projector/1.0.11-3.tar.gz";
    name = "1.0.11-3.tar.gz";
    sha256 = "e39ed9fe09aca1b76382f081da92833adc0ca6ef95f4cdf8d3a026d89c9482d0";
  };

  buildType = "catkin";
  buildInputs = [ catkin roscpp ];
  propagatedBuildInputs = [ calibration-msgs cmake-modules geometry-msgs kdl-parser orocos-kdl roscpp-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Projects laser readings into a point cloud, based on a set of recorded joint angles
     This package is experimental and unstable.
     Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
