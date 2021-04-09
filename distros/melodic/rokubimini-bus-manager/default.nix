
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-bus-manager";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_bus_manager/0.5.9-1/bota_driver-release-release-melodic-rokubimini_bus_manager-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_bus_manager-0.5.9-1.tar.gz";
    sha256 = "fc15c519675390554411cc7f4d97e44e6e9cc08446931e7ada663e55fb057702";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
