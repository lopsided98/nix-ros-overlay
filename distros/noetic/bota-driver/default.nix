
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-msgs, rokubimini-serial }:
buildRosPackage {
  pname = "ros-noetic-bota-driver";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_driver/0.6.1-1/bota_driver-release-release-noetic-bota_driver-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-noetic-bota_driver-0.6.1-1.tar.gz";
    sha256 = "1054bd95ac5a372efbce8182f1deb70b620dd3a2eac2e78a8988f5c1c935516c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-msgs rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential packages of BOTA driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}
