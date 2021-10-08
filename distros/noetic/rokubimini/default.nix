
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, gtest, roscpp, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rokubimini";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini/0.6.1-1/bota_driver-release-release-noetic-rokubimini-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini-0.6.1-1.tar.gz";
    sha256 = "deaa93a7ef78b1cdba89ea0a0e0738301697509ee6f213d94d0008de194341b2";
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
