
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-supported-robots, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-cob-calibration-data";
  version = "0.6.12-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_calibration_data-release/archive/release/melodic/cob_calibration_data/0.6.12-1.tar.gz;
    sha256 = "68415a57396e9fb774137d2aefad2c825fc33745a54a0b674bc69384660bede7";
  };

  buildInputs = [ cob-supported-robots ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This repository holds the current calibration data for Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
