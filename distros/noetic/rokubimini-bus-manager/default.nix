
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-bus-manager";
  version = "0.5.7-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/noetic/rokubimini_bus_manager/0.5.7-1";
    name = "archive.tar.gz";
    sha256 = "de8031d4bf0817cd91aa9e5f29b766e1dca00c1f359cdbed10be6b955222f633";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
