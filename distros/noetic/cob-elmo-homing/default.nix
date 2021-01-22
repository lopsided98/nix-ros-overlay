
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-402, catkin, pluginlib, socketcan-interface }:
buildRosPackage {
  pname = "ros-noetic-cob-elmo-homing";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_elmo_homing/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "68619d2f7ebe05224f42686a2feca9c30c06cff07a1cfc5477d6a39b5aa3aa0c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ canopen-402 pluginlib socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This packagae implements the special homing procedure that is needed for old cob4/raw bases'';
    license = with lib.licenses; [ asl20 ];
  };
}
