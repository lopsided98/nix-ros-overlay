
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-calibration-launch, dense-laser-assembler, catkin, pr2-se-calibration-launch, laser-joint-processor, laser-joint-projector, pr2-dense-laser-snapshotter }:
buildRosPackage {
  pname = "ros-kinetic-pr2-calibration";
  version = "1.0.11";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/kinetic/pr2_calibration/1.0.11-0.tar.gz";
    name = "1.0.11-0.tar.gz";
    sha256 = "e659c874bcdf91aacbaef815432703a7ba06d7a76cd7a60083751d342bf49de8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-calibration-launch dense-laser-assembler pr2-se-calibration-launch laser-joint-processor laser-joint-projector pr2-dense-laser-snapshotter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_calibration package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
