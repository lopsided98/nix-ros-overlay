
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, image-geometry, joint-states-settler, message-filters, settlerlib }:
buildRosPackage {
  pname = "ros-kinetic-laser-joint-processor";
  version = "1.0.11";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/kinetic/laser_joint_processor/1.0.11-0.tar.gz";
    name = "1.0.11-0.tar.gz";
    sha256 = "70586dfb537b887de968949cbea8ad55c23c966496635d64bfa954fbd99d5b34";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs image-geometry joint-states-settler message-filters settlerlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Computes joint angles associated with a specific set of detected checkerboard corners.
     This package is experimental and unstable.
     Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
