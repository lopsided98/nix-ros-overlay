
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-bus-manager";
  version = "0.5.0-r6";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini_bus_manager/0.5.0-6";
    name = "archive.tar.gz";
    sha256 = "1488f6d9b5028e52ffcaed5b85aa33fcc16790bce7863aa56a1a6354ce57404a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
