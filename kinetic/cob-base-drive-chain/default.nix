
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, control-msgs, cob-canopen-motor, cob-generic-can, sensor-msgs, catkin, cob-utilities, message-generation, message-runtime, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-base-drive-chain";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_base_drive_chain/0.6.13-0.tar.gz;
    sha256 = "ca991ebc0dd718b5b507b4f2e094d220706352ea8bd4839f2741ae4e1120565c";
  };

  propagatedBuildInputs = [ std-srvs control-msgs cob-canopen-motor cob-generic-can sensor-msgs cob-utilities message-runtime std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ std-srvs control-msgs cob-canopen-motor cob-generic-can sensor-msgs catkin cob-utilities message-generation std-msgs diagnostic-msgs roscpp ];

  meta = {
    description = ''This package contains classes that are able to control the platform of the Care-O-Bot. This means to establish a CAN communication to drive and steering motors of the platform and later send motion commands and receive motor information.'';
    #license = lib.licenses.Apache 2.0;
  };
}
