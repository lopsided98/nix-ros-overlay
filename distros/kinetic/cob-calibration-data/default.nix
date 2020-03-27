
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-supported-robots, xacro }:
buildRosPackage {
  pname = "ros-kinetic-cob-calibration-data";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_calibration_data-release/archive/release/kinetic/cob_calibration_data/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "5a94646ff8137edc599265c7270d2c8535c7a49aece16188ad3db4d97b905c2a";
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
