
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-bus-manager";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_bus_manager/0.6.1-1/bota_driver-release-release-noetic-rokubimini_bus_manager-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_bus_manager-0.6.1-1.tar.gz";
    sha256 = "4168fd039123557f655a441cf1be69d2af4e58667523fbbc3d50d2197e0f2ce5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
