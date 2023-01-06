
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-base-drive-chain, cob-bms-driver, cob-canopen-motor, cob-elmo-homing, cob-generic-can, cob-light, cob-mimic, cob-phidgets, cob-relayboard, cob-scan-unifier, cob-sick-lms1xx, cob-sick-s300, cob-sound, cob-undercarriage-ctrl, cob-utilities, cob-voltage-control }:
buildRosPackage {
  pname = "ros-noetic-cob-driver";
  version = "0.7.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_driver/0.7.14-1.tar.gz";
    name = "0.7.14-1.tar.gz";
    sha256 = "f046db20dfebfe21501bc744b142335792dbed670af852c5c591c5f0f393d681";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-base-drive-chain cob-bms-driver cob-canopen-motor cob-elmo-homing cob-generic-can cob-light cob-mimic cob-phidgets cob-relayboard cob-scan-unifier cob-sick-lms1xx cob-sick-s300 cob-sound cob-undercarriage-ctrl cob-utilities cob-voltage-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_driver stack includes packages that provide access to the Care-O-bot hardware through ROS messages, services and actions. E.g. for mobile base, arm, camera sensors, laser scanners, etc...'';
    license = with lib.licenses; [ asl20 ];
  };
}
