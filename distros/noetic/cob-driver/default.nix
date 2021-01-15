
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-base-drive-chain, cob-bms-driver, cob-canopen-motor, cob-elmo-homing, cob-generic-can, cob-light, cob-mimic, cob-phidgets, cob-relayboard, cob-scan-unifier, cob-sick-lms1xx, cob-sick-s300, cob-sound, cob-undercarriage-ctrl, cob-utilities, cob-voltage-control }:
buildRosPackage {
  pname = "ros-noetic-cob-driver";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_driver/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "a1dc7120db87796d60705204762900832c0b9b6059974f96496e0f298a5bf0fa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-base-drive-chain cob-bms-driver cob-canopen-motor cob-elmo-homing cob-generic-can cob-light cob-mimic cob-phidgets cob-relayboard cob-scan-unifier cob-sick-lms1xx cob-sick-s300 cob-sound cob-undercarriage-ctrl cob-utilities cob-voltage-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_driver stack includes packages that provide access to the Care-O-bot hardware through ROS messages, services and actions. E.g. for mobile base, arm, camera sensors, laser scanners, etc...'';
    license = with lib.licenses; [ asl20 ];
  };
}
