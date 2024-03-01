
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-canopen-motor, cob-generic-can, cob-utilities, control-msgs, diagnostic-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-cob-base-drive-chain";
  version = "0.7.16-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_base_drive_chain/0.7.16-2.tar.gz";
    name = "0.7.16-2.tar.gz";
    sha256 = "ca0c8ccd2605670b866c4f377a3f1d95a74fcbcaeb1759d0ae535665ac18d736";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ cob-canopen-motor cob-generic-can cob-utilities control-msgs diagnostic-msgs message-runtime roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains classes that are able to control the platform of the Care-O-Bot. This means to establish a CAN communication to drive and steering motors of the platform and later send motion commands and receive motor information.'';
    license = with lib.licenses; [ asl20 ];
  };
}
