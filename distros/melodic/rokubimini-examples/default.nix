
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-examples";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_examples/0.5.9-1/bota_driver-release-release-melodic-rokubimini_examples-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_examples-0.5.9-1.tar.gz";
    sha256 = "07c7c29c27e5e4286299cc6a1868edb20426bee4d70a2c40894afd5f240640fc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
