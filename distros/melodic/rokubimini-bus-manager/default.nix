
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-bus-manager";
  version = "0.6.0-r5";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_bus_manager/0.6.0-5/bota_driver-release-release-melodic-rokubimini_bus_manager-0.6.0-5.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_bus_manager-0.6.0-5.tar.gz";
    sha256 = "1104f46480de718e9b27e97b33edd3f8c6295eb246bc70c1ed0483db97f83dde";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
