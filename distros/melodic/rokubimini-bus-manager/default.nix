
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-bus-manager";
  version = "0.5.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini_bus_manager/0.5.2-2";
    name = "archive.tar.gz";
    sha256 = "3c40927408692de41673af26c9b169add09cf59c77194c8c71e55da1a81d8b7d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
