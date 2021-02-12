
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-serial }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-factory";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/noetic/rokubimini_factory/0.5.9-1";
    name = "archive.tar.gz";
    sha256 = "8003e515d5c1f73eeca8a3ec22e4d1d42b81314f90351b558bac2f197330849d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libyamlcpp rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
