
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, gtest, roscpp, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rokubimini";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini/0.6.1-1/bota_driver-release-release-melodic-rokubimini-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini-0.6.1-1.tar.gz";
    sha256 = "4408f8c802a771910831719bcf8f084af00db22d9272b2dfa248f20953abfbb6";
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
