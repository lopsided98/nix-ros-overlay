
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-description";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_description/0.6.1-1/bota_driver-release-release-noetic-rokubimini_description-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_description-0.6.1-1.tar.gz";
    sha256 = "5e3c817e6ae03f7a9d6a26cc531432640bfaf47f7951ad83f0556c19b94e310e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rokubimini_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
