
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-srvs, diagnostic-msgs, diagnostic-updater, python3Packages, roscpp, rospy, sensor-msgs, socketcan-interface, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-bms-driver";
  version = "0.7.16-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_bms_driver/0.7.16-2.tar.gz";
    name = "0.7.16-2.tar.gz";
    sha256 = "ccf2bef78ef0b3b93ffba1788e49e847cde1f010064e21e1a773e39d817a5d35";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-msgs cob-srvs diagnostic-msgs diagnostic-updater python3Packages.numpy roscpp rospy sensor-msgs socketcan-interface std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver package for interfacing the battery management system (BMS) on Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
