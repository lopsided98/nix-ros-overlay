
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-signal-handler";
  version = "0.6.0-r5";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_signal_handler/0.6.0-5/bota_driver-release-release-melodic-bota_signal_handler-0.6.0-5.tar.gz";
    name = "bota_driver-release-release-melodic-bota_signal_handler-0.6.0-5.tar.gz";
    sha256 = "54609572eb3d346054a85e8ad3b39a6f31d5dbb2312a7e3d0f7ee92d4de385ef";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a static signal handling helper class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
