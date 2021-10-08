
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-signal-handler";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_signal_handler/0.6.1-1/bota_driver-release-release-noetic-bota_signal_handler-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-noetic-bota_signal_handler-0.6.1-1.tar.gz";
    sha256 = "7dc49e99b76064c8e35f714e631b047dd48556b7456691bead648c8a14e86926";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a static signal handling helper class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
