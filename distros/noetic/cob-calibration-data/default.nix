
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-supported-robots, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-calibration-data";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_calibration_data-release/archive/release/noetic/cob_calibration_data/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "1f65682dfbc71f12d820fcfccf533b01ee8216fb8ca4dbcfee247288e4f529e0";
  };

  buildType = "catkin";
  buildInputs = [ catkin cob-supported-robots ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This repository holds the current calibration data for Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
