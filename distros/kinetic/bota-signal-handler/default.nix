
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-bota-signal-handler";
  version = "0.5.6-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/kinetic/bota_signal_handler/0.5.6-1";
    name = "archive.tar.gz";
    sha256 = "d2f69772458ce2e1141e985ba2cdfa0784f0928e25b18fc261f905658094053b";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a static signal handling helper class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
