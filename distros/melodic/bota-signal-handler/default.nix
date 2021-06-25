
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-signal-handler";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_signal_handler/0.6.0-3/bota_driver-release-release-melodic-bota_signal_handler-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-melodic-bota_signal_handler-0.6.0-3.tar.gz";
    sha256 = "0e7f2a00a6e2103052d38d7c99bf8f5204e175bd7d118dbd055f109cc101d54d";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a static signal handling helper class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
