
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-description";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_description/0.6.1-1/bota_driver-release-release-melodic-rokubimini_description-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_description-0.6.1-1.tar.gz";
    sha256 = "59668d594bd3c32d2b2a0510e3afa31e42f248658f296600d2d7528b9950f6cd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rokubimini_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
