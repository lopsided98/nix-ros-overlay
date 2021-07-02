
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-bus-manager";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_bus_manager/0.6.0-3/bota_driver-release-release-noetic-rokubimini_bus_manager-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_bus_manager-0.6.0-3.tar.gz";
    sha256 = "05103139bc34325a0b3cfb2eb67e9730d49ed74da51fd9d8ffd271dfacb88df1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
