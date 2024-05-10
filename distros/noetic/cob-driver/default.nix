
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-base-drive-chain, cob-bms-driver, cob-canopen-motor, cob-elmo-homing, cob-generic-can, cob-light, cob-mimic, cob-phidgets, cob-relayboard, cob-scan-unifier, cob-sick-lms1xx, cob-sick-s300, cob-sound, cob-undercarriage-ctrl, cob-utilities, cob-voltage-control }:
buildRosPackage {
  pname = "ros-noetic-cob-driver";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_driver/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "2c2ce7a82fceaf622308db39fdda0e4587cb9e4079d37d9e7b31137e76193cd9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-base-drive-chain cob-bms-driver cob-canopen-motor cob-elmo-homing cob-generic-can cob-light cob-mimic cob-phidgets cob-relayboard cob-scan-unifier cob-sick-lms1xx cob-sick-s300 cob-sound cob-undercarriage-ctrl cob-utilities cob-voltage-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_driver stack includes packages that provide access to the Care-O-bot hardware through ROS messages, services and actions. E.g. for mobile base, arm, camera sensors, laser scanners, etc...";
    license = with lib.licenses; [ asl20 ];
  };
}
