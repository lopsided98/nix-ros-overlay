
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-bus-manager";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_bus_manager/0.6.1-2/bota_driver-release-release-noetic-rokubimini_bus_manager-0.6.1-2.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_bus_manager-0.6.1-2.tar.gz";
    sha256 = "14d90b2200315a19356acaaaa3af332783e845b93c41e9d7dd02ff8c4d45c02b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
