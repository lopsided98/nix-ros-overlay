
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-bus-manager";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_bus_manager/0.6.1-1/bota_driver-release-release-melodic-rokubimini_bus_manager-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_bus_manager-0.6.1-1.tar.gz";
    sha256 = "c1183bd1a9fa9877b99d9c193cd8274f039d16c9bcf268d33b77d8fcbd0c00d4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
