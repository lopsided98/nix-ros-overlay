
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-srvs, diagnostic-msgs, diagnostic-updater, pythonPackages, roscpp, rospy, socketcan-interface, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-bms-driver";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_bms_driver/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "bfd3f575618f8f3b37fa1afc8101c6d25903222a5c13568e0773be4583cc5357";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-srvs diagnostic-msgs diagnostic-updater pythonPackages.numpy roscpp rospy socketcan-interface std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver package for interfacing the battery management system (BMS) on Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
