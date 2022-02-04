
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-canopen-motor, cob-generic-can, cob-utilities, control-msgs, diagnostic-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-cob-base-drive-chain";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_base_drive_chain/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "5806117f4b96918ec385aa93a5e0b132c3d48772b1538d9acf94ec6c15cb11dc";
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
