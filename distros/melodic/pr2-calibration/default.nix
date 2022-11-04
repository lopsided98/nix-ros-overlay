
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dense-laser-assembler, laser-joint-processor, laser-joint-projector, pr2-calibration-launch, pr2-dense-laser-snapshotter, pr2-se-calibration-launch }:
buildRosPackage {
  pname = "ros-melodic-pr2-calibration";
  version = "1.0.11-r3";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/melodic/pr2_calibration/1.0.11-3.tar.gz";
    name = "1.0.11-3.tar.gz";
    sha256 = "4fc3cd24252ad180ed0f1c688330c45bb102d47273bb586aa52764de0f62c745";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dense-laser-assembler laser-joint-processor laser-joint-projector pr2-calibration-launch pr2-dense-laser-snapshotter pr2-se-calibration-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_calibration package'';
    license = with lib.licenses; [ "TODO-CATKIN-PACKAGE-LICENSE" ];
  };
}
