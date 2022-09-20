
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-bus-manager";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_bus_manager/0.6.1-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "959832b0c624517b30028c18322fe0d2e30e01677bc05f2cf9c8a89ceb225994";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ bota-node rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
