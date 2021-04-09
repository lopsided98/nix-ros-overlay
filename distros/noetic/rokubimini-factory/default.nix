
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-serial }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-factory";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_factory/0.5.9-1/bota_driver-release-release-noetic-rokubimini_factory-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_factory-0.5.9-1.tar.gz";
    sha256 = "e7f7f0775d162d2be384c6bc99ae8bfc2941a41dd0bb299910895fb8a9aaab52";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libyamlcpp rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
