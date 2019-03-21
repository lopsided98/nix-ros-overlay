
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-dense-laser-snapshotter, laser-joint-projector, catkin, pr2-calibration-launch, laser-joint-processor, dense-laser-assembler, pr2-se-calibration-launch }:
buildRosPackage {
  pname = "ros-kinetic-pr2-calibration";
  version = "1.0.11";

  src = fetchurl {
    url = https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/kinetic/pr2_calibration/1.0.11-0.tar.gz;
    sha256 = "e659c874bcdf91aacbaef815432703a7ba06d7a76cd7a60083751d342bf49de8";
  };

  propagatedBuildInputs = [ pr2-calibration-launch pr2-dense-laser-snapshotter laser-joint-processor dense-laser-assembler pr2-se-calibration-launch laser-joint-projector ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_calibration package'';
    #license = lib.licenses.TODO;
  };
}
