
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, gtest, roscpp, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rokubimini";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini/0.6.0-3/bota_driver-release-release-melodic-rokubimini-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini-0.6.0-3.tar.gz";
    sha256 = "00816ea9f86db6a9580dd54ffeae8a0066718b451fee9f757d58c2b63efd8cd3";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ eigen geometry-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
