
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-signal-handler";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_signal_handler/0.6.1-1/bota_driver-release-release-melodic-bota_signal_handler-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-melodic-bota_signal_handler-0.6.1-1.tar.gz";
    sha256 = "bd544d86c3b6fb896fccd1dd079ec588a3d50afd6577c1299c7eabe9bec020ca";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a static signal handling helper class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
