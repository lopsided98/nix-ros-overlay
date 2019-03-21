
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-supported-robots, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-cob-calibration-data";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_calibration_data-release/archive/release/kinetic/cob_calibration_data/0.6.10-0.tar.gz;
    sha256 = "b908b7b01c9d1ffa66e8af91ead9352b34dcbbbc06c9d7a3ab70f9e159e7f0b9";
  };

  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ cob-supported-robots catkin ];

  meta = {
    description = ''This repository holds the current calibration data for Care-O-bot.'';
    #license = lib.licenses.Apache 2.0;
  };
}
