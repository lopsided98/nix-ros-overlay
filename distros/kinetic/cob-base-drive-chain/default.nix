
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-canopen-motor, cob-generic-can, cob-utilities, control-msgs, diagnostic-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-cob-base-drive-chain";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_base_drive_chain/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "97d048b1aa348be2ad3fff70995153b7e3346c4f8bee4c7c077b7d2295e0109c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ cob-canopen-motor cob-generic-can cob-utilities control-msgs diagnostic-msgs message-runtime roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains classes that are able to control the platform of the Care-O-Bot. This means to establish a CAN communication to drive and steering motors of the platform and later send motion commands and receive motor information.'';
    license = with lib.licenses; [ asl20 ];
  };
}
