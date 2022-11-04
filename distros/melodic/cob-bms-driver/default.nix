
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-srvs, diagnostic-msgs, diagnostic-updater, pythonPackages, roscpp, rospy, socketcan-interface, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-bms-driver";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_bms_driver/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "3003906b6a8e7225ecae4ae4ccfd47aee13252303f34f1c7fd7571def6f1a95a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-msgs cob-srvs diagnostic-msgs diagnostic-updater pythonPackages.numpy roscpp rospy socketcan-interface std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver package for interfacing the battery management system (BMS) on Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
