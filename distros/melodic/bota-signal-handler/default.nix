
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-signal-handler";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_signal_handler/0.6.1-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "c5499547fd6656c589b3828a82a59175a8b56726f5126b6cb9cad62f9be0b562";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a static signal handling helper class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
