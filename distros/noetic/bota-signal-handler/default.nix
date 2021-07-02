
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-signal-handler";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_signal_handler/0.6.0-3/bota_driver-release-release-noetic-bota_signal_handler-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-noetic-bota_signal_handler-0.6.0-3.tar.gz";
    sha256 = "c0ead51c2f2b6c54146f3cdd533d7fe79edff814f43c5e2e9544f3433649aad6";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a static signal handling helper class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
