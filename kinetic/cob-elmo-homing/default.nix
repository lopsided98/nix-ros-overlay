
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, socketcan-interface, catkin, canopen-402 }:
buildRosPackage {
  pname = "ros-kinetic-cob-elmo-homing";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_elmo_homing/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "bdfb52a40b7431b7cd24670693bbf03a7170e44760b8a029d75fd61b5c0d462a";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib socketcan-interface canopen-402 ];
  propagatedBuildInputs = [ pluginlib socketcan-interface canopen-402 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This packagae implements the special homing procedure that is needed for old cob4/raw bases'';
    license = with lib.licenses; [ asl20 ];
  };
}
