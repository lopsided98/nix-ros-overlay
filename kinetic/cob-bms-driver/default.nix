
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, diagnostic-updater, cob-srvs, socketcan-interface, rospy, std-msgs, diagnostic-msgs, cob-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-bms-driver";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_bms_driver/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "59a0996db74f8e2ac37b2d3d6de75591d8dfd72d8e9c38a565ac6adb089323f0";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-updater socketcan-interface std-msgs diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ pythonPackages.numpy diagnostic-updater cob-srvs socketcan-interface rospy std-msgs diagnostic-msgs cob-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver package for interfacing the battery management system (BMS) on Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
