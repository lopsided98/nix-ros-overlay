
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-supported-robots, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-cob-calibration-data";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_calibration_data-release/archive/release/kinetic/cob_calibration_data/0.6.11-0.tar.gz;
    sha256 = "8f89dbcf4685b17a72b21151a1f679b7064efbc21c8e411aef92c8d29013c6f2";
  };

  buildInputs = [ cob-supported-robots ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This repository holds the current calibration data for Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
