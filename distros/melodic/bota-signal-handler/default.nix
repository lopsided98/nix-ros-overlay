
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-signal-handler";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_signal_handler/0.5.9-1/bota_driver-release-release-melodic-bota_signal_handler-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-melodic-bota_signal_handler-0.5.9-1.tar.gz";
    sha256 = "958e8f2b500204f0a4ac5f082ce1b3689b50c2a6388e2b93d444ed5da30f2b1e";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a static signal handling helper class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
