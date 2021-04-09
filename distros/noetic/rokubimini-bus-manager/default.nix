
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-bus-manager";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_bus_manager/0.5.9-1/bota_driver-release-release-noetic-rokubimini_bus_manager-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_bus_manager-0.5.9-1.tar.gz";
    sha256 = "5c9f1e9e21c08e7220e73aa5ff1b1a622c1b9893c7102534a968c3b17f93f09d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
