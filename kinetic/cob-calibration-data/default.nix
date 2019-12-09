
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-supported-robots, xacro, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-calibration-data";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_calibration_data-release/archive/release/kinetic/cob_calibration_data/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "43cb982b38377c8ab591fc44821c8b48593ca8b30f6fcc12fce474d4a0d51940";
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
