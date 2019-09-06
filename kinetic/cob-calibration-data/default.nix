
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-supported-robots, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-cob-calibration-data";
  version = "0.6.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_calibration_data-release/archive/release/kinetic/cob_calibration_data/0.6.12-1.tar.gz";
    name = "0.6.12-1.tar.gz";
    sha256 = "661a960d8fc49641ad7da16fd8d83b8dadbc38279a343607f1b84b643fd41fe5";
  };

  buildType = "catkin";
  buildInputs = [ cob-supported-robots ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This repository holds the current calibration data for Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
