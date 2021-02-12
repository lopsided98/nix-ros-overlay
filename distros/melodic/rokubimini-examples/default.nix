
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-examples";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini_examples/0.5.9-1";
    name = "archive.tar.gz";
    sha256 = "00c7804accaaab9f2442f1f8bf78251d21bef5289002f5a4d4c00d2024f50aad";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
