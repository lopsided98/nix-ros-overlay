
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-bus-manager";
  version = "0.5.5-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini_bus_manager/0.5.5-1";
    name = "archive.tar.gz";
    sha256 = "4574afa812820b7b1a8628a07d04f36fef98f1404471c611b0295dfe4294d7db";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
