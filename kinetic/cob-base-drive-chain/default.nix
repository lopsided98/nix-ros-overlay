
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, control-msgs, cob-generic-can, cob-canopen-motor, sensor-msgs, catkin, cob-utilities, message-generation, message-runtime, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-base-drive-chain";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_base_drive_chain/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "0d7b34ab6f0d525d336b0e06e2c8046af7021197794350e1d209d141abd076c1";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs control-msgs cob-generic-can cob-canopen-motor sensor-msgs cob-utilities message-generation std-msgs diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ std-srvs control-msgs cob-canopen-motor cob-generic-can sensor-msgs cob-utilities message-runtime std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains classes that are able to control the platform of the Care-O-Bot. This means to establish a CAN communication to drive and steering motors of the platform and later send motion commands and receive motor information.'';
    license = with lib.licenses; [ asl20 ];
  };
}
