
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, image-geometry, joint-states-settler, message-filters, settlerlib }:
buildRosPackage {
  pname = "ros-melodic-laser-joint-processor";
  version = "1.0.11-r3";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/melodic/laser_joint_processor/1.0.11-3.tar.gz";
    name = "1.0.11-3.tar.gz";
    sha256 = "cb7af2be6d05571d0e970c0f7a965ca1b5009f2b278cacc8e2ddcdfec33b8375";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs image-geometry joint-states-settler message-filters settlerlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Computes joint angles associated with a specific set of detected checkerboard corners.
     This package is experimental and unstable.
     Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
