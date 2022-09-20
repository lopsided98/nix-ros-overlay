
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-calibration-launch }:
buildRosPackage {
  pname = "ros-melodic-pr2-se-calibration-launch";
  version = "1.0.11-r3";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/melodic/pr2_se_calibration_launch/1.0.11-3.tar.gz";
    name = "1.0.11-3.tar.gz";
    sha256 = "c76aa428bb37415f4c538c72ee1e6cc5b16a1c18eb24dca7bb4be53b4d7c81b5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-calibration-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_se_calibration_launch'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
