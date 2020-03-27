
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-base-drive-chain, cob-bms-driver, cob-camera-sensors, cob-canopen-motor, cob-elmo-homing, cob-generic-can, cob-light, cob-mimic, cob-phidgets, cob-relayboard, cob-scan-unifier, cob-sick-lms1xx, cob-sick-s300, cob-sound, cob-undercarriage-ctrl, cob-utilities, cob-voltage-control }:
buildRosPackage {
  pname = "ros-kinetic-cob-driver";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_driver/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "f1b47cfc606a4e069817568624ac51e835da4f5ee26f92500f783bf685d202d3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-base-drive-chain cob-bms-driver cob-camera-sensors cob-canopen-motor cob-elmo-homing cob-generic-can cob-light cob-mimic cob-phidgets cob-relayboard cob-scan-unifier cob-sick-lms1xx cob-sick-s300 cob-sound cob-undercarriage-ctrl cob-utilities cob-voltage-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_driver stack includes packages that provide access to the Care-O-bot hardware through ROS messages, services and actions. E.g. for mobile base, arm, camera sensors, laser scanners, etc...'';
    license = with lib.licenses; [ asl20 ];
  };
}
