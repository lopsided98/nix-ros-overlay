
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-serial }:
buildRosPackage {
  pname = "ros-kinetic-rokubimini-factory";
  version = "0.5.6-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/kinetic/rokubimini_factory/0.5.6-1";
    name = "archive.tar.gz";
    sha256 = "3068d95e235e78d418c5f0485da55d7eba66db90f27592231fc0ffe67fb8c8f1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libyamlcpp rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
