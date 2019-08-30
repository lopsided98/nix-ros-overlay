
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, diagnostic-updater, cob-srvs, socketcan-interface, rospy, std-msgs, diagnostic-msgs, cob-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-bms-driver";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_bms_driver/0.7.0-1.tar.gz;
    sha256 = "149a596e2364ff7fee9e6649ba5d539e2efe1c86bcbbb7be3b20aa274503901a";
  };

  buildInputs = [ diagnostic-updater socketcan-interface std-msgs diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ pythonPackages.numpy diagnostic-updater cob-srvs socketcan-interface rospy std-msgs diagnostic-msgs cob-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver package for interfacing the battery management system (BMS) on Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
