
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-examples";
  version = "0.5.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini_examples/0.5.2-2";
    name = "archive.tar.gz";
    sha256 = "ece58bf00b38d219cbf07b66a9573d29298e3277ee4e81d46fca595076273e37";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
