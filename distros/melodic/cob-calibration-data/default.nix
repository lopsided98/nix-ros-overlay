
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-supported-robots, xacro }:
buildRosPackage {
  pname = "ros-melodic-cob-calibration-data";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_calibration_data-release/archive/release/melodic/cob_calibration_data/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "f925041939348aab3ac92d230694d07168cbdbea95b193ba6856b8dc57c4bbb7";
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
