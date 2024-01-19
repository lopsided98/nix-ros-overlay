
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-supported-robots, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-calibration-data";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_calibration_data-release/archive/release/noetic/cob_calibration_data/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "c0a110318bf61e339d863b480e66599205a518185054e0796dfc90bf7f3d61cc";
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
