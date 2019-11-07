
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-base-drive-chain, cob-sound, cob-mimic, cob-bms-driver, cob-canopen-motor, cob-generic-can, catkin, cob-utilities, cob-phidgets, cob-camera-sensors, cob-light, cob-scan-unifier, cob-voltage-control, cob-relayboard, cob-sick-s300, cob-undercarriage-ctrl, cob-elmo-homing, cob-sick-lms1xx }:
buildRosPackage {
  pname = "ros-melodic-cob-driver";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_driver/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "82b2d90f8f0d8cd2a4bc31567bcba0dcd10fb992a9564f1b00c492eb2e2cd170";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-base-drive-chain cob-sound cob-mimic cob-bms-driver cob-canopen-motor cob-generic-can cob-utilities cob-phidgets cob-camera-sensors cob-scan-unifier cob-voltage-control cob-light cob-relayboard cob-sick-s300 cob-undercarriage-ctrl cob-elmo-homing cob-sick-lms1xx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_driver stack includes packages that provide access to the Care-O-bot hardware through ROS messages, services and actions. E.g. for mobile base, arm, camera sensors, laser scanners, etc...'';
    license = with lib.licenses; [ asl20 ];
  };
}
