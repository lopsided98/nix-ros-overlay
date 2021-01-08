
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-serial }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-factory";
  version = "0.5.8-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini_factory/0.5.8-1";
    name = "archive.tar.gz";
    sha256 = "31f5306165a8514b119d8b368f22ca9be401adba4ba7dc904c8887dfc6d9a571";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libyamlcpp rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
