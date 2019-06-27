
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, diagnostic-updater, cob-srvs, socketcan-interface, rospy, std-msgs, diagnostic-msgs, cob-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-bms-driver";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_bms_driver/0.6.14-1.tar.gz;
    sha256 = "cc1cc16d7a689f134fe12e87a509e34174e507f8cd7a678c6dc925dae8c0625f";
  };

  buildInputs = [ diagnostic-updater socketcan-interface std-msgs diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ pythonPackages.numpy diagnostic-updater cob-srvs socketcan-interface rospy std-msgs diagnostic-msgs cob-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver package for interfacing the battery management system (BMS) on Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
