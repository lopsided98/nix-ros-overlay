
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-signal-handler";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_signal_handler/0.6.1-2/bota_driver-release-release-noetic-bota_signal_handler-0.6.1-2.tar.gz";
    name = "bota_driver-release-release-noetic-bota_signal_handler-0.6.1-2.tar.gz";
    sha256 = "703a2887c917d76e463aa11b76d2079e7821da7f59b43b0d5002442a4d236036";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a static signal handling helper class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
