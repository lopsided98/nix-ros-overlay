
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-base-drive-chain, cob-sound, cob-mimic, cob-bms-driver, cob-canopen-motor, cob-generic-can, catkin, cob-utilities, cob-phidgets, cob-camera-sensors, cob-light, cob-scan-unifier, cob-voltage-control, cob-relayboard, cob-sick-s300, cob-undercarriage-ctrl, cob-elmo-homing, cob-sick-lms1xx }:
buildRosPackage {
  pname = "ros-kinetic-cob-driver";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_driver/0.6.13-0.tar.gz;
    sha256 = "aa0d2a693ddc080422bab0942fcdaf5f63fb52a931d766e2ee4f15e6def3b67f";
  };

  propagatedBuildInputs = [ cob-base-drive-chain cob-sound cob-mimic cob-bms-driver cob-canopen-motor cob-generic-can cob-utilities cob-phidgets cob-camera-sensors cob-scan-unifier cob-voltage-control cob-light cob-relayboard cob-sick-s300 cob-undercarriage-ctrl cob-elmo-homing cob-sick-lms1xx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_driver stack includes packages that provide access to the Care-O-bot hardware through ROS messages, services and actions. E.g. for mobile base, arm, camera sensors, laser scanners, etc...'';
    license = with lib.licenses; [ asl20 ];
  };
}
