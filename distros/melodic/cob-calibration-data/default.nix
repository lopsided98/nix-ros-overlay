
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-supported-robots, xacro }:
buildRosPackage {
  pname = "ros-melodic-cob-calibration-data";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_calibration_data-release/archive/release/melodic/cob_calibration_data/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "69c652f79ead3069950b9f9ad46a70362ff79682853b65962c652914c1d16a3b";
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
