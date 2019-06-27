
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, control-msgs, cob-generic-can, cob-canopen-motor, sensor-msgs, catkin, cob-utilities, message-generation, message-runtime, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-base-drive-chain";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_base_drive_chain/0.6.14-1.tar.gz;
    sha256 = "62b6eb93920617b3ad84e57f24d46697c07358de9523fd77748093dab4901237";
  };

  buildInputs = [ std-srvs control-msgs cob-generic-can cob-canopen-motor sensor-msgs cob-utilities message-generation std-msgs diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ std-srvs control-msgs cob-generic-can cob-canopen-motor sensor-msgs cob-utilities message-runtime std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains classes that are able to control the platform of the Care-O-Bot. This means to establish a CAN communication to drive and steering motors of the platform and later send motion commands and receive motor information.'';
    license = with lib.licenses; [ asl20 ];
  };
}
