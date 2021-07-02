
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, gtest, roscpp, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rokubimini";
  version = "0.6.0-r5";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini/0.6.0-5/bota_driver-release-release-melodic-rokubimini-0.6.0-5.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini-0.6.0-5.tar.gz";
    sha256 = "4dd066b3dda6c1ea4b79a477bead2b39797e9918fed355b18ef2fbab27491a7c";
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
