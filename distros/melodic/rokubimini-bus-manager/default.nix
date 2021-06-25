
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-bus-manager";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_bus_manager/0.6.0-3/bota_driver-release-release-melodic-rokubimini_bus_manager-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_bus_manager-0.6.0-3.tar.gz";
    sha256 = "2905cb6d10c6e585b09545c91e2ae4a4c23cf831999d676883b2a71c998e5cce";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
