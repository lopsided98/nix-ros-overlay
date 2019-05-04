
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-calibration-launch, catkin }:
buildRosPackage {
  pname = "ros-kinetic-pr2-se-calibration-launch";
  version = "1.0.11";

  src = fetchurl {
    url = https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/kinetic/pr2_se_calibration_launch/1.0.11-0.tar.gz;
    sha256 = "b8b5c1dbd4ffb9ba7d55b7a37c152d7f5ccc8b7fa8101431e68ebdf11daec266";
  };

  buildInputs = [ pr2-calibration-launch ];
  propagatedBuildInputs = [ pr2-calibration-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_se_calibration_launch'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
