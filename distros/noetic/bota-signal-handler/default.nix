
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-signal-handler";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_signal_handler/0.5.9-1/bota_driver-release-release-noetic-bota_signal_handler-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-noetic-bota_signal_handler-0.5.9-1.tar.gz";
    sha256 = "f5028c231265611b9ebe00996d80711f136fbf9d27f102b7ee591d64cce8716c";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a static signal handling helper class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
