
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-supported-robots, xacro }:
buildRosPackage {
  pname = "ros-kinetic-cob-calibration-data";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_calibration_data-release/archive/release/kinetic/cob_calibration_data/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "f72bfcc563ef13b5d570725a97a9438d7997f2c1836c817b6f4ade5e52d96e54";
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
