
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-bota-signal-handler";
  version = "0.5.9-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/kinetic/bota_signal_handler/0.5.9-2/bota_driver-release-release-kinetic-bota_signal_handler-0.5.9-2.tar.gz";
    name = "bota_driver-release-release-kinetic-bota_signal_handler-0.5.9-2.tar.gz";
    sha256 = "cdb6765b1e4a9a4290706cc90c6b3388018386f0c9846d348d2211ab0e12933d";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a static signal handling helper class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
