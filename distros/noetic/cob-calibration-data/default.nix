
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-supported-robots, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-calibration-data";
  version = "0.6.16-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_calibration_data-release/archive/release/noetic/cob_calibration_data/0.6.16-1.tar.gz";
    name = "0.6.16-1.tar.gz";
    sha256 = "8f38e820b614d84bfc6a9f5c8f75b11db223c613a6f4f98b3fc62c0544b7a646";
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
