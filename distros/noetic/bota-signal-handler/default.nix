
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-signal-handler";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_signal_handler/0.6.0-2/bota_driver-release-release-noetic-bota_signal_handler-0.6.0-2.tar.gz";
    name = "bota_driver-release-release-noetic-bota_signal_handler-0.6.0-2.tar.gz";
    sha256 = "6d0e411519113c14a3b20a16269f7db2241b7876333705bd8b19c9238580dff6";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a static signal handling helper class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
